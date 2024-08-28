# PowerShell script to create an Azure Web App
 
# Define parameters
$resourceGroup = "resource-grp-arm"
$location = "North Europe"
$appServicePlanName = "myAppServicePlan735434269974645673"
$webAppName = "mywebapp$(Get-Random)"
$sku = "B1"
 
# Login to Azure (if not using a service principal or managed identity)
# Connect-AzAccount
 
# Create a resource group
Write-Host "Creating resource group: $resourceGroup"
New-AzResourceGroup -Name $resourceGroup -Location $location 
 
# Create an App Service Plan
Write-Host "Creating App Service Plan: $appServicePlanName"
New-AzAppServicePlan -ResourceGroupName $resourceGroup -Location $location -Name $appServicePlanName -Tier $sku 
 
# Create a Web App
Write-Host "Creating Web App: $webAppName"
New-AzWebApp -ResourceGroupName $resourceGroup -Name $webAppName -Location $location -AppServicePlan $appServicePlanName 
 
Write-Host "Web App '$webAppName' created successfully."
