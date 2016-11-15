FROM microsoft/dotnet:1.0.1-core

MAINTAINER codeyu

COPY ./src/SportsStore /app
WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
RUN ["dotnet", "publish"]

# Set ASP.NET Core environment variables
ENV ASPNETCORE_URLS="http://*:6000"
ENV ASPNETCORE_ENVIRONMENT="Production"


# Set working directory
WORKDIR /app/bin/Debug/netcoreapp1.0/publish

# Open port
EXPOSE 6000/tcp


# Run
ENTRYPOINT ["dotnet", "SportsStore.dll"]