-----------------------------------------
TSopt - Testing Software for optimization
-----------------------------------------

Version: 1.0.0 

Date: April 03, 2024

Authors:
- Arnold Neumaier <arnold.neumaier@univie.ac.at>
- Morteza Kimiaei:<morteza.kimiaei@univie.ac.at>
- Romana Jezek <romana.jezek@univie.ac.at>
- Maximilian Stollmayer
- Roman Kostal

Support by the Austrian Science Fund FWF under the contract number  
P 34317 is gratefully acknowledged.


TSopt is a software package running under Octave or Matlab 
for testing derivative free optimization software.
It consists of a collection of solvers, a collection of test problems,
and software for using these.

TSopt can be downloaded from 
https://github.com/Computational-Mathematics-Vienna/TTSopt.

----------------------------------------------------
Installation (after downloading and unpacking TSopt):
---------------------------------------------------- 

In Octave, go to the directory TSopt and run the file 
OctaveSetup answering the interactive queries.

In Matlab, go to the directory TSopt and run the file 
MatlabSetup answering the interactive queries.

The installation process assumes that you have an internet connection. 
You will be asked whether you want to use certain third party packages. 
Their licences can be found on the following github pages:
- for Nomad: https://github.com/bbopt/nomad/blob/master/LICENSE
- for CUTEst: https://github.com/ralna/CUTEst/blob/master/LICENSE
- for pdfo: https://github.com/pdfo/pdfo?tab=BSD-3-Clause-1-ov-file
- for prima: https://github.com/libprima/prima/blob/main/LICENCE.txt

In case of errors, consult the installation guide in Masterdoc.pdf.
This docoument also tells you how to use TSopt and how to add a 
new solver or a new problem collection.
