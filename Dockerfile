FROM microsoft/aspnetcore:1.0.1

MAINTAINER codeyu

# Set Docker remote API address
ENV DOCKER_REMOTE_API="unix:///var/run/docker.sock"

# Set ASP.NET Core environment variables
ENV ASPNETCORE_URLS="http://*:6000"
ENV ASPNETCORE_ENVIRONMENT="Production"


# Copy files to app directory
COPY src/SportsStore/bin/Debug/netcoreapp1.0/publish /app

# Set working directory
WORKDIR /app

# Open port
EXPOSE 6000/tcp


# Run
ENTRYPOINT ["dotnet", "SportsStore.dll"]