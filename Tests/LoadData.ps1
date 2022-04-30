write-host "Run LoadData"
write-host "##vso[task.setvariable variable=foo]'one;two'"

write-host $ENV:toto
$ENV:toto = 55