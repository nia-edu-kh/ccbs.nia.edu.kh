# #-------- class start
liveSite = ()->
  Backbone = Pylon.Backbone
  _=Pylon.Underscore
  T=Pylon.Halvalla
  KhmerData = Backbone.Model.extend 
    audioData: ()->
      "draft/khmer/consonants/audio/c#{@i+1}.mp3"
    glyph: ()->
      String.fromCharCode(0x1780+@i)+String.fromCharCode(0x17b0+@i)
    initialize: (@i)->

  allData = (new KhmerData i for i in [0..30])

  played=false
  state = 'initial'
  key=0
  dashes = "000000000000000000000000000000000000000000000".split('')
  flasher = (where='#faboo')->
    played=false
    khmerChar=allData.filter (a,seq)->
      a.selected= seq == key
      return a  if key+1 >= seq >= key-1
    dashes[key] = String.fromCharCode ( dashes[key].charCodeAt(0)+1)
    $(where).html T.render ->
      T.div ".card",->
        T.div ".card-block",->
          T.div dashes.join('')
          T.div ".media",->
            T.tag "figure",".d-flex.mr-3",->
              T.div ".media-body",->
                audioSample=null
                T.div style: "line-height:18rem;font-size:15rem",()->
                  for kC in khmerChar
                    audioSample = kC.audioData() if kC.selected
                    T.span  onclick:"Pylon.trigger('playSample','#sample#{kC.i}')",style: "color:#{if  kC.selected then "tan" else "black"}",()->
                      T.raw kC.glyph()
                      T.tag "audio","#sample#{kC.i}", src:kC.audioData(),"broken browser"
                  return
                T.tag "audio","#sample", src:audioSample,"broken browser"
                T.button ".primary",onclick:"Pylon.trigger('playSample')","Play Me"
    setTimeout (()-> $('#sample')[0].play()) ,250

  Pylon.on "selectNew",( i=Math.floor 30*Math.random())->
    key=i
    if state == 'initial'
      flasher()
      return
    Pylon.trigger 'playSample' unless played
    flasher()
    return

  Pylon.on "playSample" ,(sample='#sample')->
    debugger
    $(sample)[0].play()
    return

  Pylon.on "reload" ,(sample='#sample')->
    debugger
    $(sample)[0].play() unless played
    setTimeout flasher,800
  Pylon.on "new-flash", flasher

renderer = class  index extends cambodiancenterforbamboostudiestemplate
  #
  # section storyHeadMatter
  #
  storyHeadMatter: => # override in story
    return
  # 
  # section html
  # 
  # 
  # section cambodiancenterforbamboostudies_body
  # 
  # 
  # section cover
  # 
  # 
  # section footer
  # 
  # 
  # section sidebarTop
  # 
  # 
  # section sidebar
  # 
  # 
  # section storybar
  # 
  # 
  # section bloviation
  # 
  makeLive = ()->
    T.coffeescript liveSite
    T.coffeescript ()->
      $('body').on 'keypress', (key)->
        debugger
        Pylon.trigger 'selectNew',key.originalEvent.key
    return

  bloviation: =>
    makeLive()
    T.div "#bloviation.contents", =>
      T.button onclick:"Pylon.trigger('selectNew', Math.floor(30*Math.random()))" ,"New Card"
      T.h2 "name that letter"
      T.div "#faboo"
  # 
  # section sidecar
  # 
  # 
  # section fb_status
  # 
  # 
  # section logoimg
  # 
  allMeta = [[["name","author"],["content","James A. Hinds: Bubba Baba Bamboo Jim"]],[["http-equiv","Content-Type"],["content","text/html"],["charset","UTF-8"]],[["name","viewport"],["content","width=device-width, initial-scale=1"]],[["name","description"],["content","All that is known about Bamboo Snow"]],[["name","keywords"],["content","bamboo snow,dinoderus minutus,absorbant,dessicant,organic,bamboo byproduct,bamboo"]],[["property","fb:admins"],["content","263369930812986"]],[["name","msapplication-TileColor"],["content","#ffffff"]],[["name","msapplication-TileImage"],["content","/assets/icons/ms-icon-144x144.png"]],[["name","theme-color"],["content","#ffffff"]]]
  htmlTitle = "Bamboo Snow: The Amazing Substance"
#-------- class end
#
#
db = {} unless db
# ------- db start

#
db[id="cambodiancenterforbamboostudies/khmer/consonants"] =
  title: "consonants"
  slug: "consonants"
  category: "khmer"
  site: "cambodiancenterforbamboostudies"
  accepted: false
  index: false
  sourcePath: ""
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2020-01-21T00:06:42.740Z"
  lastEdited: "2020-01-21T00:06:42.741Z"
  published: "2020-01-21T00:06:42.741Z"
  embargo: "2020-01-21T00:06:42.741Z"
  captureDate: "2020-01-21T00:06:42.741Z"
  TimeStamp: 1579565202741
  debug: ""
  id: "cambodiancenterforbamboostudies/khmer/consonants"
  name: "consonants"
#
#end of story
