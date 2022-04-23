
$currentDataFactory = @{
    name              = $ENV:dataFactoryName
    resourceGroupName = $ENV:resourceGroupName
}

$templateParameterObject = @{
    dataFactories = $currentDataFactory
    location      = $ENV:location
}

write-host $templateParameterObject

New-AzResourceGroupDeployment `
    -ResourceGroupName $ENV:resourceGroupName `
    -Name 'dataFactory' `
    -Mode Incremental `
    -TemplateFile "DeployADF.json" `
    -TemplateParameterObject $templateParameterObject 


