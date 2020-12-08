# #-------- class start
renderer = class  index extends bamboosnowtemplate
  # 
  # section html
  # 
  # 
  # section bamboosnow_body
  # 
  # 
  # section cover
  # 
  cover: =>
    T.div "#cover", style: "background-image:url(assets/images/cover.jpg);"
  # 
  # section footer
  # 
  # 
  # section sidebarTop
  # 
  sidebarTop: =>
    T.div "#sidebarTop.o-grid__cell.o-grid__cell--width-25.order-0.bg-darken-2", style: "min-width:33rem", =>
      @sidebar()
  # 
  # section sidebar
  # 
  # 
  # section storybar
  # 
  storybar: =>
    T.div "#storybar.o-grid__cell.order-1.bg-lighten-4", =>
      T.h1 => T.raw "the Bamboo Snow Story"
      T.hr()
      @bloviation()
  # 
  # section bloviation
  # 
  bloviation: =>
    T.div "#bloviation.contents", "dangerously-set-inner-h-t-m-l": "[object Object]", =>
      T.p =>
        T.raw "Sorry, that does not exist...   Yet."
        T.a href: "/announcement/two-years-with-bamboo-snow.html", => T.raw " but check out an incredible life with Bamboo Snow."
  # 
  # section sidecar
  # 
  # 
  # section fb_status
  # 
  # 
  # section logoimg
  # 
  logoimg: =>
    T.img "#logoimg.align-middle", src: "assets/images/logo.svg", width: "150px"
  allMeta = [[["name","author"],["content","James A. Hinds: Bubba Baba Bamboo Jim"]],[["http-equiv","Content-Type"],["content","text/html"],["charset","UTF-8"]],[["name","viewport"],["content","width=device-width, initial-scale=1"]],[["name","description"],["content","All that is known about Bamboo Snow"]],[["name","keywords"],["content","bamboo snow,dinoderus minutus,absorbant,dessicant,organic,bamboo byproduct,bamboo"]],[["property","fb:admins"],["content","263369930812986"]],[["name","msapplication-TileColor"],["content","#ffffff"]],[["name","msapplication-TileImage"],["content","/assets/icons/ms-icon-144x144.png"]],[["name","theme-color"],["content","#ffffff"]]]
  htmlTitle = "Bamboo Snow: The Amazing Substance"
#-------- class end
#
#
db = {} unless db
#


db[id="bamboosnowerror404"] =
  title: "404"
  slug: "404"
  category: "error"
  site: "bamboosnow"
  accepted: true
  index: false
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2018-03-05T04:46:34.618Z"
  lastEdited: "2018-03-05T04:46:34.621Z"
  published: "2018-03-05T04:46:34.621Z"
  embargo: "2018-03-05T04:46:34.621Z"
  captureDate: "2018-03-05T04:46:34.621Z"
  TimeStamp: 1520225194621
  debug: ""
  author: "Copyright 2010-2018 James A. Hinds: Bubba Baba Bamboo Jim"
  id: "bamboosnowerror404"
  name: "404"
#



db[id="bamboosnow/error/404"] =
  title: "404"
  slug: "404"
  category: "error"
  site: "bamboosnow"
  accepted: true
  index: false
  headlines: []
  tags: []
  snippets: "{\"first name\":\"first name\"}"
  memberOf: []
  created: "2018-03-05T04:46:34.618Z"
  lastEdited: "2018-03-05T04:46:34.621Z"
  published: "2018-03-05T04:46:34.621Z"
  embargo: "2018-03-05T04:46:34.621Z"
  captureDate: "2018-03-05T04:46:34.621Z"
  TimeStamp: 1520225194621
  debug: ""
  author: "Copyright 2010-2018 James A. Hinds: Bubba Baba Bamboo Jim"
  id: "bamboosnow/error/404"
  name: "404"
#