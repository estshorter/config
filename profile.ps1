# https://intellitect.com/enter-vsdevshell-powershell/
# http://mklearning.blogspot.com/2019/12/developer-powershell-for-vs-2019x64.html
# SkipAutomaticLocation を指定しないと勝手にcdされる
function activate_msvc_impl {
    $installPath = &"C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe" -version 16.0 -property installationpath
    Import-Module (Join-Path $installPath "Common7\Tools\Microsoft.VisualStudio.DevShell.dll") && Enter-VsDevShell -VsInstallPath $installPath -SkipAutomaticLocation -DevCmdArguments -arch=x64
}

Set-Alias activate_msvc activate_msvc_impl
