FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
# Copiar archivos de proyecto y restaurar dependencias
COPY ["BibliotecaVirtual/BibliotecaVirtual.csproj", "BibliotecaVirtual/"]
COPY ["BibliotecaVirtual.Client/BibliotecaVirtual.Client.csproj", "BibliotecaVirtual.Client/"]
COPY ["BibliotecaVirtual.Shared/BibliotecaVirtual.Shared.csproj", "BibliotecaVirtual.Shared/"]
RUN dotnet restore "BibliotecaVirtual/BibliotecaVirtual.csproj"

# Copiar todo el código y compilar
COPY . .
WORKDIR "/src/BibliotecaVirtual"
RUN dotnet build "BibliotecaVirtual.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "BibliotecaVirtual.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "BibliotecaVirtual.dll"]