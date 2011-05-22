c:\nuget\nuget.exe pack c:\git\FSRepository\FSRepository.nuspec -b c:\git\FSRepository -o c:\git\FSRepository
md c:\nuget\FSRepository\
copy c:\git\FSRepository\*.nupkg c:\nuget\FSRepository\*.nupkg /Y
pause