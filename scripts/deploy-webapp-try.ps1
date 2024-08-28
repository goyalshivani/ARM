$resourceGroup="new-grp"
$location="North Europe"
$appServiceName="newservicename098723476528765"
$webAppName="webapp09873376549987"
 
New-AzAppServicePlan -ResourceGroupName $resourceGroup -Location $location -Name $appServiceName -Tier "Basic" -NumberofWorkers 2 -WorkerSize "Small"
 
New-AzWebApp -ResourceGroupName $resourceGroup -Name $webAppName -Location $location -AppServicePlan $appServiceName
