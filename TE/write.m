%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% write.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% matlab formated read/write explanations
% 

% s = ' How much wood would a woodchuck chuck?';
% findstr(s,'a')    returns      22
% findstr(s,'wood') returns      [11 24]
% findstr(s,'Wood') returns      []
% findstr(s,' ')    returns      [1 5 9 10 21 23 33]
% [a,b]=strtok(s)   returns      a='How',
% (b empty if only one token)    b=' much wood would a woodchuck chuck?'
% (a,b empty if empty)           (including the leading blank in b)
% strcmp(x,y)       returns true if x==y, false otherwise.
%


% convert text to character code and reverse
ascii_code='any_text'+0;
any_text=char(ascii_code);
visible_characters=char(32:255) % apparently setstr(i)=char(i)
% 12345678901234567890123456789012345678901234567890    1: 50
%                                 !"#$%&'()*+,-./012
% 12345678901234567890123456789012345678901234567890   51:100
% 3456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcd
% 12345678901234567890123456789012345678901234567890  101:150
% efghijklmnopqrstuvwxyz{|}~
% 12345678901234567890123456789012345678901234567890  151:200
%           ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈ
% 12345678901234567890123456789012345678901234567890  201:250
% ÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú
% 12345678901234567890123456789012345678901234567890  251:300
% ûüýþ
%
% 0:9   = 48:57
% A:Z   = 65:90
% a:z   = 97:122
% blank = 32
% newl  = 10
% tab   = 9
% beep  = 7
% >    = 62 
% ALA, QML, and opt12 all use 9,10,32-126 (which gives 97 characters)
% see ~/matlab/ai/alg/stream/analyzeLatex.m for more statistics


% read string from console without enclosing apostrophes:
file = input('Enter filename: ','s');


fid= fopen('filename','r'); 
% opens a read file with handle fid
%	'w' for write, 'a' for append, 'r+' for read and write
% fid=1 for standard output
% fid=2 for standard error

fclose(fid)
% close file with handle fid (necessary when many files are read!)

% read ascii file into a single string
text=textscan(fid,'%c');text=text{1}';  % drops blanks, tabs, newlines
text=textscan(fid,'%s');  % splits into cells by \b \t \n
text=fscanf(fid,'%s');  % splits into cells by \b \t \n

x=fread(fid,10,'float'); 
% reads 10 reals from file with handle fid
%	'char' 'uchar' for characters, 'double' for real*8,
%	'short' 'long' for 16 or 64 bit integers

x=fgetl(fid);			% reads next line without line feed
x=fgets(fid);			% reads next line with line feed
			      	% -1 if eof
eof=feof(fid);			% end of file? (1=yes)
x=fscanf(fid,format);		% reads formatted text
x=fscanf(fid,format,n); 	% reads column vector (n=inf allowed)
x=fscanf(fid,format,[m,n]);	% reads matrix (n=inf allowed)

x=sscanf(string,format); 	% read from string
x=sscanf(string,format,size); 	% read from string
[x,COUNT,ERRMSG,NEXTINDEX]=sscanf(string,format) 
   % COUNT       number of elements successfully read
   % ERRMSG      error message string if an error occurred 
   %             empty matrix if an error did not occur
   % NEXTINDEX   1 + number of characters scanned successfully



format='text%12.8etext%ftext\n';
%	\n for newline, 
%       %c      string (drops blanks, tabs and newlines) 
%       %s      string (keeps blanks and newlines)
%	%2.0f	fixed point, 2 characters, no decimal point
%		but more if otherwise not representable
%		leading zeros not filled
%	%5.2f	fixed point, 5 characters, 2 after decimal point
%		but more if otherwise not representable
%		leading zeros not filled
%	%12.8e 	floating point, 12 characters, 8 after decimal point
%               but positive sign is not a blank
%       %e      format free floating point input, exponent letter e
%               (%d does not work analogously for expoennt letter d)
%       %i      format free integer input

% other formats
% d, i, o, u, x, X, f, e, E, g, G
%d decimal 

fprintf(fid,format,variable_list); 
% writes to file with handle fid
%	the format is applied cyclically to all entries of
%	variable_list (may be several variables), columnwise
%       so to write two vectors x,y beside each other without loop
%       one needs to write sprintf('%12.8i  %12.8i\n',[x y]')

string=sprintf(format,variable_list); 
% writes instead to string

% for mor details see
help iofun
help fprintf
help sprintf
help fread
help fscanf
help fopen


        

========================================================================

help textscan
 TEXTSCAN Read formatted data from text file or string.
    C = TEXTSCAN(FID,'FORMAT') reads data from the text
    file identified by FID into cell array C. The data are parsed into
    fields and converted according to the conversions specified in the
    string, FORMAT. The number of cells in C will equal the number of
    conversion specifiers in FORMAT.  The type of each cell is determined
    by FORMAT. See "Format Options" below.

    C = TEXTSCAN(FID,'FORMAT',N) N must be a positive integer.  FORMAT is
    reused N times.

    C = TEXTSCAN(FID,'FORMAT',PARAMETER,VALUE, ...)
    C = TEXTSCAN(FID,'FORMAT',N,PARAMETER,VALUE, ...)
    Multiple PARAMETER and VALUE pairs may be used, in any order.  A VALUE
    must immediately follow its PARAMETER.  See "Parameter Options" below.

    C = TEXTSCAN(STR,...)  reads data from a string in exactly the same
    way as from a file.  You cannot automatically resume reading from the
    same place in the string.  You can use 'FORMAT', N, and PARAMETER/VALUE
    arguments, as described above, with this syntax.

    [C, POSITION] = TEXTSCAN(...) returns the location of the file or
    string position as the second output argument.  For a file, this is
    exactly equivalent to calling FTELL(FID) after making the call to
    TEXTSCAN.  For a string, it indicates how many characters were read.

    If TEXTSCAN fails to convert a data field, it stops reading and returns
    all fields read before the failure. When reading from a file, you may
    resume reading by calling TEXTSCAN again, with the original FID as the
    first argument. When finished reading from the file, you should close
    the file by calling FCLOSE(FID). When reading from a string, the two
    output argument syntax must be used in order to be able to resume
    reading from the same place.  You may then call:
    TEXTSCAN(STR(POSITION+1:end),...).

    TEXTSCAN regards a text file as consisting of blocks. Each block
    consists of a number of internally consistent fields. Each field
    consists of a group of characters delimited by a field delimiter
    character (DLM). The fields may span over a number of rows. Each row is
    delimited by an End-Of-Line (EOL) character sequence.

        Format Options:

    The FORMAT string is of the form:  %<WIDTH>.<PREC><SPECIFIER>
    <WIDTH> is optional and specifies the number of characters in a field
        to read. Inserting a * in front of, or instead of, the <WIDTH>
        causes TEXTSCAN to skip the particular field in the input and no
        output cell is created for this conversion. (See Example 3 below.)
    <PREC> only applies to the family of %f specifiers and states the
        number of significant fractional digits to be converted.
    <SPECIFIER> must be given and determines the conversion output type.

    Supported FORMAT specifiers:
        %n   - read and convert a number to double
        %d   - read and convert a number to int32
        %d8  - read and convert a number to int8
        %d16 - read and convert a number to int16
        %d32 - read and convert a number to int32
        %d64 - read and convert a number to int64
        %u   - read a number and convert to uint32
        %u8  - read and convert a number to uint8
        %u16 - read and convert a number to uint16
        %u32 - read a number and convert to uint32
        %u64 - read a number and convert to uint64
        %f   - read a number and convert to double
        %f32 - read a number and convert to single
        %f64 - read a number and convert to double
        %s   - read a string
        %q   - read a (possibly double-quoted) string
        %c   - read a character, including whitespace
        %[...]  - reads characters matching characters between the
                  brackets until first non-matching character.
                  Use %[]...] to include ] in the set.
        %[^...] - reads characters not matching characters between the
                  brackets until first matching character.
                  Use %[^]...] to exclude ] in the set.

    PARAMETER options:

         'BufSize'      - maximum string length in bytes (default is 4095)
         'CommentStyle' - one of:
            - a single string.  Characters following the string until the
              end of a line or file, will be ignored.
            - a cell array of two strings.  The first string indicates the
              beginning of a comment, the second, the end, e.g.  {'/*','*/'}
              for C-style comments.
         'Delimiter'    - delimiter characters (default is a space character)
         'EmptyValue'   - Value to use when an empty field is encountered
                                                  (default is NaN).
         'EndOfLine'    - end of line character (default determined from file).
         'ExpChars'     - exponent characters (default is 'eEdD').
         'Headerlines'  - number of lines at beginning of file to skip.
         'Whitespace'   - whitespace characters (default is ' \b\t')
                          Leading whitespace characters are not included in
                          the procesing of any of the data fields.  When
                          processing numeric data, trailing whitespace is
                          also assumed to have no significance.
         'ReturnOnError'- behavior on failing to read or convert (1=true or 0)
                          (default is 1).
         'TreatAsEmpty' - specify one or more strings to be treated in the
                          same way as empty values.  Either a single
                          string or a cell array of strings may be used.
         'MultipleDelimsAsOne'
                        - If a delimiter is specified, this option
                                  may be set to 1 in order to have consecutive
                                  delimiters treated as one delimiter. It may be
                                  set to 0 in order to treat them as separate
                                  delimiters.  This option may not be set if a
                                  delimiter is not specified.  The default is 0.
         'CollectOutput'
                        - If true, consecutive cells of the output which
                          have the same datatype will be concatenated into
                          a single array. The default is false.

    EXAMPLES:
    Suppose the text file 'mydata.dat' contains data in the following form:
                Sally    Type1 12.34 45 1.23e10 inf NaN Yes
                Joe      Type2 23.54 60 9e19 -inf 0.001 No
                Bill     Type3 34.90 12 2e5 10 100 No

    Example 1:  Read each column into a variable
        fid = fopen('mydata.dat');
        C = textscan(fid,'%s%s%f32%d8%u%f%f%s');
        fclose(fid);
                C{1}=>  'Sally','Joe','Bill'
                C{2}=>  'Type1','Type2','Type3'
                C{3}=>  [12.34;23.54;34.9]                %class single
                C{4}=>  [45;60;12]                        %class int8
                C{5}=>  [4294967295; 4294967295; 200000]  %class uint32
                C{6}=>  [Inf;-Inf;10]                     %class double
                C{7}=>  [NaN;0.001;100]                   %class double
                C{8}=>  'Yes','No','No'

        The first two elements of C{5} are the maximum values for a 32-bit
        unsigned integer, or intmax('uint32').

    Example 2: Read the first column, skipping the rest of the line:
        fid = fopen('mydata.dat');
        names = textscan(fid,'%s%*[^\n]');
        fclose(fid);

    Example 3: Read file using fixed-width format, skipping the third field
        fid = fopen('mydata.dat');
        C = textscan(fid,'%9c%5s%*f%d8%u%f%f%s');
        fclose(fid);
                C{3}=>  [45;60;12]              %class int8

    Example 4: Read the file and match 'Type' literal in second field
        fid = fopen('mydata.dat');
        C = textscan(fid,'%sType%f%f32%d8%u%f%f%s');
        fclose(fid);
                C{1}=>  'Sally','Joe','Bill'
                C{2}=>  [1;2;3]  %'Type' in field two has been skipped.

    Example 5: Read the file using -Inf in empty cells:
    Suppose data.csv contains:
                            1,2,3,4,,6
                            7,8,9,,11,12

        fid = fopen('data.csv');
        C = textscan(fid,'%f%f%f%f%u64%f','Delimiter',',','EmptyValue',-Inf);
        fclose(fid);
                C{4}=>  [4;-Inf]    %class double
                C{5}=>  [0;11]      %class uint64 (uint64(-Inf) == 0)

    Example 6: Read files with custom empty values and comments.
    Suppose data.csv contains:
                            abc,2,NA,3,4
                            //Comment here
                            def,na,5,6,7

        fid = fopen('data.csv');
        C = textscan(fid,'%s%n%n%n%n','Delimiter',',',...
                'TreatAsEmpty',{'NA','na'},'CommentStyle', '//')
        fclose(fid);
                C{1}=>  'abc','def'
                C{2}=>  [2;NaN]
                C{3}=>  [NaN;5]

    Example 7: Read a file using the CollectOutput flag.  Suppose data.csv
    contains:
                            12,13,14,15,16
                            22,23,24,25,26,
                            32,33,34,35,36

        fid = fopen('data.csv');
        C = textscan(fid,'%f%f%f%f%f','Delimiter',',','CollectOutput',1);
        fclose(fid);
    C would be a 1x1 cell array containing a 3x5 array of doubles.

    See also FOPEN, FREAD, FREWIND, FSEEK, FCLOSE, LOAD, SSCANF, IMPORTDATA.

    Reference page in Help browser
       doc textscan


========================================================================

help save
 SAVE Save workspace variables to file. 
    SAVE(FILENAME) stores all variables from the current workspace in a
    MATLAB formatted binary file (MAT-file) called FILENAME.
 
    SAVE(FILENAME,VARIABLES) stores only the specified variables.
 
    SAVE(FILENAME,'-struct',STRUCTNAME,FIELDNAMES) stores the fields of the
    specified scalar structure as individual variables in the file. If you 
    include the optional FIELDNAMES, the SAVE function stores only the
    specified fields of the structure.  You cannot specify VARIABLES and 
    the '-struct' keyword in the same call to SAVE.
 
    SAVE(FILENAME, ..., '-append') adds new variables to an existing file.
    You can specify '-append' with additional inputs such as VARIABLES,
    '-struct', FORMAT, or VERSION.
 
    SAVE(FILENAME, ..., FORMAT) saves in the specified format: '-mat' or
    '-ascii'.
    You can specify FORMAT with additional inputs such as VARIABLES,
    '-struct', '-append', or VERSION.
 
    SAVE(FILENAME, ..., VERSION) saves to MAT-files in the specified
    version: '-v4', '-v6', '-v7', or '-v7.3'.
    You can specify VERSION with additional inputs such as VARIABLES,
    '-struct', '-append', or FORMAT.
 
    SAVE FILENAME ... is the command form of the syntax, for convenient 
    saving from the command line.  With command syntax, you do not need to
    enclose strings in single quotation marks.  Separate inputs with spaces
    instead of commas.  Do not use command syntax if inputs such as 
    FILENAME are variables.
 
    Inputs:
 
    FILENAME: If you do not specify FILENAME, the SAVE function saves to a
    file named matlab.mat.  If FILENAME does not include an extension and 
    the value of format is '-mat' (the default), MATLAB appends .mat. If 
    filename does not include a full path, MATLAB saves in the current
    folder. You must have permission to write to the file.
 
    VARIABLES:  Save only selected variables from the workspace.
    Use one of the following forms:
 
        V1, V2, ...              Save the listed variables. Use the '*'
                                 wildcard to match patterns.  For example,
                                 save('A*') saves all variables that start
                                 with A.
        '-regexp', EXPRESSIONS   Save only the variables that match the
                                 specified regular expressions. SAVE treats
                                 all inputs as regular expressions except
                                 the optional FILENAME and STRUCTNAME.  The
                                 FILENAME input must appear first.  For
                                 more information on regular expressions,
                                 type "doc regexp" at the command prompt.
 
    '-struct', STRUCTNAME, FIELDNAMES:  Save the fields of a scalar
    structure as individual variables in the file.  FIELDNAMES is optional; 
    specify to save only selected fields.  FIELDNAMES use the same forms as
    VARIABLES.
 
    '-append': Add data to an existing file.  For MAT-files, '-append' adds
    new variables to the file or replaces the saved values of existing
    variables with values in the workspace.  For ASCII files, '-append'
    adds data to the end of the file.
 
    FORMAT: Specify the format of the file, regardless of any specified
    extension.  Use one of the following combinations:
 
        '-mat'                        Binary MAT-file format (default).
        '-ascii'                      8-digit ASCII format.
        '-ascii', '-tabs'             Tab-delimited 8-digit ASCII format.
        '-ascii', '-double'           16-digit ASCII format.
        '-ascii', '-double', '-tabs'  Tab-delimited 16-digit ASCII format.
 
        For ASCII file formats, the SAVE function has the following
        limitations:
        * Each variable must be a two-dimensional double or char array.
        * MATLAB translates characters to their corresponding internal
          ASCII codes.  For example, 'abc' appears in an ASCII file as:
              9.7000000e+001  9.8000000e+001  9.9000000e+001
        * The output includes only the real component of complex numbers.
        * If you plan to use the LOAD function to read the file, all
          variables must have the same number of columns.
 
    VERSION: Create a MAT-file that you can load into an earlier version of
    MATLAB or that supports specific features.  The following table shows 
    the available MAT-file version options and the corresponding supported
    features.
 
             | Can Load in  |
    Option   | Versions     | Supported Features
    ---------+--------------+----------------------------------------------
    '-v7.3'  | 7.3 or later | Version 7.0 features plus support for
             |              | data items greater than or equal to 2GB on
             |              | 64-bit systems
    ---------+--------------+----------------------------------------------
    '-v7'    | 7.0 or later | Version 6 features plus data compression and
             |              | Unicode character encoding
    ---------+--------------+----------------------------------------------
    '-v6'    | 5 or later   | Version 4 features plus N-dimensional arrays,
             |              | cell and structure arrays, and variable names
             |              | greater than 19 characters
    ---------+--------------+----------------------------------------------
    '-v4'    | all          | Two-dimensional double, character, and
             |              | sparse arrays
 
    If any data items require features that the specified version does not
    support, MATLAB does not save those items and issues a warning. You 
    cannot specify a version later than your version of MATLAB software.
 
    To view or set the default version for MAT-files, select
    File > Preferences > General > MAT-Files.
 
    Examples:
 
    % Save all variables from the workspace to test.mat:
    save test.mat
 
    % Save two variables, where FILENAME is a variable:
    savefile = 'pqfile.mat';
    p = rand(1, 10);
    q = ones(10);
    save(savefile, 'p', 'q');
 
    % Save the fields of a structure as individual variables:
    s1.a = 12.7;
    s1.b = {'abc', [4 5; 6 7]};
    s1.c = 'Hello!';
    save('newstruct.mat', '-struct', 's1');
 
    % Save variables whose names contain digits:
    save myfile.mat -regexp \d
 
    See also LOAD, MATFILE, WHOS, REGEXP, HGSAVE, SAVEAS, WORKSPACE, CLEAR.

 
========================================================================

help load
 LOAD Load workspace variables from disk.
    LOAD FILENAME retrieves all variables from a file given a full pathname
    or a MATLABPATH relative partial pathname (see PARTIALPATH).  If
    FILENAME has no extension LOAD looks for FILENAME.mat and, if found,
    LOAD treats the file as a binary "MAT-file".  If FILENAME.mat is not
    found, or if FILENAME has an extension other than .mat it is treated as
    an ASCII file.

    LOAD, by itself, uses the binary "MAT-file" named 'matlab.mat'.  It is
    an error if 'matlab.mat' is not found.

    LOAD FILENAME X loads only X.
    LOAD FILENAME X Y Z ... loads just the specified variables.  The
    wildcard '*' loads variables that match a pattern (MAT-file only).

    LOAD FILENAME -REGEXP PAT1 PAT2 can be used to load all variables
    matching the specified patterns using regular expressions. For more
    information on using regular expressions, type "doc regexp" at the
    command prompt.

    LOAD -ASCII FILENAME or LOAD -MAT FILENAME forces LOAD to treat the
    file as either an ASCII file or a MAT-file regardless of file
    extension.  With -ASCII, LOAD will error if the file is not numeric
    text.  With -MAT, LOAD will error if the file is not a MAT-file
    generated by SAVE -MAT.

    If FILENAME is a MAT-file, requested variables from FILENAME are
    created in the workspace. If FILENAME is not a MAT-file, a double
    precision array is created with name based on FILENAME.  Leading
    underscores or digits in FILENAME are replaced with X.  Other non-alpha
    chars in FILENAME are replaced with underscores.

    S = LOAD(...) returns the contents of FILENAME in variable S.  If
    FILENAME is a MAT-file, S is a struct containing fields matching the
    variables retrieved.  If FILENAME is an ASCII file, S is a double
    precision array.

    Examples for pattern matching:
        load fname a*                % Load variables starting with "a"
        load fname -regexp \d        % Load variables containing any digits

    Examples for specifying filename and variables:
        load mydata.mat v1    % Use with literal filename
        load 'my data file.mat' v1    % Use when filename has spaces
        d = load('mydata.mat', 'v1')  % Use when output is specified
        load(savefile, 'v1')  % Use when filename is stored in a variable

    See also SAVE, WHOS, REGEXP, UILOAD, SPCONVERT, PARTIALPATH, IOFUN, FILEFORMATS.

    Reference page in Help browser
       doc load

========================================================================



help iofun
  File input and output.

  File import/export functions.
    dlmread       - Read ASCII delimited file.
    dlmwrite      - Write ASCII delimited file.
    importdata    - Load data from a file into MATLAB.
    daqread       - Read Data Acquisition Toolbox (.daq) data file.
    matfinfo      - Text description of MAT-file contents.

  Spreadsheet support.
    xlsread       - Get data and text from a spreadsheet in an Excel workbook.
    xlswrite      - Stores numeric array or cell array in Excel workbook.
    xlsfinfo      - Determine if file contains Microsoft Excel spreadsheet.
    wk1read       - Read spreadsheet (WK1) file.
    wk1write      - Write spreadsheet (WK1) file.
    wk1finfo      - Determine if file contains Lotus WK1 worksheet.
    str2rng       - Convert spreadsheet range string to numeric array.
    wk1wrec       - Write a WK1 record header.

  Internet resource.
    urlread       - Returns the contents of a URL as a string.
    urlwrite      - Save the contents of a URL to a file.
    ftp           - Create an FTP object.
    sendmail      - Send e-mail.

  Zip file access.
    zip           - Compress files into zip file.
    unzip         - Extract contents of zip file.

  Tar file access.
    tar           - Compress files into tar file.
    untar         - Extract contents of tar file.

  Gzip file access.
    gzip          - Compress files into GNU zip files.
    gunzip        - Uncompress GNU zip files.

  Formatted file I/O.
    fgetl         - Read line from file, discard newline character.
    fgets         - Read line from file, keep newline character.
    fprintf       - Write formatted data to file.
    fscanf        - Read formatted data from file.
    textscan      - Read formatted data from text file.
    textread      - Read formatted data from text file.

  File opening and closing.
    fopen         - Open file.
    fclose        - Close file.

  Binary file I/O.
    fread         - Read binary data from file.
    fwrite        - Write binary data to file.

  File positioning.
    feof          - Test for end-of-file.
    ferror        - Inquire file error status.
    frewind       - Rewind file.
    fseek         - Set file position indicator.
    ftell         - Get file position indicator.

  Memory-mapped file support.
    memmapfile    -  Construct memory-mapped file object.

  File name handling.
    fileparts     - Filename parts.
    filesep       - Directory separator for this platform.
    fullfile      - Build full filename from parts.
    matlabroot    - Root directory of MATLAB installation.
    mexext        - MEX filename extension for this platform.
    partialpath   - Partial pathnames.
    pathsep       - Path separator for this platform.
    prefdir       - Preference directory name.
    tempdir       - Get temporary directory.
    tempname      - Get temporary file.

  XML file handling.
    xmlread       - Parse an XML document and return a Document Object Model node.
    xmlwrite      - Serialize an XML Document Object Model node.
    xslt          - Transform an XML document using an XSLT engine.

  Serial port support.
    serial        - Construct serial port object.
    instrfindall  - Find all serial port objects with specified property values.
    freeserial    - Release MATLAB's hold on serial port.
    instrfind     - Find serial port objects with specified property values.

  Timer support.
    timer         - Construct timer object.
    timerfindall  - Find all timer objects with specified property values.
    timerfind     - Find visible timer objects with specified property values.

  Command window I/O.
    clc           - Clear command window.
    home          - Send the cursor home.

  SOAP support.
    createClassFromWsdl - Create a MATLAB object based on a WSDL-file.
    callSoapService     - Send a SOAP message off to an endpoint.
    createSoapMessage   - Create the SOAP message, ready to send to the server.
    parseSoapResponse   - Convert the response from a SOAP server into MATLAB types.

  See also GENERAL, LANG, AUDIOVIDEO, IMAGESCI, GRAPHICS, UITOOLS.

