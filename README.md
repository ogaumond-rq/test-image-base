
# Importer l'image
az acr import --name acrtestog --source mcr.microsoft.com/dotnet/aspnet:3.1.22-alpine3.14 --image aspnet:3.1.22-alpine3.14

# Créer tâche de build
az acr task create --name aspnet-base-rq -r acrtestog -c https://github.com/ogaumond-rq/test-image-base.git -f acr-task.yaml --set REGISTRY_FROM_URL=mcr.microsoft.com/dotnet