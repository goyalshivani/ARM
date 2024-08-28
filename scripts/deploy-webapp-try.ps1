$resourceGroup="new-grp"
$location="North Europe"
$appServiceName="newservicename0987"
$webAppName="webapp0987"
 
New-AzAppServicePlan -ResourceGroupName $resourceGroup -Location $location `
-Name $appServiceName -Tier "F1"
 
New-AzWebApp -ResourceGroupName $resourceGroup -Name $webAppName `
-Location $location -AppServicePlan $appServiceName
