param (
    [string]$ResourceGroupName,
    [string]$TemplateFilePath,
    [string]$ParametersFilePath,
    [string]$Location
)

# Connect to Azure (Ensure that Azure DevOps service connection is configured for authentication)
# If needed, uncomment the line below and provide subscription ID
# Connect-AzAccount -SubscriptionId "<Your-Subscription-ID>"

# Create Resource Group if it does not exist
if (-not (Get-AzResourceGroup -Name $ResourceGroupName -ErrorAction SilentlyContinue)) {
    New-AzResourceGroup -Name $ResourceGroupName -Location $Location
}

# Deploy ARM Template
New-AzResourceGroupDeployment `
    -ResourceGroupName $ResourceGroupName `
    -TemplateFile $TemplateFilePath `
    -TemplateParameterFile $ParametersFilePath `
    -Verbose
