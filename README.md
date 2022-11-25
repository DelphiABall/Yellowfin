# Yellowfin

Yellowfin provides a ready-to-use solution that adds powerful BI capabilities to business, bringing data alive for proactive action by end users.
Learn more about Yellowfin online at [www.yellowfinbi.com](https://www.yellowfinbi.com/) and [online walkthrough videos](https://www.yellowfinbi.com/campaign/demo-video-walkthrough)

**Before using this sample Please check the prerequisite below**

## Why embed Yellowfin?
Yellowfin helps solve data complexity with automation, data storytelling, collaboration and beautiful action-based dashboards that are simple to use, allowing more people to see, understand and do more with their data.
Developers embed Yellowfin into new and existing applications to
* Rapidly add modern, leading BI capability
* Add Web/Remote access
* Reduce the need to develop these systems yourself
* Benefit from a global community of BI experts feeding into new features that your product also benefit from
* Create tigher integration to existing customers businesses

End users love the addition of Yellowfin as it simplifies the process of creating actionable data that don't need developers anytime they need to create a new report.

As Yellowfin can work across multiple data sources, it also adds a rich reporting layer, without having to add in additional data sources into your existing application.
Yellowfin has an OEM program for developers, enabling the full power of Yellowfin to become available under special licensing.

## Delphi Source Code Example
The purpose of the samples is to help developers  to kickstart their integration with Yellowfin, and provide "ready to copy" backend logic that wraps up key Yellowfin API calls.
This repo includes both a VCL (Windows) and FMX (cross-platform) examples, both built on the same code, providing similar functionality.
The samples have examples to:
* Fetch a selected list of reports (Either All, Your Reports, Your Favourite or, Draft)
* View the report metadata (fields, data types, filter options)
* View the report data
* Download a HTML, PDF, or XLS version of the report

Additionally, *TYFUserMethods* has class function methods to
* Create Users
* Set/reset Passwords
* Test the default values entered (ie Test a login if using the YF User Accounts)

### Prerequisite
This sample uses TWebBrowser. To enable this to work correctly on Windows, you need to have the WebView2Loader.dll in the application folder / on the path.
When building your application for the first time, it is important to ensure this file is present at runtime.
If the file is not available, please copy if from the Embarcadero install (e.g. C:\Program Files (x86)\Embarcadero\Studio\22.0\Redist\ and then copy with the one from Win32 or Win64 depending on the platform)

### Running the sample.
Unit *YF.SOAP.Defaults* contains a singleton instance call for *TYFDefaults*.
The initialisation of this unit sets up this object with the Yellowfin trial default details.

You will need a test instance of yellowfin, to request a trial license, please visit the online [Yellowfin Trial Request](https://www.yellowfinbi.com/campaign/free-trial-try-yellowfin-on-your-own-data-today)
