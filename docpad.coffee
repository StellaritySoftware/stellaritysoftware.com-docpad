# DocPad Configuration File
# http://docpad.org/docs/config
# https://developers.google.com/closure/templates/docs/javascript_usage#compilation

# Define the DocPad Configuration
docpadConfig = {
	# ...
    templateData:
        getToc: (html) -> getToc html
        getProtectedEmailLink: (email) -> getProtectedEmailLink email
        getEmailProtectionCode: -> getEmailProtectionCode
        getPageTitle: -> getPageTitle @document
        getBreadcrumbs: -> getBreadcrumbs this
        getPageName: -> getPageName @document
        getImgPath: (document, img) -> getImgPath document, img
    collections:
        products: -> @getCollection("html").findAll({layout: "product"}, [productName:1])

###
    plugins:
        grunt:
          writeAfter: false
          generateAfter: ["cssmin", "uglify"]
###          
}

# Export the DocPad Configuration
module.exports = docpadConfig

getToc = (html) ->
    tokens = html.match /<h\d.*?>.*?<\/h\d>/ig
    for token in tokens
        level: (token.match /<h(\d)/i)?[1]
        id: (token.match /id=\"(.*?)\"/i)?[1]
        text: (token.match /<h\d.*?>(.*?)<\/h\d>/i)?[1]

getProtectedEmailLink = (email) ->
    email = email.replace /@/, "#"
    "mailto:sp@@@#{email}sp@@@"

getEmailProtectionCode = "href=href.replace(/sp@@@/g,'').replace(/#/, '@');"

getPageTitle = (document) ->
    return document.title if document.title?
    return "#{getPageName(document)} | Stellarity Software" if document.layout is "product"
    "Stellarity Software | Addons for JIRA, Bamboo and other tools"

getBreadcrumbs = (that) ->
    document = that.document
    pages = that.getCollection("html")
    documentUrl = document.url.replace ".#{document.outExtension}", ""
    documentUrl = documentUrl.concat "/"
    urls = (documentUrl.slice 0,i for i in [0...documentUrl.length] when (documentUrl.charAt i).toString() is "/")
    urls[0] = "/index"
    urls = ("#{url}.#{document.outExtension}" for url in urls)
    for url in urls
        url: url
        name: getPageName pages.findOne({url: url}).toJSON()

getPageName = (document) ->
    return document.pageName if document.pageName?
    return "#{document.productName} for #{document.hostName}" if document.productName?
    return uppercaseFirstLetter document.basename

uppercaseFirstLetter = (str) ->
    str.charAt(0).toUpperCase() + str.slice(1)

makeSlug = (str) ->
    str.toLowerCase().replace(/[\s,:]+/g, '-')

getImgPath = (document, img) ->
    slug = makeSlug document.productName
    "/img/products/#{slug}/#{img}"