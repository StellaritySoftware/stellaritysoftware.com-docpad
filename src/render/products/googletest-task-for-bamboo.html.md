---
layout: product
productName: GoogleTest Task
hostName: Bamboo
summary: Use Google C++ Testing Framework with Bamboo
productLogo: logo.png
productBanner: banner.png
docLink: https://bitbucket.org/stellaritysoftware/googletest-task/wiki/Home
bugLink: https://bitbucket.org/stellaritysoftware/googletest-task/issues/new
marketplaceLink: https://marketplace.atlassian.com/plugins/com.stellarity.bamboo.googletest-task/overview
askLink: https://answers.atlassian.com/questions/ask?topics=addon-com.stellarity.bamboo.googletest-task
screenshots: [
    {src: highlight1-cropped.png, title: Parallel test execution allows to get results faster and fully utilize available hardware resources}
    {src: highlight2-cropped.png, title: It is easy to define a bunch of tests using simple Ant patterns}
    {src: highlight3-cropped.png, title: "Log parser supports value and type parameters for parametrized tests, also it properly handles disabled tests"}
    {src: screenshot1.png, title: Sample test results}
    ]
---

This addon provides integration of [Google C++ Testing Framework](https://github.com/google/googletest) with [Atlassian Bamboo](https://www.atlassian.com/software/bamboo).

##### Features
* Run tests faster using parallel execution
* Define tests by [Ant Style Pattern](https://ant.apache.org/manual/dirtasks.html#patterns)
* One task for a test runner and a log parser
* Show parameters of parametrized tests
* Parse-only mode
* Customize tests with environment variables
* Avoid test name collision
* Configurable test execution timeout

##### Compatibility
* Version 1.1.x => Bamboo 8.0-9.x (DC only)
* Version 1.0.x => Bamboo 5.0-9.6