###
styling: "Lookand Feel"
###
#global pylon

T = Pylon.Halvalla

$ ->
  try
    FontFaceObserver = require 'font-face-observer'

    observeVidaLoca = new FontFaceObserver "vidaloka",
      weight: 400
    observeVidaLoca.check(null, 10000)
      .then(
        ()->  document.documentElement.className += " vidaloka-loaded"
        ()->  console.warn "Vida Loka Font Problem?!"
        )
    observeVastShadow = new FontFaceObserver "vastshadow",
      weight: 400
    observeVastShadow.check(null, 10000)
      .then(
        ()->  document.documentElement.className += " vastshadow-loaded"
        ()->  console.warn "vastshadow Font Problem?!"
        )

  catch badDog
    console.log "Font Loader Error-- OK for site-master build phase"
    console.log badDog
  finally
    console.log "Proceeding after font load"  

module.exports = class BamboosnowLook
    
  widgetWrap: ->
      {attrs,contents} = T.normalizeArgs arguments
      id = attrs.id
      delete attrs.id
      title = attrs.title
      delete attrs.title
      #attrs.bg = '#c5a31788'
      T.div '.widget-wrap.bg-lighten-4.p-2.my-1', attrs , ->
        T.h3 '.widget-title', f:3, color: 'black', bg: '#c5a317', title unless !title
        T.div '.btn-group.btn-group-vertical.widget.my-2.p-2', ->contents

###
Pylon.on "newt-flash", (where)->
  i=Math.floor 30*Math.random()
  console.log i, "draft/khmer/consonants/audio/c#{i+1}.mp3"
  $(where).html T.render ->
    khmerChar = String.fromCharCode(0x1780+i)
    T.div ".card",->
      T.div style: "line-height:18rem;font-size:15rem", khmerChar
      T.div ".card-block",->
        T.div ".media",->
          T.tag "figure",".d-flex.mr-3",->
            T.div ".media-body",->
              T.tag "audio", controls:"controls",src: "draft/khmer/consonants/audio/c#{i+1}.mp3","broken browser"
###
