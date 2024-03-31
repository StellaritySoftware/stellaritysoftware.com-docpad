---
layout: product
productName: Boost::Test Task
hostName: Bamboo
summary: Use Boost::Test C++ Framework with Bamboo
productLogo: logo.png
productBanner: banner.png
docLink: https://bitbucket.org/stellaritysoftware/boost-test-task/wiki/Home
bugLink: https://bitbucket.org/stellaritysoftware/boost-test-task/issues/new
marketplaceLink: https://marketplace.atlassian.com/plugins/com.stellarity.bamboo.boosttest-task/overview
askLink: https://answers.atlassian.com/questions/ask?topics=addon-com.stellarity.bamboo.boosttest-task
screenshots: [
    {src: highlight1-cropped.png, title: Tests are executed in parallel}
    {src: highlight2-cropped.png, title: Task parameters}
    {src: highlight3-cropped.png, title: Sample test results}
    ]
---

[Boost](http://www.boost.org) is a large collection of free peer-reviewed portable C++ source libraries. There are many useful libraries. One of those libraries is [Boost::Test](http://www.boost.org/doc/libs/release/libs/test), a library for writing and organizing C++ unit tests. This addon (plugin) provides integration of [Boost::Test C++ Framework](http://www.boost.org/doc/libs/release/libs/test) with [Atlassian Bamboo](http://www.atlassian.com/software/bamboo).

##### Features
* Run tests faster using parallel execution
* Define tests by [Ant Style Pattern](https://ant.apache.org/manual/dirtasks.html#patterns)
* One task for a test runner and a log parser
* Parse-only mode
* Customize tests with environment variables
* Avoid test name collision
* Configurable test execution timeout

##### Compatibility
* Version 1.1.x => Bamboo 8.0-9.x (DC only)
* Version 1.0.x => Bamboo 5.0-9.6