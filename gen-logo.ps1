[cmdletbinding()]
param(
    [parameter(Mandatory,position=0)]
    [string]$project,
    [parameter(Mandatory,position=1)]
    [string]$LogoName
)
Import-module ../mystro; mystro config -Source "./logos/$project/$LogoName.svg" `
                                       -OutputDir "./logos/$project/dist" `
                                       -AutoScale | mystro Gen