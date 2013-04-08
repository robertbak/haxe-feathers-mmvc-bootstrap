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