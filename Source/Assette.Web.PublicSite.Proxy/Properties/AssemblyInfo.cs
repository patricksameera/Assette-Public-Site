﻿using System.EnterpriseServices;
using System.Reflection;
using System.Runtime.InteropServices;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
[assembly: AssemblyTitle("Assette.Web.PublicSite.Proxy")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("Microsoft")]
[assembly: AssemblyProduct("Assette.Web.PublicSite.Proxy")]
[assembly: AssemblyCopyright("Copyright © Microsoft 2013")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]

// Setting ComVisible to false makes the types in this assembly not visible 
// to COM components.  If you need to access a type in this assembly from 
// COM, set the ComVisible attribute to true on that type.
[assembly: ComVisible(true)]
// Compile a Debug or Release flag into the assembly.
#if DEBUG
[assembly: AssemblyDescription("Debug")]
#else
[assembly: AssemblyDescription("Release")]
#endif

[assembly: ApplicationActivation(ActivationOption.Server)]

// The following GUID is for the ID of the typelib if this project is exposed to COM
[assembly: Guid("9B8C2FA1-D40C-496C-9CF7-C79E52F92057")]

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Build and Revision Numbers 
// by using the '*' as shown below:
// [assembly: AssemblyVersion("1.0.*")]
[assembly: AssemblyVersion("1.0.0.0")]
[assembly: AssemblyFileVersion("1.0.0.0")]
