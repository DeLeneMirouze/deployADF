write-host "Run LoadData"
write-host "##vso[task.setvariable variable=foo]'one;two'"

write-host $env:TOTO
$env:TOTO = 55