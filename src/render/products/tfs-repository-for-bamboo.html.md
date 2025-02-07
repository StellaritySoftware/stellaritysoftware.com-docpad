---
layout: product
productName: TFS Repository
hostName: Bamboo
summary: Need Bamboo builds from TFS repositories - with this plugin you can do it
productLogo: logo.png
productBanner: banner.png
docLink: https://bitbucket.org/stellaritysoftware/tfs-repository-plugin/wiki/Home
bugLink: https://bitbucket.org/stellaritysoftware/tfs-repository-plugin/issues/new
marketplaceLink: https://marketplace.atlassian.com/plugins/com.stellarity.bamboo.tfs-repository-plugin/overview
askLink: https://answers.atlassian.com/questions/ask?topics=addon-com.stellarity.bamboo.tfs-repository-plu
screenshots: [
    {src: highlight1-cropped.png, title: TFS source repository}
    {src: highlight2-cropped.png, title: Works with cloud-based TFS services}
    {src: highlight3-cropped.png, title: "Windows, Linux, FreeBSD and Mac OSX are supported"}
    {src: screenshot1.jpg, title: TFS code changes}
    {src: screenshot2.jpg, title: TFS build summary}
    {src: screenshot3.jpg, title: TFS metadata}
    ]
---

This plugin allows [Atlassian Bamboo](https://www.atlassian.com/software/bamboo) to use [TFS](https://en.wikipedia.org/wiki/Team_Foundation_Server) as a source repository for builds. Now it is easier to mix Microsoft and Atlassian solutions or plan migration.

##### Features
* Works out of the box
* Supports remote agents with no additional configuration
* Can be run on Windows, Linux and macOS
* Supports TFS 2008-2018 and Azure DevOps 2019-2023
* Works with cloud-based TFS services
* Supports deployment plans
* Supports Bamboo Variables in repository path and URL
* Regexp to include/exclude files that should be checked out
* Checkouts from a label or a specific revision
* TFS branches discovery
* Supports web repository viewer (provides links to commits and diffs)

##### Compatibility
* Version 1.2.x => Bamboo 8.0-10.x (DC only)
* Version 1.1.x => Bamboo 5.0-9.5
* Version 1.0.x => Bamboo 4.2-4.4.8

##### Note
Note: The app type is a repository and thus it requires a Bamboo restart to install/upgrade/uninstall the app!