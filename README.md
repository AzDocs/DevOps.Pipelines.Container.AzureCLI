# Azure DevOps - Azure CLI container
Don't you hate it when a new Azure CLI version gives you a new bug? Here is the solution! You can use this container within your pipeline and select the Azure CLI version you want to use. How? It's simple!

# How?
In your pipeline simply set the `container` parameter on your job:
```yaml
jobs:
  - deployment: Deploy
    displayName: Deploy to dev
    environment: dev
    container: azuredocumentation/devops.pipelines.container.azurecli:2.25.0
```
Simply set the tag to the Azure CLI version you want to use!
