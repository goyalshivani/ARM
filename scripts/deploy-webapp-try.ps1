$resourceGroup="use-grp"
$location="North Europe"
$appServiceName="newservicename098723476528765"
$webAppName="webapp09873376549987"
 
New-AzAppServicePlan -ResourceGroupName $resourceGroup -Location $location -Name $appServiceName -Tier "F1"
 
New-AzWebApp -ResourceGroupName $resourceGroup -Name $webAppName -Location $location -AppServicePlan $appServiceName
