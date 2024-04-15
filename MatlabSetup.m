%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MatlabSetup %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% setup for TE for Matlab on Debian-based Linux
%
% author: Romana Jezek
% date: 11/10/2023
%

global WORKpath

nomad = input("Would you like to install Nomad? Enter 1 for yes or 0 for no: ")
while (nomad ~= 1 && nomad ~= 0)
   nomad = input("Please enter 1 or 0:")
end
cutest = input("Would you like to install CUTEst? Enter 1 for yes or 0 for no: ")
while (cutest ~= 1 && cutest ~= 0)
   cutest = input("Please enter 1 or 0:")
end
miplib = input("Would you like to use MIPLIB (Test problems for mixed integer programming)? Enter 1 for yes or 0 for no: ")
while (miplib ~= 1 && miplib ~= 0)
   miplib = input("Please enter 1 or 0:")
end
admin = input("Do you have root rights? Enter 1 for yes or 0 for no: ");
while (admin ~= 1 && admin ~= 0)
   admin = input("Please enter 1 or 0:")
end
WORKpath = pwd;
if ~strcmp(extractAfter(WORKpath,length(WORKpath)-10),"TEallFinal")
  WORKpath = input(['Please enter the directory of TEallFinal ',...
  '(e.g. ~/Software/TEallFinal):'])
end

if exist([WORKpath,'/HIT/CUTEst2']) ~= 0
  content = ls([WORKpath,'/HIT/CUTEst2']);
  if ~isempty(content)
    [s,w] = system(['cp ',WORKpath,'/HIT/CUTEst2/* ',WORKpath,'/HIT/CUTEst']);
    if s > 0
      error(['Copying HIT/CUTEst2 to HIT/CUTEst failed. Please copy it manually', ...
      ' and delete the folder CUTEst2']);
    end
  end
  [s,w] = system(['rm -r ',WORKpath,'/HIT/CUTEst2']);
  if s > 0
    error(['Deleting the folder HIT/CUTEst2 failed. Please delete it manually.']);
  end
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

%%%%%%%%%%%%%%%% check gfortran, g++ and gcc for mex %%%%%%%%%%%%%%%%%%%
if cutest

  matlab_ver = version('-release');
  wrongGfortranVersion = 0;
  wrongGccVersion = 0;
  wrongGxxVersion = 0;
  
  if strcmp(matlab_ver, '2016a')
    [gfortran4Test,gfortran_v] = system('echo "__GNUC__" | gfortran-4.7 -E -P -');
    if gfortran4Test ~= 0
      if admin
        s = system('sudo apt-get install gfortran-4.7')
        if s ~= 0
          error(['Installing gfortran-4.7 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system(['sudo update-alternatives --install /usr/bin/gfortran gfortran ',...
        '/usr/bin/gfortran-4.7 100'])
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gfortran /usr/bin/gfortran-4.7')
        if s ~= 0
          error('Setting alternative for gfortran failed.')
        end
      else  
        error("Please install gfortran-4.7 and set alternatives to the new version.")
        wrongGfortranVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("FORTRAN","gfortran-4.7");
    end
    [gcc4Test,gcc_v] = system('echo "__GNUC__" | gcc-4.7 -E -P -');
    if gcc4Test ~= 0
      if admin
        s = system('sudo apt-get install gcc-4.7')
        if s ~= 0
          error(['Installing gcc-4.7 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/ gcc /usr/bin/gcc-4.7 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gcc /usr/bin/gcc-4.7')
        if s ~= 0
          error('Setting alternative for gcc failed.')
        end
      else  
        error("Please install gcc-4.7 and set alternatives to the new version")
        wrongGccVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","gcc-4.7");
    end
    [gxx4Test,gxx_v] = system('echo "__GNUC__" | g++-4.7 -E -P -');
    if gxx4Test ~= 0
      if admin
        s = system('sudo apt-get install g++-4.7')
        if s ~= 0
          error(['Installing g++-4.7 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/ g++ /usr/bin/g++-4.7 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set g++ /usr/bin/g++-4.7')
        if s ~= 0
          error('Setting alternative for g++ failed.')
        end
      else  
        error("Please install g++-4.7 and set alternatives to the new version")
        wrongGxxVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","g++-4.7");
    end
  elseif strcmp(matlab_ver, '2016b') || strcmp(matlab_ver, '2017a') || ...
   strcmp(matlab_ver, '2017b')
    [gfortran4Test,gfortran_v] = system('echo "__GNUC__" | gfortran-4.9 -E -P -');
    if gfortran4Test ~= 0
      if admin
        s = system('sudo apt-get install gfortran-4.9')
        if s ~= 0
          error(['Installing gfortran-4.9 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-4.9 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gfortran /usr/bin/gfortran-4.9')
        if s ~= 0
          error('Setting alternative for gfortran failed.')
        end
      else  
        error("Please install a gfortran-4.9 and set alternatives to the new version")
        wrongGfortranVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("FORTRAN","gfortran-4.9");
    end
    [gcc4Test,gcc_v] = system('echo "__GNUC__" | gcc-4.9 -E -P -');
    if gcc4Test ~= 0
      if admin
        s = system('sudo apt-get install gcc-4.9')
        if s ~= 0
          error(['Installing gcc-4.9 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/ gcc /usr/bin/gcc-4.9 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gcc /usr/bin/gcc-4.9')
        if s ~= 0
          error('Setting alternative for gcc failed.')
        end
      else  
        error("Please install gcc-4.9 and set alternatives to the new version")
        wrongGccVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","gcc-4.9");
    end
    [gxx4Test,gxx_v] = system('echo "__GNUC__" | g++-4.9 -E -P -');
    if gxx4Test ~= 0
      if admin
        s = system('sudo apt-get install g++-4.9')
        if s ~= 0
          error(['Installing g++-4.9 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/ g++ /usr/bin/g++-4.9 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set g++ /usr/bin/g++-4.9')
        if s ~= 0
          error('Setting alternative for g++ failed.')
        end
      else  
        error("Please install g++-4.9 and set alternatives to the new version")
        wrongGxxVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","g++-4.9");
    end
  elseif strcmp(matlab_ver, '2018a') || strcmp(matlab_ver, '2018b') || ...
   strcmp(matlab_ver, '2019a') || strcmp(matlab_ver, '2019b') || ...
   strcmp(matlab_ver, '2020a')       
    [gfortran6Test,gfortran_v] = system('echo "__GNUC__" | gfortran-6 -E -P -');
    if gfortran6Test ~= 0
      if admin
        s = system('sudo apt-get install gfortran-6')
        if s ~= 0
          error(['Installing gfortran-6 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-6 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gfortran /usr/bin/gfortran-6')
        if s ~= 0
          error('Setting alternative for gfortran failed.')
        end
      else  
        error("Please install gfortran-6.3 and set alternatives to the new version")
        wrongGfortranVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("FORTRAN","gfortran-6");
    end
    [gcc6Test,gcc_v] = system('echo "__GNUC__" | gcc-6 -E -P -');
    if gcc6Test ~= 0
      if admin
        s = system('sudo apt-get install gcc-6')
        if s ~= 0
          error(['Installing gcc-6 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/ gcc /usr/bin/gcc-6 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gcc /usr/bin/gcc-6')
        if s ~= 0
          error('Setting alternative for gcc failed.')
        end
      else  
        error("Please install gcc-6 and set alternatives to the new version")
        wrongGccVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","gcc-6");
    end
    [gxx6Test,gxx_v] = system('echo "__GNUC__" | g++-6 -E -P -');
    if gxx6Test ~= 0
      if admin
        s = system('sudo apt-get install g++-6')
        if s ~= 0
          error(['Installing g++-6 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/ g++ /usr/bin/g++-6 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set g++ /usr/bin/g++-6')
        if s ~= 0
          error('Setting alternative for g++ failed.')
        end
      else  
        error("Please install g++-6 and set alternatives to the new version")
        wrongGxxVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","g++-6");
    end
  elseif strcmp(matlab_ver,'2020b') || strcmp(matlab_ver,'2021a') || ...
   strcmp(matlab_ver,'2021b')
    [gfortran8Test,gfortran_v] = system('echo "__GNUC__" | gfortran-8 -E -P -');
    if gfortran8Test ~= 0
      if admin
        s = system('sudo apt-get install gfortran-8')
        if s ~= 0
          error(['Installing gfortran-8 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-8 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gfortran /usr/bin/gfortran-8')
        if s ~= 0
          error('Setting alternative for gfortran failed.')
        end
      else  
        error("Please install gfortran-8 and set alternatives to the new version")
        wrongGfortranVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("FORTRAN","gfortran-8");
    end
    [gcc8Test,gcc_v] = system('echo "__GNUC__" | gcc-8 -E -P -');
    if gcc8Test ~= 0
      if admin
        s = system('sudo apt-get install gcc-8')
        if s ~= 0
          error(['Installing gcc-8 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gcc /usr/bin/gcc-8')
        if s ~= 0
          error('Setting alternative for gcc failed.')
        end
      else  
        error("Please install gcc-8 and set alternatives to the new version")
        wrongGccVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","gcc-8");
    end
    [gxx8Test,gxx_v] = system('echo "__GNUC__" | g++-8 -E -P -');
    if gxx8Test ~= 0
      if admin
        s = system('sudo apt-get install g++-8')
        if s ~= 0
          error(['Installing g++-8 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set g++ /usr/bin/g++-8')
        if s ~= 0
          error('Setting alternative for g++ failed.')
        end
      else  
        error("Please install g++-8 and set alternatives to the new version")
        wrongGxxVersion = 1
        setenv("MYARCH","pc64.lnx.gfo");
      end
      setenv("CC","g++-8");
    end
  elseif strcmp(matlab_ver,'2022a') || strcmp(matlab_vr,'2022b') || ...
   strcmp(matlab_ver,'2023a')
    [gfortran10Test,gfortran_v] = system('echo "__GNUC__" | gfortran-10 -E -P -');
    if gfortran10Test ~= 0
      if admin
        s = system('sudo apt-get install gfortran-10')
        if s ~= 0
          error(['Installing gfortran-10 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-10 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gfortran /usr/bin/gfortran-10')
        if s ~= 0
          error('Setting alternative for gfortran failed.')
        end
      else  
        error("Please install gfortran-10 and set alternatives to the new version")
      end
      setenv("FORTRAN","gfortran-10");
    end
    [gcc10Test,gcc_v] = system('echo "__GNUC__" | gcc-10 -E -P -');
    if gcc10Test ~= 0
      if admin
        s = system('sudo apt-get install gcc-10')
        if s ~= 0
          error(['Installing gcc-10 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set gcc /usr/bin/gcc-10')
        if s ~= 0
          error('Setting alternative for gcc failed.')
        end
      else  
        error("Please install gcc-10 and set alternatives to the new version.")
      end
      setenv("CC","gcc-10");
    end
    [gxx10Test,gxx_v] = system('echo "__GNUC__" | g++-10 -E -P -');
    if gxx10Test ~= 0
      if admin
        s = system('sudo apt-get install g++-10')
        if s ~= 0
          error(['Installing g++-10 failed. It might not be supported ',...
           'by your Linux version.'])
        end
        s = system('sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 100')
        if s ~= 0
          error('Installing alternative failed.')
        end
        s = system('sudo update-alternatives --set g++ /usr/bin/g++-10')
        if s ~= 0
          error('Setting alternative for g++ failed.')
        end
      else  
        error("Please install g++-10 and set alternatives to the new version.")
      end
      setenv("CC","g++-10");
    end
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
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
      ss = system('sudo apt-get python3-pip')
      if ss~= 0
        error("pip3 could not be installed")
      end
    else
      error('Pip is not installed. Please install pip for python 3!')
    end
  end
  
  [s,cmake_v] = system('LD_LIBRARY_PATH="" && cmake --version');
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
        error('Bootstrap failed.')
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
  
  [s,w] = system('mpiexec --version');
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
              shortPath
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
  s = system(['LD_LIBRARY_PATH="" && cmake -DBUILD_INTERFACE_PYTHON=ON -DTEST_OPENMP=OFF -S', ...
  ' . -B build/release'])
  s = system('LD_LIBRARY_PATH="" && cmake --build build/release')
  if s ~= 0
    error('cmake failed while building release. Please install nomad manually!')
  end
  s = system('LD_LIBRARY_PATH="" && cmake --install build/release')
  if s ~= 0
    error('cmake failed while installing nomad. Please install nomad manually!')
  end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% setup for CUTEST %%%%%%%%%%%%%%%%%%%%%%%%%%%%
if cutest
  if exist([WORKpath,'/TEprob/Collections/CUTEst']) ~= 0
    setenv('ARCHDEFS',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/archdefs'])
    setenv('SIFDECODE',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/sifdecode'])
    setenv('CUTEST',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest'])
    setenv('MASTSIF',[WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/sif'])
  else
    error(['The path ',WORKpath,'/TEprob/Collections/CUTEst is missing!'])
  end
  
  [s,gfortran_ver] = system('echo "__GNUC__" | gfortran -E -P -');
  gfortran_ver = str2double(gfortran_ver);
  [s,sysarch] = system("dpkg --print-architecture");
  sysarch = strtrim(sysarch);
  
  if ~wrongGfortranVersion && ~wrongGccVersion && ~wrongGxxVersion
    if strcmp(sysarch,"amd64")
      if gfortran_ver < 10
        setenv("MYARCH","pc64.lnx.gfo");
      elseif gfortran_ver == 10
        setenv("MYARCH","pc64.lnx.g10")
      elseif gfortran_ver == 11
        setenv("MYARCH","pc64.lnx.g11")
      elseif gfortran_ver == 12
        setenv("MYARCH","pc64.lnx.g12")
      end
    else
      if gfortran_ver < 10
        setenv("MYARCH","pc.lnx.gfo");
      elseif gfortran_ver == 10
        setenv("MYARCH","pc.lnx.g10")
      elseif gfortran_ver == 11
        setenv("MYARCH","pc.lnx.g11")
      elseif gfortran_ver == 12
        setenv("MYARCH","pc.lnx.g12")
      end
    end
  end

  arch = getenv("MYARCH");
  setenv("MYMATLABARCH",arch);

  Matlab = matlabroot;
  setenv('MYMATLAB',Matlab);
  
  if exist([WORKpath,'/TEprob/Collections/CUTEst']) ~= 7
    mkdir([WORKpath,'/TEprob/Collections/CUTEst']);
  end
  eval(['cd ',WORKpath,'/TEprob/Collections/CUTEst']);
  if exist('INSTALLATION') ~= 7
    system('mkdir INSTALLATION');
  end
  if exist('MEX/mexa64') == 7
    renewMex = input(['Would you like to renew the mex files?',...
    ' Please enter 1 for yes and 0 for no: ']);
    if renewMex
      cd MEX
      s = system('rm -rf mexa64');
      s = system('mkdir mexa64');
      cd ..
    end
  else
    s = system('mkdir MEX/mexa64');
  end
  
  eval(['cd ',WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION']);

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
    'https://github.com/ralna/CUTEst/archive/refs/tags/v2.0.43.tar.gz']);
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
  s = copyfile([WORKpath,'/TEprob/Collections/CUTEst/FilesForInstall/cutest2matlab'],...
   [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest/bin/cutest2matlab'])
   if s > 1
     disp('Copying file cutest2matlab failed')
   end
  s = copyfile([WORKpath,'/TEprob/Collections/CUTEst/FilesForInstall/sifdecoder'],...
  [WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/sifdecode/bin/sidecoder']);
  if s > 1
    disp('Copying file sifdecoder failed')
  end
  if s > 1
    disp('Copying file sifdecoder failed')
  end
  [s,w] = unix('gcc --version')
  [s,w] = unix('gfortran --version')
  
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
  disp('Select the right option for the version of the compilers!')
  if ~isempty(gcc_v)
    disp('The version of your C-compiler is:')
    disp(gcc_v)
  end
  if ~isempty(gfortran_v) 
    disp('The version of your fortran-compiler is:')
    disp(gfortran_v)
  end  
 
  disp('================================================================')
  system(['cd ',WORKpath,'/TEprob/Collections/CUTEst/INSTALLATION/cutest'])
  s = system('$ARCHDEFS/install_optrove')
  if s ~= 0
    error('Installing Cutest failed')
  end
  addpath([WORKpath,'/TEprob/Collections/CUTEst'])
  disp('================================================================')
  disp('mex files will be generated:')
  disp('================================================================')
  genMexCUTE
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% setup for MIPLIB %%%%%%%%%%%%%%%%%%%%%%%%%%%%

if miplib
  eval(['cd /',WORKpath,'/TEprob/Collections'])

  if ~exist('MIPLIB')
    s = system('wget https://github.com/Computational-Mathematics-Vienna/TTSopt/MIPLIB.tar.gz')
    if s ~= 0
      error(['Please download the content of ',...
      'https://github.com/Computational-Mathematics-Vienna/TTSopt/MIPLIB.tar.gz and save it  into the folder ',...
      WORKpath,'/TEprob/Collections'])
    end
  end
  disp('MIPLIB: tar will be extracted')
  s = system('tar -xf MIPLIB.tar.gz')
  if s ~= 0
    error('tar failed. Please extract  manually')
  end
  if ~exist('MIPLIBint')
    s = system('wget https://github.com/Computational-Mathematics-Vienna/TTSopt/MIPLIBint.tar.gz')
    if s ~= 0
      error(['Please download the content of ',...
      'https://github.com/Computational-Mathematics-Vienna/TTSopt/MIPLIB.tar.gz and save it into the folder ',...
      WORKpath,'/TEprob/Collections'])
    end
  end
  disp('MIPLIBint: tar will be extracted')
  s = system('tar -xf MIPLIBint.tar.gz')
  if s ~= 0
    error('tar failed. Please extract  manually')
  end  

  eval(['cd /',WORKpath])
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%% setup for Powell %%%%%%%%%%%%%%%%%%%%%%%%%%%%

eval(['cd ',WORKpath,'/SOLVERS'])
if ~exist('v0.7.2.tar.gz')
  s = system('wget https://github.com/libprima/prima/archive/refs/tags/v0.7.2.tar.gz')
  if s ~= 0
    error(['Please download the content of https://github.com/libprima/prima/',...
   'archive/refs/tags/v0.7.2.tar.gz and save it in the folder ',WORKpath,...
   '/SOLVERS/prima'])
  end
end
disp('PRIMA: tar will be extracted')
s = system('tar -xf v0.7.2.tar.gz')
if s ~= 0
  error('tar failed. Please extract v0.7.2.tar.gz manually')
end  
if exist('prima') ~= 0
  s = system('rm -rf prima');
end
disp('prima folder will be renamed')
s = system('mv -f prima-0.7.2 prima');
if s ~= 0
  error('Changing the name prima-0.7.2 to prima failed')
end

eval(['cd ',WORKpath,'/SOLVERS/prima'])

try
  setup
catch    
  error('setup failed')
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if admin
  system('sudo update-alternatives --auto gcc')
  system('sudo update-alternatives --auto g++')
  system('sudo update-alternatives --auto gfortran')
end

addpath([WORKpath,'/TE'])
disp('Test starts:')
TESTmin
disp('Please change the usersName (path to TEallFinal) in /TE/TESTall (line 20),')
disp('TE/TUNEall (line 30) and /PYTHON/runNomad.py (line 25)')
