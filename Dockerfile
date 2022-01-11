ARG REGISTRY_FROM_URL=
FROM ${REGISTRY_FROM_URL}aspnet:3.1.22-alpine3.14

EXPOSE 8080
ENV ASPNETCORE_URLS=http://*:8080

RUN addgroup --gid 2000 dotnetgrp  \
&& adduser --disabled-password \    
    --uid 1000 \
    -G dotnetgrp \
    "dotnetusr" 

USER dotnetusr:dotnetgrp 