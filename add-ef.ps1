$templateSrc = "src"
$templateTests = "tests"
src/Skoruba.IdentityServer4.Admin = "src/Skoruba.IdentityServer4.Admin"

# Add information about adding the ef migrations
"Adding ef migrations"; 
"This process may take a few minutes, please wait...";

Data/Migrations = "Data/Migrations"

# Add dotnet ef migrations
dotnet.exe ef migrations add AspNetIdentityDbInit -c AdminIdentityDbContext -o Data/Migrations/Identity -s src/Skoruba.IdentityServer4.Admin -p src/Skoruba.IdentityServer4.Admin
dotnet.exe ef migrations add LoggingDbInit -c AdminLogDbContext -o Data/Migrations/Logging -s src/Skoruba.IdentityServer4.Admin -p src/Skoruba.IdentityServer4.Admin
dotnet.exe ef migrations add IdentityServerConfigurationDbInit -c IdentityServerConfigurationDbContext -o Data/Migrations/IdentityServerConfiguration -s src/Skoruba.IdentityServer4.Admin -p src/Skoruba.IdentityServer4.Admin
dotnet.exe ef migrations add IdentityServerPersistedGrantsDbInit -c IdentityServerPersistedGrantDbContext -o Data/Migrations/IdentityServerGrants -s src/Skoruba.IdentityServer4.Admin -p src/Skoruba.IdentityServer4.Admin

Add-Migration AspNetIdentityDbInit -context AdminIdentityDbContext -output Data/Migrations/Identity
Add-Migration AspNetMultiTenantIdentityDbInit -context MultiTenantUserIdentityDbContext -output Data/Migrations/Identity
Add-Migration LoggingDbInit -context AdminLogDbContext -output Data/Migrations/Logging
Add-Migration IdentityServerConfigurationDbInit -context IdentityServerConfigurationDbContext -output Data/Migrations/IdentityServerConfiguration
Add-Migration IdentityServerPersistedGrantsDbInit -context IdentityServerPersistedGrantDbContext -output Data/Migrations/IdentityServerGrants
Update-Database -context MultiTenantUserIdentityDbContext
Update-Database -context AdminIdentityDbContext
Update-Database -context AdminLogDbContext
Update-Database -context IdentityServerConfigurationDbContext
Update-Database -context IdentityServerPersistedGrantDbContext