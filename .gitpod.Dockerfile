# FROM gitpod/workspace-full:latest
FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base
FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build

USER gitpod
#.NET installed via .gitpod.yml task until the following issue is fixed: https://github.com/gitpod-io/gitpod/issues/5090
ENV DOTNET_VERSION=5.0
ENV DOTNET_ROOT=/workspace/.dotnet
ENV PATH=$PATH:$DOTNET_ROOT
