using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CK.Setup;
using CK.SqlServer.Setup;

namespace Bug_CKSetup_netcoreapp21_SCD_linux.Database
{
    [SqlPackage(Schema = "CK", ResourcePath = "Res")]
    [Versions("1.0.0")]
    public abstract class Package : SqlPackage
    {
        void StObjConstruct(
            CK.DB.Actor.Package actorPackage
        )
        {
        }
    }
}
