FROM microsoft/aspnetcore:1.1.2
WORKDIR /app
COPY ./out .

ENTRYPOINT ["dotnet", "docker-tutorial.dll"]
