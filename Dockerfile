# Use the official ASP.NET Core runtime image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app

# Copy published output from local folder
COPY ./publish .

# Expose port (optional, if you want to specify)
EXPOSE 80

# Run the application
ENTRYPOINT ["dotnet", "BossServer.dll"]
