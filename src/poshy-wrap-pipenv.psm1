#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if (-not (Test-Command pipenv) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

function Invoke-PipenvCheck {
    pipenv check @args
}
Set-Alias -Name pch -Value Invoke-PipenvCheck
Export-ModuleMember -Function Invoke-PipenvCheck -Alias pch

function Invoke-PipenvClean {
    pipenv clean @args
}
Set-Alias -Name pcl -Value Invoke-PipenvClean
Export-ModuleMember -Function Invoke-PipenvClean -Alias pcl

function Invoke-PipenvGraph {
    pipenv graph @args
}
Set-Alias -Name pgr -Value Invoke-PipenvGraph
Export-ModuleMember -Function Invoke-PipenvGraph -Alias pgr

function Invoke-PipenvInstall {
    pipenv install @args
}
Set-Alias -Name pi -Value Invoke-PipenvInstall
Export-ModuleMember -Function Invoke-PipenvInstall -Alias pi

function Invoke-PipenvInstallDev {
    pipenv install --dev @args
}
Set-Alias -Name pidev -Value Invoke-PipenvInstallDev
Export-ModuleMember -Function Invoke-PipenvInstallDev -Alias pidev

function Invoke-PipenvLock {
    pipenv lock @args
}
Set-Alias -Name pl -Value Invoke-PipenvLock
Export-ModuleMember -Function Invoke-PipenvLock -Alias pl

function Invoke-PipenvOpen {
    pipenv open @args
}
Set-Alias -Name po -Value Invoke-PipenvOpen
Export-ModuleMember -Function Invoke-PipenvOpen -Alias po

function Invoke-PipenvRun {
    pipenv run @args
}
Set-Alias -Name prun -Value Invoke-PipenvRun
Export-ModuleMember -Function Invoke-PipenvRun -Alias prun

function Invoke-PipenvShell {
    pipenv shell @args
}
Set-Alias -Name psh -Value Invoke-PipenvShell
Export-ModuleMember -Function Invoke-PipenvShell -Alias psh

function Invoke-PipenvSync {
    pipenv sync @args
}
Set-Alias -Name psy -Value Invoke-PipenvSync
Export-ModuleMember -Function Invoke-PipenvSync -Alias psy

function Invoke-PipenvUninstall {
    pipenv uninstall @args
}
Set-Alias -Name pu -Value Invoke-PipenvUninstall
Export-ModuleMember -Function Invoke-PipenvUninstall -Alias pu

function Invoke-PipenvUpdate {
    pipenv update @args
}
Set-Alias -Name pupd -Value Invoke-PipenvUpdate
Export-ModuleMember -Function Invoke-PipenvUpdate -Alias pupd

function Invoke-PipenvWhere {
    pipenv --where @args
}
Set-Alias -Name pwh -Value Invoke-PipenvWhere
Export-ModuleMember -Function Invoke-PipenvWhere -Alias pwh

function Invoke-PipenvVenv {
    pipenv --venv @args
}
Set-Alias -Name pvenv -Value Invoke-PipenvVenv
Export-ModuleMember -Function Invoke-PipenvVenv -Alias pvenv

function Invoke-PipenvPy {
    pipenv --py @args
}
Set-Alias -Name ppy -Value Invoke-PipenvPy
Export-ModuleMember -Function Invoke-PipenvPy -Alias ppy
