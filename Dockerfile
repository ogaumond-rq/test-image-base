ARG REGISTRY_FROM_URL=mcr.microsoft.com/dotnet/
FROM ${REGISTRY_FROM_URL}aspnet:3.1.22-alpine3.14

EXPOSE 8080
ENV ASPNETCORE_URLS=http://*:8080
