
write-host "Deploy ADF $($ENV:dataFactoryName)"

$templateParameterObject = @{
    name     = $ENV:dataFactoryName
    location = $ENV:location
}

write-host ($templateParameterObject | ConvertTo-Json)

New-AzResourceGroupDeployment `
    -ResourceGroupName $ENV:resourceGroupName `
    -Name 'dataFactory' `
    -Mode Incremental `
    -TemplateFile "infrastructure\templateADF.json" `
    -TemplateParameterObject $templateParameterObject 


