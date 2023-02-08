param location string = resourceGroup().location


resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: 'hackAppPlan'
  location: location
  sku: {
    name: 'F1'
  }
  kind: 'linux'
}

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: 'FrontEndApp$(uniqueString(resourceGroup().id))hjdkajh113'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
