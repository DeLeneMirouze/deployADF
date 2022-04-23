
write-host "Deploy ADF pipeline $($ENV:dataFactoryName)"

$templateParameterObject = @{
    name              = $ENV:dataFactoryName
    location          = $ENV:location
    gitAccountName    = "DeLeneMirouze"
    gitRepositoryName = "testadf"
}

write-host ($templateParameterObject | ConvertTo-Json)

New-AzResourceGroupDeployment `
    -ResourceGroupName $ENV:resourceGroupName `
    -Name 'dataFactoryPipeline' `
    -Mode Incremental `
    -TemplateFile "pipeline\DeployPipeline.json" `
    -TemplateParameterObject $templateParameterObject 


