


resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: hackAppPlan
  location: resourceGroup().location
  sku: {
    name: 'F1'
  }
  kind: 'linux'
}

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: 'FrontEndApp$(uniqueString(resourceGroup().id))'
  location: resourceGroup().location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
