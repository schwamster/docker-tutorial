FROM microsoft/aspnetcore
WORKDIR /app
COPY ./out .

ENTRYPOINT ["dotnet", "docker-tutorial.dll"]