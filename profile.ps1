function activate_msvc_impl {
    Import-Module "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"
    Enter-VsDevShell 143c5d98 -DevCmdArguments -arch=x64
}

Set-Alias activate_msvc activate_msvc_impl
