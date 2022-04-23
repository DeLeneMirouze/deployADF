
$currentDataFactory = @{
    name              = $ENV:dataFactoryName
    resourceGroupName = $ENV:resourceGroupName
}

$templateParameterObject = @{
    dataFactories = $currentDataFactory
    location      = $ENV:location
}

DeployArmTemplate `
    -deploymentName 'dataFactory' `
    -output $arrayDataFactories `
    -resourceGroupName $ENV:resourceGroupName `
    -templateFile "DeployADF.json" `
    -templateParameterObject $templateParameterObject `
    -mode Incremental `
    -job $false


