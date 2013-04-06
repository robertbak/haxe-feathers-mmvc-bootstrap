Libs
===========
To make life easier with outdated libs, I keep a copy of the code in the project at the moment.

On Windows you can create copy all the needed files using:
(just change the githubdir)

    cd lib
    set githubdir=C:\Users\robert\Documents\GitHub
    echo %githubdir%
    mkdir starling
    mkdir feathers
    mkdir MetalWorksMobileTheme
    xcopy "%githubdir%\starling" starling /S /Y
    xcopy "%githubdir%\feathers\lib\feathers" feathers /S /Y 
    xcopy "%githubdir%\feathers\lib\MetalWorksMobileTheme" MetalWorksMobileTheme /S /Y 
    cd ..

* starling -> https://github.com/jgranick/starling/ 
* feathers -> https://github.com/mikedotalmond/feathers/ (lib/feathers)
* MetalWorksMobileTheme -> https://github.com/mikedotalmond/feathers/ (lib/MetalWorksMobileTheme)