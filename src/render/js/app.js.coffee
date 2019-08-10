$(document).foundation()

$(".image-link").magnificPopup {
    #mainClass: "mfp-fade"
    #removalDelay: 300
    type: "image"
}

$(".gallery").each ->
    items = for item in $(this).find(".gallery-slides a")
                src: $(item).attr "href"
                title: $(item).attr "title"
                type: "image"

    $(this).find(".gallery-link").magnificPopup {
        mainClass: "mfp-fade"
        removalDelay: 300
        items: items
        gallery: {
          enabled: true
        }
        callbacks:
            open: ->
                #- overwrite default prev + next function. Add timeout for css3 crossfade animation
                $.magnificPopup.instance.next = ->
                    self = this
                    self.wrap.removeClass "mfp-image-loaded"
                    setTimeout (-> $.magnificPopup.proto.next.call self), 150
                $.magnificPopup.instance.prev = ->
                    self = this
                    self.wrap.removeClass "mfp-image-loaded"
                    setTimeout (-> $.magnificPopup.proto.prev.call self), 150
            imageLoadComplete: ->
                self = this
                setTimeout (-> self.wrap.addClass "mfp-image-loaded"), 30
    }