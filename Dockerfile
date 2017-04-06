FROM microsoft/aspnetcore
WORKDIR /app
COPY ./publish .
ENTRYPOINT ["dotnet", "docker-tutorial.dll"]