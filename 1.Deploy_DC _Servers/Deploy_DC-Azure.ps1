#Install-Module -Name Az
#Import-Module -Name Az

$deploytemp = @{
    adminUsername = 'amitay'
    domainName = 'amicrosoftlab.com'
    dnsPrefix = "adds01"   
    
}

New-AzResourceGroup -Name myrg01 -Location 'East US'
New-AzResourceGroupDeployment -ResourceGroupName myrg01 -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/application-workloads/active-directory/active-directory-new-domain-ha-2-dc/azuredeploy.json -TemplateParameterObject $deploytemp