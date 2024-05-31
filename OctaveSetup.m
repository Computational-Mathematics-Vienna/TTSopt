%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% OctaveSetup %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% setup TE for Octave on Ubuntu

% author: Romana Jezek
% date: 10/10/2023

global WORKpath

more off

nomad = yes_or_no("Would you like to install Nomad? Enter yes or no: ");
cutest = yes_or_no("Would you like to install CUTEst? Enter yes or no: ");
miplib = yes_or_no("Would you like to use MIPLIB (Test problems for mixed integer programming)? Enter yes or no: ")
princeColl = yes_or_no("Would you like to use prince (Test problems for mixed integer programming)? Enter yes or no: ")
pdfo = yes_or_no("Would you like to install pdfo (Powell solvers)? Enter yes or no: ");
admin = yes_or_no("Do you have root rights? Enter yes or no: ");
WORKpath = pwd;
if ~strcmp(substr(WORKpath,-10),"TTSopt-1.0.0")
  WORKpath = input(['Please enter the directory of TTSopt-1.0.0 ' ,...
  '(e.g. "~/Software/TTSopt-1.0.0)":'])
end

[s,w] = system('wget --version');
if s > 0
  if admin
    ss = system('sudo apt-get install wget')
    if ss ~= 0
      error("wget could not be installed!")
    end
  else
    error('Please install wget')
  end
end

[s,w] = system('dpkg --version');
if s > 0
  if admin
    ss = system('sudo apt-get install build-essential')
    if ss ~= 0
      error("build-essential could not be installed!")
    end
  else
    error('Please install build-essential')
  end
end

c = strsplit(version,'.');
octave_ver = str2double(c{1});

[~,mkoct_v] = system("mkoctfile --version");
if isempty(mkoct_v)
  if admin
    s = system("sudo apt-get install liboctave-dev");
    if s ~= 0
      error("liboctave-dev could not be installed!")
    end
  else
    error("Please install liboctave-dev!")
  end
end

test_io = pkg("list","io");
if isempty(test_io)
  pkg install -forge io;
end
pkg load io

test_stat = pkg("list","statistics");
if isempty(test_stat)
  if octave_ver < 5
    disp(['Package statistics is not available for Octave version <= 4. Some ',...
    'functions in the TE package for displaying the results will not work.'])
  elseif octave_ver >= 5 && octave_ver < 7
    if ~exist('release-1.5.4.tar.gz')
      s = system(['wget ',...
      'https://github.com/gnu-octave/statistics/archive/refs/tags/release-1.5.4.tar.gz'])
      if s == 0
        ss=system('mv release-1.5.4.tar.gz statistics.tar.gz');
        if ss~=0, error('Downloaded file name wrong. Change it to statistics.tar.gz'); end;
      else
        error(['Download of package statistics failed! Please check your internet',...
        ' connection or install the statistics package manually before you start',...
        ' the setup again!'])
      end
    end
    pkg install statistics.tar.gz;
    pkg load statistics;
  elseif octave_ver >= 7 && octave_ver <= 8
    if ~exist('release-1.6.0.tar.gz')
      s = system(['wget ',...
      'https://github.com/gnu-octave/statistics/archive/refs/tags/release-1.6.0.tar.gz'])
      if s == 0
        ss=system('mv release-1.6.0.tar.gz statistics.tar.gz');
        if ss~=0, error('downloaded file name wrong'); end;
      else
        error(['Download of package statistics failed! Please check your internet',...
       ' connection or install the statistics package manually before you start',...
       ' the setup again!'])
      end
    end
    pkg install statistics.tar.gz;
    pkg load statistics;
  else
    error(['If your octave version is > 8 please try "pkg install -forge',...
    ' statistics" or download the corresponding release and run ',...
    '"pkg install <filename>". Run "pkg load statistics"'])
  end
end

[s,w] = system("python3 --version");
if s ~= 0
  if admin
    ss = system("sudo apt-get install python3.8")
    if ss ~= 0
      error("python3.8 could not be installed!")
    end
  else
    error(['Please install Python version 3.8 or higher and run the setup again!'])
  end
else
  c = strsplit(w,' ');
  python_ver = strsplit(c{2},'.');
  python_ver = str2double(python_ver{2});
  if python_ver < 7
    if admin
      ss = system("sudo apt-get install -y build-essential")
      cd /opt
      if ~exist('Python-3.8.2.tar.xz')
        ss = system("sudo wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz")
      end
      ss = system('sudo tar -xvf Python-3.8.2.tar.xz')
      if ss ~= 0
        error('Extracting Python-3.8.2.tar.xz failed')
      end
      cd Python-3.8.2
      ss = system('sudo ./configure')
      if ss ~= 0
        error("python3.8 could not be installed! Configure failed.")
      end
      ss = system('sudo make')
      if ss ~= 0
        error("python3.8 could not be installed! Make failed.")
      end
      ss = system('sudo make install')    
      if ss ~= 0
        error("python3.8 could not be installed!")
      end
    else
      error(['Please install Python version 3.8 or higher and run the setup again!'])
    end
  end
end
     

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% setup for NOMAD %%%%%%%%%%%%%%%%%%%%%%%%

if nomad
  [s,w] = system('python3 -m pip --version');
  if s == 0
    c = strsplit(w,' ');
    d = strsplit(c{1,2},'.');
    pip_ver = str2double(d{1});
    if pip_ver < 23
      disp('pip will be upgraded')
      [ss,w] = system('wget "https://bootstrap.pypa.io/get-pip.py"')
      [ss,w] = system('python3 get-pip.py')
      if ss > 0
        error('upgrading pip to a version > 22 failed')
      end
    end
  else
    if admin
      ss = system('sudo apt-get install python3-pip')
      if ss~= 0
        error("pip3 could not be installed")
      end
    else
      error('Pip is not installed. Please install pip for python 3!')
    end
  end
  
  [s,cmake_v] = system("cmake --version");
  if s ~= 0
    if admin
      ss = system('sudo apt-get install build-essential libssl-dev')
      if ss ~= 0
        error('Installing build-essential and libssl-dev failed.')
      end
      if ~exist('v3.29.0-rc2.tar.gz')
        ss = system('wget https://github.com/Kitware/CMake/archive/refs/tags/v3.29.0-rc2.tar.gz') 
        if ss ~= 0
          error('Downloading cmake failed.')
        end  
      end   
      ss = system('tar -zxvf v3.29.0-rc2.tar.gz')
      if ss ~= 0
        error('Extracting the cmake folder failed.')
      end
      cd CMake-3.29.0-rc2
      ss = system('./bootstrap')
      if ss ~= 0
        sss=system('sudo ./bootstrap')
        if sss ~= 0
           error('Bootstrap failed.')
        end
      end
      ss = system('make') 
      if ss ~= 0
        error('make failed.')
      end
      ss = system('sudo make install') 
      if ss ~= 0
        error('Installing cmake with make failed.')
      end
    else
      error("Please install cmake version greater than 3.14 and run the setup again!")
    end
  end
  
  [s,w] = system('mpiexec --version')
  if s ~= 0
    disp('openmpi will be downloaded')
    if ~exist('openmpi-5.0.2.tar.gz')
      ss = system('wget https://download.open-mpi.org/release/open-mpi/v5.0/openmpi-5.0.2.tar.gz')
      if ss ~= 0
        error('Downloading openmpi failed!')
      end
    end
    disp('openmpi-5.0.2.tar.gz will be extracted')
    ss = system('tar -xzvf openmpi-5.0.2.tar.gz');
    if ss ~= 0
      error('Extracting openmpi-5.0.2.tar.gz failed!')
    end      
    MPIpath = [pwd,'/openmpi-5.0.2'];
    cd openmpi-5.0.2
    ss = system(['./configure --prefix=',MPIpath])
    if ss ~= 0
      error('Configuring openmpi failed!')
    end
    ss = system('make all')
    if ss ~= 0
      error('make failed!')
    end
    ss = system('make install')
    if ss ~= 0
      error('Installing openmpi failed!')
    end
    cd ..
    setenv('OMPI',MPIpath)
    setenv('PATH',[getenv('PATH'),':',MPIpath,'/bin'])
    setenv('LD_LIBRARY_PATH',[getenv('LD_LIBRARY_PATH'),':',MPIpath,'/bin'])
  else
    [s,w] = system('mpicc --showme');
    if s ~= 0
      if admin
        ss = system('sudo apt-get install libopenmpi-dev')
        if ss ~= 0
          error('Installing libopenmpi-dev failed!')
        end
      else
        error('Please install libopenmpi-dev')
      end
    else
      paths = strsplit(w,' ');
      for i = 1:length(paths);
        if length(paths{i}) > 5
          opt = substr(paths{i},1,2);
          indincl = [];
          indlib = [];
          pathToIncl = "";
          pathToLib = "";
          if strcmp(opt,'-I') || strcmp(opt,'-L')
            ILpath = substr(paths{i},3,length(paths{i})-2);
            openmpiInd = strfind(ILpath,'openmpi/include');
            if ~isempty(openmpiInd)
            length(ILpath)
              shortPath = substr(ILpath,-(length(ILpath)-openmpiInd(1)+1));
              indlib = strfind(shortPath,'lib');
              indincl = strfind(shortPath,'include');              
            end
            if ~isempty(indincl)
              indincl = length(ILpath)-length(shortPath) + indincl(1); 
              pathToIncl=substr(ILpath,1,indincl(end)-2)
            end
            if ~isempty(indlib)
              indlib = length(ILpath)-length(shortPath) + indlib(1);
              pathToLib=substr(ILpath,1,indlib(end)-2)
            end
            
          end
        end
      end
      if ~isempty(indincl) && ~exist([pathToIncl,'/include'])
        disp(['The openmpi path ',pathToIncl,'/include is missing'])
        if admin
          disp('libopenmpi-dev will be installed')
          ss = system('sudo apt-get install libopenmpi-dev')
          if ss ~= 0
            error('Installing libopenmpi-dev failed!')
          end
        else
          error('Please install libopenmpi-dev')
        end
      elseif ~isempty(indlib) && ~exist([pathToLib,'lib'])
        error(['There is a link from gcc to openmpi but openmpi ',...
                 'could not be found. Please install it again.'])
      else
        if ~strcmp(pathToIncl,pathToLib)           
         disp(['The openmpi folders include and lib are not in the same directory.',...
               'Please remove and install openmpi again.'])
        end
      end
    end
  end
  
  eval(['cd ',WORKpath,'/SOLVERS'])
  if exist('nomad') == 7
    system('rm -rf nomad')
  end  
  if ~exist('v.4.4.0.tar.gz')
    disp('Nomad will be downloaded')
    s = system('wget https://github.com/bbopt/nomad/archive/refs/tags/v.4.4.0.tar.gz');
    if s ~= 0
      error(['Download failed. Please download nomad 4 from ', ...
      'https://github.com/bbopt/nomad/archive/refs/tags/v.4.4.0.tar.gz',...
      ' into the SOLVERS directory'])
    end
  end
  disp('tar will be extracted')
  s = system('tar -xf v.4.4.0.tar.gz');
  if s ~= 0
    error('tar failed. Please extract TEallFinal/SOLVERS/v.4.4.0.tar.gz manually')
  end
  disp('Nomad folder will be renamed')
  s = system('mv -f nomad-v.4.4.0 nomad');
  if s ~= 0
    error('Changing the name nomad-v.4.4.0 to nomad failed')
  end
  cd nomad
  s = system(['cmake -DBUILD_INTERFACE_PYTHON=ON -DTEST_OPENMP=OFF -S', ...
  ' . -B build/release'])
  s = system("cmake --build build/release")
  if s ~= 0
    error('cmake failed while building release. Please install nomad manually!')
  end
  s = system("cmake --install build/release")
  if s ~= 0
    error('cmake failed while installing nomad. Please install nomad manually!')
  end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%% setup for CUTEST %%%%%%%%%%%%%%%%%%%%%%%%%%
if cutest
  if exist([WORKpath,'/TEprob/Collections/CUTEst']) ~= 0
    setenv('ARCHDEFS',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/archdefs'])
    setenv('SIFDECODE',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/sifdecode'])
    setenv('CUTEST',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest'])
    setenv('MASTSIF',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/sif'])
  else
    error(['The path ',WORKpath,'/TEprob/Collections/CUTEst is missing!'])
  end
  
  [s,gfortran_v] = system('echo "__GNUC__" | gfortran -E -P -');
  gfortran_v = str2double(gfortran_v);
  [s,sysarch] = system("dpkg --print-architecture");
  sysarch = strtrim(sysarch);
  
  if strcmp(sysarch,"amd64")
    if gfortran_v < 10
      setenv("MYARCH","pc64.lnx.gfo")
    elseif gfortran_v == 10
      setenv("MYARCH","pc64.lnx.g10")
    elseif gfortran_v == 11
      setenv("MYARCH","pc64.lnx.g11")
    elseif gfortran_v == 12
      setenv("MYARCH","pc64.lnx.g12")
    end
  else
    if gfortran_v < 10
      setenv("MYARCH","pc.lnx.gfo")
    elseif gfortran_v == 10
      setenv("MYARCH","pc.lnx.g10")
    elseif gfortran_v == 11
      setenv("MYARCH","pc.lnx.g11")
    elseif gfortran_v == 12
      setenv("MYARCH","pc.lnx.g12")
    end
  end     
 
  arch = getenv("MYARCH");
  setenv("MYOCTAVEARCH",arch);

  if isempty(getenv("OCTAVE_EXECUTABLE"))
    setenv("OCTAVE_EXECUTABLE","octave-cli");
  end
  
  [gccTest,gcc_v] = system("gcc --version");
  [clangTest,clang_v] = system("clang --version");
  if gccTest ~= 0 && clangTest ~= 0
    if admin
      s = system('sudo apt-get install build-essential')
      if s ~= 0
        error('Installing build-essential failed.') 
      end
    else  
      error("Please install a c-compiler");
    end
  end

  [gfortranTest,gfortran_v] = system("gfortran --version");
  [flangTest,flang_v] = system("flang --version");
  [lfortranTest,lfortran_v] = system("lfortran --version");
  if gfortranTest ~= 0 && flangTest ~= 0 && lfortranTest ~= 0
    if admin
      s = system('sudo apt-get install gfortran')
      if s ~= 0
        error('Installing gfortran failed.')
      end
    else  
      error("Please install a fortran-compiler")
    end
  end
   
  if exist([WORKpath,'/TEprob/Collections/CUTEst']) ~= 7
    mkdir([WORKpath,'/TEprob/Collections/CUTEst']);
  end
  eval(['cd ',WORKpath,'/TEprob/Collections/CUTEst']);
  if exist('INSTALLATION') ~= 7
    system('mkdir INSTALLATION');
  end
  if exist('MEX/mex') == 7
    renewMex = yes_or_no('Would you like to renew the mex files?');
    if renewMex
      cd MEX
      s = system('rm -rf mex');
      s = system('mkdir mex');
      cd ..
    end
  else
    s = system('mkdir MEX/mex');
  end
    
  eval(['cd ',WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION'])

  if ~exist('v2.2.3.tar.gz')
    disp('ARCHDEFS will be downloaded')
    s = system(['wget ',...
    'https://github.com/ralna/ARCHDefs/archive/refs/tags/v2.2.3.tar.gz']); 
    if s ~= 0
     error(['Please download ',...
     'https://github.com/ralna/ARCHDefs/archive/refs/tags/v2.2.3.tar.gz',...
     ' and save it into the folder ', WORKpath, ...
     '/TEprob/Collections/CUTEst/INSTALLATION and start the setup again'])
    end
  end
  disp('ARCHDEFS: tar will be extracted')
  s = system('tar -xf v2.2.3.tar.gz');
  if s ~= 0
    error('tar failed. Please extract v2.2.3.tar.gz manually')
  end  
  if exist('archdefs') ~= 0
    s = system('rm -rf archdefs');
  end
  disp('ARCHDEFS folder will be renamed')
  s = system('mv -f ARCHDefs-2.2.3 archdefs');
  if s ~= 0
    error('Changing the name ARCHDefs-2.2.3 to archdefs failed')
  end
  
  if ~exist('v2.1.5.tar.gz')
    disp('SIFDECODE will be downloaded')
    s = system(['wget ',...
    'https://github.com/ralna/SIFDecode/archive/refs/tags/v2.1.5.tar.gz']);
    if s ~= 0
      error(['Please download ',...
     ' https://github.com/ralna/SIFDecode/archive/refs/tags/v2.1.5.tar.gz', ...
     ' and save it into the folder ', WORKpath,...
     '/TEprob/Collections/CUTEst/INSTALLATION and start setup again'])
    end
  end
  disp('SIFDECODE: tar will be extracted')
  s = system('tar -xf v2.1.5.tar.gz');
  if s ~= 0
    error('tar failed. Please extract v2.1.5.tar.gz manually')
  end  
  if exist('sifdecode') ~= 0
    s = system('rm -rf sifdecode');
  end
  disp('SIFDECODE folder will be renamed')
  s = system('mv -f SIFDecode-2.1.5 sifdecode');
  if s ~= 0
    error('Changing the name SIFDecode-2.1.5 to sifdecode failed')
  end
  
  if ~exist('v2.0.43.tar.gz')
    disp('CUTEST will be downloaded')
    s = system(['wget ',...
    'https://github.com/ralna/CUTEst/archive/refs/tags/v2.0.43.tar.gz'])
    if s ~= 0
      error(['Please download ', ...
     'https://github.com/ralna/CUTEst/archive/refs/tags/v2.0.43.tar.gz ',...
     'and save it into the folder ',WORKpath,...
     '/TEprob/Collections/CUTEst/INSTALLATION and start setup again'])
    end
  end
  disp('CUTEST tar will be extracted')
  s = system('tar -xf v2.0.43.tar.gz')
  if s ~= 0
    error('tar failed. Please extract v2.0.43.tar.gz manually')
  end  
  if exist('cutest') ~= 0
    s = system('rm -rf cutest');
  end
  disp('CUTEST folder will be renamed')
  s = system('mv -f CUTEst-2.0.43 cutest');
  if s ~= 0
    error('Changing the name CUTEst-2.0.43 to cutest failed')
  end
  
  if ~exist('mastsif-mirror-v1.0.tar.gz')
    disp('MASTSIF will be downloaded. This will take some time')
    s = system(['wget https://gitlab.com/dpo/mastsif-mirror/-/archive/v1.0/',...
    'mastsif-mirror-v1.0.tar.gz'])
    if s ~= 0
      error(['Please download ',...
     'https://gitlab.com/dpo/mastsif-mirror/-/archive/v1.0/',...
     'mastsif-mirror-v1.0.tar.gz',...
     ' and save it into the folder ',WORKpath,...
     '/TEprob/Collections/CUTEst/INSTALLATION/sif'])
    end
  end  
  disp('MASTSIF: tar will be extracted')
  s = system('tar -xf mastsif-mirror-v1.0.tar.gz')
  if s ~= 0
    error('tar failed. Please extract mastsif-mirror-v1.0.tar.gz manually')
  end  
  if exist('sif') ~= 0
    s = system('rm -rf sif');
  end
  disp('SIF folder will be renamed')
  s = system('mv -f mastsif-mirror-v1.0 sif');
  if s ~= 0
    error('Changing the name mastsif-mirror-v1.0 to sif failed')
  end
  
  s = copyfile([WORKpath,'/TEprob/Collections/CUTEst/FilesForInstall/select_arch'],... 
  [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/archdefs/bin',...
  '/select_arch']);
  if s > 1
    disp('Copying file select_arch failed')
  end
  s = copyfile([WORKpath,'/TEprob/Collections/CUTEst/FilesForInstall/cutest2octave'],...
  [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest/bin/cutest2octave']);
  if s > 1
    disp('Copying file cutest2octave failed')
  end
  s = copyfile([WORKpath,'/TEprob/Collections/CUTEst/FilesForInstall/cutest2matlab'],...
  [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest/bin/cutest2matlab']);
  if s > 1
    disp('Copying file cutest2matlab failed')
  end
  s = copyfile([WORKpath,'/TEprob/Collections/CUTEst/FilesForInstall/sifdecoder'],...
  [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/sifdecode/bin/sidecoder']);
  if s > 1
    disp('Copying file sifdecoder failed')
  end
    
  disp('================================================================')
  disp(['The installation of CUTEst is interactive. Please answer no to',...
  ' the following questions:'])
  disp('1. Do you wish to install GALAHAD')
  disp('2. Would you like to review and modify the system commands')
  disp('3. Would you like to review and modify the fortran compiler settings')
  disp('4. Would you like to review and modify the C compiler settings')
  disp('5. Do you require the CUTEst-Matlab interface')
  disp('Answer yes to the following questions:')
  disp('1. Would you like to compile SIFDecode')
  disp('2. Would you like to compile CUTEst')
  disp('================================================================')
  if ~isempty(gcc_v)
    disp('The version of your C-compiler is:')
    disp(gcc_v)
  end
  if ~isempty(clang_v)
    disp('The version of your C-compiler is:')
    disp(clang_v)
  end
  if ~isempty(gfortran_v) 
    disp('The version of your fortran-compiler is:')
    disp(gfortran_v)
  end
  
  if ~isempty(flang_v)
    disp('The version of your fortran-compiler is:')
    disp(flang_v)
  end 
  
  if ~isempty(lfortran_v)
    disp('The version of your fortran-compiler is:')
    disp(lfortran_v)
  end 
  disp('================================================================')
  eval(['cd ',WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest'])
  if exist(arch) ~= 2
    s = system('$ARCHDEFS/install_optrove')
    if s ~= 0
      error('Installing Cutest failed')
    end
  end
  addpath([WORKpath,'/TEprob/Collections/CUTEst'])
  disp('================================================================')
  disp('mex files will be generated:')
  disp('================================================================')
  genMexCUTE
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%% setup for Powell %%%%%%%%%%%%%%%%%%%%%%%%%%
if pdfo
  s = system('python3 -m pip install pdfo')
  if s ~= 0
    error('Installation of pdfo failed.')
  end
  s = system('python3 -m pip install oct2py')
  if s ~= 0
    error('Installation of oct2py failed.')
  end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% setup for MIPLIB %%%%%%%%%%%%%%%%%%%%%%%%%%%%

if miplib
  eval(['cd ',WORKpath,'/TEprob/Collections'])

  if ~exist('MIPLIB')
    if ~exist('MIPLIB.tar.gz')
      s = system('wget https://arnold-neumaier.at/DFO/MIPLIB.tar.gz')
      if s ~= 0
        error(['Please download the content of ',...
        'https://arnold-neumaier.at/DFO/MIPLIB.tar.gz and save it  into the folder ',...
        WORKpath,'/TEprob/Collections'])
      end
    end
    disp('MIPLIB: tar will be extracted')
    s = system('tar -xf MIPLIB.tar.gz')
    if s ~= 0
      error('tar failed. Please extract MIPLIB.tar.gz manually')
    end
  end
  if ~exist('MIPLIBint')
    if ~exist('MIPLIBint.tar.gz')
      s = system('wget https://arnold-neumaier.at/DFO/MIPLIBint.tar.gz')
      if s ~= 0
        error(['Please download the content of ',...
        'https://arnold-neumaier.at/DFO/MIPLIBint.tar.gz and save it into the folder ',...
        WORKpath,'/TEprob/Collections'])
      end
    end
    disp('MIPLIBint: tar will be extracted')
    s = system('tar -xf MIPLIBint.tar.gz')
    if s ~= 0
      error('tar failed. Please extract MIPLIBint.tar.gz manually')
    end
  end

  eval(['cd ',WORKpath])
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% setup for prince %%%%%%%%%%%%%%%%%%%%%%%%%%%%

if princeColl
  eval(['cd ',WORKpath,'/TEprob/Collections'])

  if ~exist('prince')
    if ~exist('prince.tar.gz')
      s = system('wget https://arnold-neumaier.at/DFO/prince.tar.gz')
      if s ~= 0
        error(['Please download the content of ',...
        'https://arnold-neumaier.at/DFO/prince.tar.gz and save it  into the folder ',...
        WORKpath,'/TEprob/Collections'])
      end
    end
    disp('prince: tar will be extracted')
    s = system('tar -xf prince.tar.gz')
    if s ~= 0
      error('tar failed. Please extract prince.tar.gz manually')
    end
  end
  if ~exist('princeInt')
    if ~exist('princeInt.tar.gz')
      s = system('wget https://arnold-neumaier.at/DFO/princeInt.tar.gz')
      if s ~= 0
        error(['Please download the content of ',...
        'https://arnold-neumaier.at/DFO/princeInt.tar.gz and save it into the folder ',...
        WORKpath,'/TEprob/Collections'])
      end
    end
    disp('princeInt: tar will be extracted')
    s = system('tar -xf princeInt.tar.gz')
    if s ~= 0
      error('tar failed. Please extract princeInt.tar.gz manually')
    end
  end
  if ~exist('princeMint')
    if ~exist('princeMint.tar.gz')
      s = system('wget https://arnold-neumaier.at/DFO/princeMint.tar.gz ')
      if s ~= 0
        error(['Please download the content of ',...
        'https://arnold-neumaier.at/DFO/princeMint.tar.gz  and save it into the folder ',...
        WORKpath,'/TEprob/Collections'])
      end
    end
    disp('princeMint: tar will be extracted')
    s = system('tar -xf princeMint.tar.gz ')
    if s ~= 0
      error('tar failed. Please extract princeMint.tar.gz manually')
    end
  end
  eval(['cd ',WORKpath])
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

addpath([WORKpath,'/TE'])
disp('Test starts:')
TESTmin
disp('Please change the usersName (path to TEallFinal) in /TE/TESTall (line 20),')
disp('TE/TUNEall (line 30), /PYTHON/Octave_interfaces/runNomad.py (line 25), ')
disp('/PYTHON/run_uobyqa.py (line 26) and /PYTHON/Octave_interfaces/run_bobyqa.py (line 29)')
disp(['If you want to use the Powell solvers UOBYQA or BOBYQA',...
' in Octave you must set the environment variable',...
' OCTAVE_EXECUTABLE="octave-cli" in your bash profile,',...
' source the bash profile and run Octave from the terminal.'])


