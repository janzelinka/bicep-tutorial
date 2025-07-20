resource storageAccount 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: 'stbicepdev'
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
