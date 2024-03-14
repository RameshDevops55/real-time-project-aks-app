# Use the appropriate base image for .NET Core runtime
FROM mcr.microsoft.com/dotnet/runtime:6.0 AS base
WORKDIR /app

# Copy the published artifacts (including .dll files) into the container
COPY /publish .

# Specify the command to run when the container starts
ENTRYPOINT ["dotnet", "dotnet-demoapp.dll"]
