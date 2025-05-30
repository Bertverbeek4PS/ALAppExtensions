// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Finance.VAT.Reporting;

using System.Security.AccessControl;

permissionsetextension 10547 "D365 TEAM MEMBER - VAT Reporting" extends "D365 TEAM MEMBER"
{
    IncludedPermissionSets = "VAT Reporting - Objects";
}