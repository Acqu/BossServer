# Use the official ASP.NET Core runtime image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app

# Copy published output from the repository root
COPY . .

# Expose port 80
EXPOSE 80

# Run the application
ENTRYPOINT ["dotnet", "BossServer.dll"]
