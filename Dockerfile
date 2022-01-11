ARG REGISTRY_FROM_URL=
FROM ${REGISTRY_FROM_URL}aspnet:3.1.22-alpine3.14

EXPOSE 8080
ENV ASPNETCORE_URLS=http://*:8080

RUN addgroup --group dotnetgrp --gid 2000 \
&& adduser \    
    --uid 1000 \
    --gid 2000 \
    "dotnetusr" 

USER dotnetusr:dotnetgrp 