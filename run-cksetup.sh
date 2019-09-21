# Download CKSetup
CKSETUP_ZIP=$(mktemp)
CKSETUP_DIR=$(mktemp -d -t cksetup-zip-XXXXX)
CKSETUP_URL="https://www.nuget.org/api/v2/package/CKSetup/9.3.0"
CKSETUP="$CKSETUP_DIR/tools/netcoreapp2.1/any/CKSetup.dll"

dotnet publish Bug_CKSetup_netcoreapp21_SCD_linux -r win10-x64 -o publish-win10-x64
dotnet publish Bug_CKSetup_netcoreapp21_SCD_linux -r linux-x64 -o publish-linux-x64

wget -O "$CKSETUP_ZIP" "$CKSETUP_URL"
unzip "$CKSETUP_ZIP" -d "$CKSETUP_DIR"
dotnet "$CKSETUP" run -v Debug -l cksetup.log cksetup.xml
