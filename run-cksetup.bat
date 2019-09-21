dotnet publish Bug_CKSetup_netcoreapp21_SCD_linux -r win10-x64 -o publish-win10-x64
dotnet publish Bug_CKSetup_netcoreapp21_SCD_linux -r linux-x64 -o publish-linux-x64

cksetup run -v Debug -l cksetup.log cksetup.win10.xml
