#if not CLEANSCHEMA26
// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Warehousing;

table 4762 "Whse. Demo Account"
{
    TableType = Temporary;
    DataClassification = CustomerContent;
    ObsoleteReason = 'This table will be replaced by "Contoso GL Account".';
    ObsoleteState = Removed;
    ObsoleteTag = '26.0';
    ReplicateData = false;

    fields
    {
        field(1; "Account Key"; Code[20]) { }
        field(2; "Account Value"; Code[20]) { }
        field(3; "Account Description"; text[50]) { }

    }

    keys
    {
        key(Key1; "Account Key")
        {
            Clustered = true;
        }
    }
}
#endif
