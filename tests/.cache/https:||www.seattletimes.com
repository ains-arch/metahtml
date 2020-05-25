<!DOCTYPE html>
<!--[if lt IE 10]>      <html class="no-js lt-ie10 no-support" lang="en-US" itemscope > <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en-US" itemscope
  >
  <!--<![endif]-->

  <head>
          <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png?v=7kovnr5xE4">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png?v=7kovnr5xE4">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png?v=7kovnr5xE4">
  <link rel="manifest" href="/site.webmanifest?v=7kovnr5xE4">
  <link rel="mask-icon" href="/safari-pinned-tab.svg?v=7kovnr5xE4" color="#5bbad5">
  <link rel="shortcut icon" href="/favicon.ico?v=7kovnr5xE4">
  <meta name="msapplication-TileColor" content="#2b5797">
  <meta name="theme-color" content="#ffffff">

  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  
    <script type="application/ld+json">
    {
      "@context" : "https://schema.org",
      "@type"    : "Organization",
      "url"      : "https://www.seattletimes.com/",
      "logo"     : "https://www.seattletimes.com/wp-content/themes/st_refresh/img/st-meta-facebook.png",

      "sameAs" : [
        "https://www.facebook.com/seattletimes/",
        "https://www.twitter.com/seattletimes/",
        "https://www.instagram.com/seattletimes/",
        "https://www.youtube.com/user/seattletimesdotcom",
        "https://www.linkedin.com/company/the-seattle-times",
        "https://www.pinterest.com/seattletimes/"
      ],

      "contactPoint" : [{
        "@type" : "ContactPoint",
        "telephone" : "+1-888-624-7323",
        "contactType" : "customer service"
      }]
    }
    </script>

  
    <meta name="source" content="WaPo" />
  
  
  
  <title>The Seattle Times | Local news, sports, business, politics, entertainment, travel, restaurants and opinion for Seattle and the Pacific Northwest.</title>

  <meta name="robots" content="noarchive">
  <link rel="canonical" href="https://www.seattletimes.com/" />
  
  
  <meta property="og:image"        content="https://www.seattletimes.com/wp-content/themes/st_refresh/img/st-meta-facebook.png" />
  <meta property="og:image:height" content="200" />
  <meta property="og:image:width"  content="200" />

  <meta name="twitter:card"  content="summary" />
  <meta name="twitter:site"  content="@seattletimes" />
  <meta name="twitter:image" content="https://www.seattletimes.com/wp-content/themes/st_refresh/img/st-meta-twitter.png" />

  <meta name="description" content="Local news, sports, business, politics, entertainment, travel, restaurants and opinion for Seattle and the Pacific Northwest." />

<meta property="fb:app_id" content="2618768518177469"/><meta property="fb:pages" content="38472826214" /><meta name="msvalidate.01" content="A8C10DCF8621D573190E61A9BB5E1782" />
  <script type='text/javascript'>
    // Chartbeat
    // Sets a start time to compare to an end time in the chartbeat.js
    // http://support.chartbeat.com/docs/#code
    var _sf_startpt=(new Date()).getTime()
  </script>
  <style id='chartbeat-flicker-control-style' type='text/css'>
      /* Will be removed by ChartBeat's async flicker control below */
      body { visibility: hidden !important; }
  </style>
  <script>
    // ChartBeat async flicker
    // http://support.chartbeat.com/docs/headlinetesting.html#asynchronousflicker
    var _sf_async_config = _sf_async_config || {};

    window.SEATIMESCO = window.SEATIMESCO || {};

    // turn on seatimesco domain to segment by actual domain instead of grouping under df
    if ( window.SEATIMESCO.contentInfo ) {
      if ( window.SEATIMESCO.contentInfo.domain =='seattletimes.com' ||  window.SEATIMESCO.contentInfo.domain =='www.seattletimes.com' ) {
        _sf_async_config.domain = 'seattletimes.com'
      } else {
          _sf_async_config.domain = window.SEATIMESCO.contentInfo.domain !== undefined ? window.SEATIMESCO.contentInfo.domain : null;
      }
    } else {
      _sf_async_config.domain = null;
    }

    /** CONFIGURATION START **/
    _sf_async_config.uid = 22565;
    _sf_async_config.useCanonical = true;
    /** CONFIGURATION END **/
    // Set a timeout event for 1 second that will remove the body hiding
    // tag from the document if it has not already been removed. This
    // gives the Headline Tester script a total of 1 second to load and run to limit
    // the potential for flicker of headlines.
    // The one second time limit can be adjusted to client preferences.
    window.setTimeout(function() {
        var hider = document.getElementById('chartbeat-flicker-control-style');
        if (hider) {
            hider.parentNode.removeChild(hider);
        }
    }, 1000);
  </script>
  <script async src = "//static.chartbeat.com/js/chartbeat_mab.js"></script>
  
  
  <script>
    // Header scripts that can't otherwise be placed lower in the page. Keep as minimal as possible.

    // Sets 'js' on html element and removes 'no-js' if present (here to prevent flashing)
    (function(){
    document.documentElement.className = document.documentElement.className.replace(/(^|\s)no-js(\s|$)/, '$1$2') + (' js ');
    })();

    
    // Load TypeKit webfonts
    (function(d) {
    var config = {
      kitId: 'lty1dar',
      scriptTimeout: 3000,
      async: true,
      active: function() {
        if (window.events) {
          window.events.trigger('fonts:loaded');
        }
      }
    },
    h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='//use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
    })(document);

  </script>

  
<!--Plugin WP Missed Schedule Active - Secured with Genuine Authenticity KeyTag-->

<!-- This site is patched against a big problem not solved since WordPress 2.5 -->

    <script>
      window.SEATIMESCO = window.SEATIMESCO || {};
      window.SEATIMESCO.ads = window.SEATIMESCO.ads || {};
      window.SEATIMESCO.ads.disabled = false;
      window.SEATIMESCO.ads.dfpEnv = 'prod';
      window.SEATIMESCO.ads.partners = {"amazon":true,"Lotame":true};
      window.SEATIMESCO.ads.adUnitPath = '/81279359/seattletimes.com/home';
      window.SEATIMESCO.ads.vendorTimeout = 700;
      window.SEATIMESCO.ads.experimentId = 'D26UP0_xRdeBIeYsdZ79sQ';
      window.SEATIMESCO.ads.teads = {};
      window.SEATIMESCO.ads.teads.pid = '63145';
      window.SEATIMESCO.ads.isTakeover = false;
      window.SEATIMESCO.ads.zeusEnabled = 'true';
    </script>    <script src='https://cdn.p-n.io/pushly-sdk.min.js?domain_key=5PYtX3tOeW6xvo5rIlz9xALDt933Xdu9fsDU' async></script>
    <script>
      var PushlySDK = window.PushlySDK || [];
      function pushly() { PushlySDK.push(arguments) }
      pushly('load', {
        domainKey: '5PYtX3tOeW6xvo5rIlz9xALDt933Xdu9fsDU',
      });
    </script><link rel='dns-prefetch' href='//seattle-times.zeustechnology.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel='dns-prefetch' href='//use.typekit.net' />
<link rel='dns-prefetch' href='//awsapi.seattletimes.com' />
<link rel='dns-prefetch' href='//ad.crwdcntrl.net' />
<link rel='dns-prefetch' href='//static.chartbeat.com' />
<link rel='dns-prefetch' href='//mab.chartbeat.com' />
<link rel="alternate" type="application/rss+xml" title="The Seattle Times &raquo; Feed" href="https://www.seattletimes.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="The Seattle Times &raquo; Comments Feed" href="https://www.seattletimes.com/comments/feed/" />
<script type='text/javascript'>

      dataLayer = [{"timestamp":1590273247,"contentType":"homepage","canonicalURL":"https:\/\/www.seattletimes.com\/","domain":"www.seattletimes.com","CP":"12792099"}]; 

      window.SEATIMESCO = window.SEATIMESCO || {}; window.SEATIMESCO.contentInfo = {"timestamp":1590273247,"contentType":"homepage","canonicalURL":"https:\/\/www.seattletimes.com\/","domain":"www.seattletimes.com","CP":"12792099"}; 

      </script>

      <!-- Page-hiding snippet -->
      <script>
        (function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
        h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
        (a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
      })(window,document.documentElement,'async-hide','dataLayer',4000,
        {'GTM-KDZ92J':true});
      </script>

      <script>
      window.SEATIMESCO = window.SEATIMESCO || {};
      window.SEATIMESCO.experiments = window.SEATIMESCO.experiments || {};
      window.SEATIMESCO.experiments.defaultHide = "";
      </script>

      		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/www.seattletimes.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.10"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56760,9792,65039],[55358,56760,8203,9792,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		
        <!-- Google Tag Manager -->
        <script>
          (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
          new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
          j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
          '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
          })(window,document,'script','dataLayer','GTM-KDZ92J');
        </script>

        <style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='st-shortcode-public-styles-css'  href='https://www.seattletimes.com/wp-content/plugins/shortcodes_plugin/css/shortcodes-public.css?ver=4.9.10' type='text/css' media='all' />
<link rel='stylesheet' id='st-style-css'  href='https://www.seattletimes.com/wp-content/themes/st_refresh/css/styles.min.css?ver=1590084529' type='text/css' media='all' />
<link rel='stylesheet' id='open-sans-font-css'  href='//fonts.googleapis.com/css?family=Open+Sans%3A400%2C700&#038;display=swap&#038;ver=1590084529' type='text/css' media='all' />
<script type='text/javascript' src='https://seattle-times.zeustechnology.com/main.js?ver=4.9.10'></script>
<script type='text/javascript' src='https://www.seattletimes.com/wp-content/plugins/st-privacy-detection/js/src/ads/ad-test.js?ver=0.0.2'></script>
<script type='text/javascript' src='https://www.seattletimes.com/wp-content/plugins/st-privacy-detection/js/dist/st-detect.min.js?ver=1573149249'></script>
<link rel='https://api.w.org/' href='https://www.seattletimes.com/wp-json/' />

  
  <meta property="fb:admins" content="2737159" />

  
    <!-- ST SVG Icons --><svg xmlns="http://www.w3.org/2000/svg" display="none">
    <symbol id="icon-hamburger-menu">
        <path d="M25 2c0 1.104-.896 2-2 2H2C.896 4 0 3.104 0 2s.896-2 2-2h21c1.104 0 2 .896 2 2zM25 10c0 1.104-.896 2-2 2H2c-1.104 0-2-.896-2-2s.896-2 2-2h21c1.104 0 2 .896 2 2zM25 18c0 1.105-.896 2-2 2H2c-1.104 0-2-.896-2-2s.896-2 2-2h21c1.104 0 2 .896 2 2z"/>
    </symbol>
    <symbol id="icon-x" viewBox="0 0 512 512">
        <path d="M508.6,405.3c2.3,3.2,3.4,6.1,3.4,8.8c0,2.7-1.1,5.6-3.4,8.8l-85.8,85.8c-3.2,2.3-6.1,3.4-8.8,3.4c-2.7,0-5.6-1.1-8.8-3.4L256,359.3L106.7,508.6c-3.2,2.3-6.1,3.4-8.8,3.4c-2.7,0-5.6-1.1-8.8-3.4L3.4,422.8c-2.3-3.2-3.4-6.1-3.4-8.8c0-2.7,1.1-5.6,3.4-8.8L152.7,256L3.4,106.7c-2.3-3.2-3.4-6.1-3.4-8.8c0-2.7,1.1-5.6,3.4-8.8L89.2,3.4C92.3,1.1,95.3,0,97.9,0c2.7,0,5.6,1.1,8.8,3.4L256,152.7L405.3,3.4c3.2-2.3,6.1-3.4,8.8-3.4c2.7,0,5.6,1.1,8.8,3.4l85.8,85.8c2.3,3.2,3.4,6.1,3.4,8.8s-1.1,5.6-3.4,8.8L359.3,256L508.6,405.3z"/>
    </symbol>
    <symbol id="icon-search" viewBox="0 0 512 512">
        <path d="M320,0c52.9,0,98.2,18.8,135.7,56.3C493.2,93.9,512,139.1,512,192c0,52.9-18.8,98.2-56.3,135.7S372.9,384,320,384c-37.5,0-71.7-9.9-102.5-29.6L72.9,499.5c-8.3,8.3-18.4,12.5-30.2,12.5s-21.9-4.2-30.2-12.5C4.2,491.2,0,481.2,0,469.3c0-11.9,4.2-21.9,12.5-30.2l145.2-144.6c-19.8-30.8-29.6-65-29.6-102.5c0-52.9,18.8-98.2,56.3-135.7S267.1,0,320,0L320,0z M320,320c35.2,0,65.3-12.5,90.4-37.6c25.1-25.1,37.6-55.2,37.6-90.4c0-35.2-12.6-65.3-37.6-90.4C385.3,76.6,355.2,64,320,64c-35.2,0-65.3,12.5-90.4,37.6S192,156.8,192,192s12.5,65.3,37.6,90.4S284.9,320,320,320z"/>
    </symbol>
    <symbol id="icon-chevron" viewBox="0 0 512 512">
        <path d="M512,170.8c0,2.4-1,4.9-3,7.7L264.1,423.4c-5.1,5.1-10.2,5.1-15.4,0L3.8,178.5c-5.1-5.1-5.1-10.2,0-15.4l74.5-74.5c5.1-5.1,10.2-5.1,15.4,0l162.7,163.3L419.1,88.6c5.1-5.1,10.2-5.1,15.4,0l74.5,74.5C511,165.9,512,168.5,512,170.8L512,170.8z"/>
    </symbol>
    <symbol id="icon-lock" viewBox="0 0 512 512">
        <path id="lock" class="st0" d="M416,223c8.7,0,16.2,3.2,22.5,9.5c6.3,6.3,9.5,13.8,9.5,22.5v224c0,8.7-3.2,16.2-9.5,22.5
        c-6.3,6.3-13.8,9.5-22.5,9.5H96c-8.7,0-16.2-3.2-22.5-9.5c-6.3-6.3-9.5-13.8-9.5-22.5V255c0-8.7,3.2-16.2,9.5-22.5
	    c6.3-6.3,13.8-9.5,22.5-9.5h32v-96c0-35.2,12.5-65.3,37.6-90.4S220.8-1,256-1c35.2,0,65.3,12.6,90.4,37.6S384,91.8,384,127v96
	    L416,223L416,223z M192,127v96h128v-96c0-17.8-6.2-32.9-18.7-45.3C288.9,69.2,273.8,63,256,63c-17.8,0-32.9,6.2-45.3,18.7
	    C198.2,94.1,192,109.2,192,127z"/>
    </symbol>
</svg>
  </head>

  
<body class="home blog with-restaurants-closed-cdc-warns-of-increasingly-aggressive-rodents-looking-for-new-food-sources two-column">
  
        <!-- Google Tag Manager (noscript) -->
        <noscript>
          <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KDZ92J" height="0" width="0" style="display:none;visibility:hidden"></iframe>
        </noscript>

        
  <a class="skip-link screen-reader-text" href="#content">Skip to content</a>
  <div id="userMessagingTopOverlay" class="user-messaging animate"></div>  
<div id="container" class="site container">

  <header class="global-header home-header standard">

    <div class="global-header-top">

      <div class="wrapper">

        <div class="main-nav">

          <div class="main-nav-header">

            <button id="hamburger-button" aria-label="Open" class="menu-button"
              aria-controls="menu-hamburger-accordion-menu" aria-expanded="false">
              <svg class="hamburger-svg icon">
                <use xlink:href="#icon-hamburger-menu"></use>
              </svg>
              <span class="menu-label">Menu</span>
            </button>

            <a href="https://www.seattletimes.com" class="header-wordmark" title="The Seattle Times"></a>

            <div class="weather-traffic">
  <ul class="horizontal-list-menu">
    <li class="weather">
      <a href="/seattle-news/weather/">Weather</a>
    </li>
    <li class="traffic">
      <a href="/traffic/">Traffic</a>
    </li>
  </ul>
</div>
          </div>

          <nav class="popup main-nav-body">

            <div class="main-nav-header highlighted">

              <button id="hamburger-close-button" aria-label="Close" class="menu-button"
                aria-controls="menu-hamburger-accordion-menu" aria-expanded="false">
                <svg class="icon-x icon-white icon">
                  <use xlink:href="#icon-x"></use>
                </svg>
              </button>

              <a href="https://www.seattletimes.com" class="header-wordmark white" title="The Seattle Times"></a>

            </div>

            <div id="main-nav-container" class="main-nav-container">

  <ul id="menu-hamburger-accordion-menu" class="nav-accordion"><li id="menu-item-12619260" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-12619260"><a href="https://www.seattletimes.com/tag/coronavirus/">Coronavirus</a></li>
<li id="menu-item-9817233" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817233"><a href="/seattle-news/">Local News</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9817255" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817255"><a href="/seattle-news/transportation/">Traffic Lab</a></li>
	<li id="menu-item-9818656" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818656"><a href="/seattle-news/crime/">Crime</a></li>
	<li id="menu-item-9817246" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817246"><a href="/seattle-news/politics/">Local Politics</a></li>
	<li id="menu-item-9818658" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818658"><a href="/seattle-news/education/">Education</a></li>
	<li id="menu-item-10273892" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10273892"><a href="/education-lab/">Education Lab</a></li>
	<li id="menu-item-9818657" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818657"><a href="/seattle-news/eastside/">Eastside</a></li>
	<li id="menu-item-9818659" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818659"><a href="/seattle-news/health/">Health</a></li>
	<li id="menu-item-9876206" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876206"><a href="/seattle-news/data/">Data</a></li>
	<li id="menu-item-10552763" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10552763"><a href="/seattle-news/homeless/">Project Homeless</a></li>
	<li id="menu-item-9876219" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876219"><a href="/seattle-news/times-watchdog/">Times Watchdog</a></li>
</ul>
</li>
<li id="menu-item-9817234" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817234"><a href="/business/">Business &#038; Tech</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9818664" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818664"><a href="/business/boeing-aerospace/">Boeing &#038; Aerospace</a></li>
	<li id="menu-item-9876204" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876204"><a href="/business/amazon/">Amazon</a></li>
	<li id="menu-item-9818666" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818666"><a href="/business/microsoft/">Microsoft</a></li>
	<li id="menu-item-9818662" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818662"><a href="/business/technology/">Technology</a></li>
	<li id="menu-item-10896521" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10896521"><a href="/business/real-estate/">Real Estate</a></li>
	<li id="menu-item-9818665" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818665"><a href="/business/economy/">Economy</a></li>
	<li id="menu-item-11560277" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11560277"><a href="/tag/artificial-intelligence/">Artificial Intelligence</a></li>
</ul>
</li>
<li id="menu-item-9817235" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817235"><a href="/nation-world/">Nation &#038; World</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9876207" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876207"><a href="/nation-world/nation-politics/">Nation &#038; World Politics</a></li>
	<li id="menu-item-9876208" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876208"><a href="/nation-world/oddities/">Oddities</a></li>
</ul>
</li>
<li id="menu-item-9817237" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817237"><a href="/sports/">Sports</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9817253" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817253"><a href="/sports/seahawks/">Seahawks</a></li>
	<li id="menu-item-9817251" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817251"><a href="/sports/uw-huskies/">Huskies</a></li>
	<li id="menu-item-9817250" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817250"><a href="/sports/wsu-cougars/">Cougars</a></li>
	<li id="menu-item-9817252" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817252"><a href="/sports/mariners/">Mariners</a></li>
	<li id="menu-item-9817254" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817254"><a href="/sports/sounders/">Sounders</a></li>
	<li id="menu-item-9817279" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817279"><a href="/sports/storm/">Storm</a></li>
	<li id="menu-item-9817280" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817280"><a href="/sports/high-school/">High School Sports</a></li>
	<li id="menu-item-10842305" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10842305"><a href="https://www.seattletimes.com/sports/hockey/">Hockey</a></li>
	<li id="menu-item-9921459" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9921459"><a href="/sports/sports-on-tv-radio-2/">On TV/Radio</a></li>
</ul>
</li>
<li id="menu-item-9817238" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817238"><a href="/entertainment/">Entertainment</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9818621" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818621"><a href="/entertainment/movies/">Movies</a></li>
	<li id="menu-item-9818619" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818619"><a href="/entertainment/books/">Books</a></li>
	<li id="menu-item-9818616" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818616"><a href="/entertainment/music/">Music</a></li>
	<li id="menu-item-9818617" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818617"><a href="/entertainment/theater/">Theater</a></li>
	<li id="menu-item-9818620" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818620"><a href="/entertainment/classical-music/">Classical Music</a></li>
	<li id="menu-item-9876209" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876209"><a href="/entertainment/tv/">TV/Streaming</a></li>
	<li id="menu-item-10270568" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10270568"><a href="/entertainment/comics/">Comics</a></li>
	<li id="menu-item-10270569" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10270569"><a href="/entertainment/games/">Games &#038; Puzzles</a></li>
	<li id="menu-item-10364413" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10364413"><a href="https://www.seattletimes.com/horoscopes/">Horoscopes</a></li>
</ul>
</li>
<li id="menu-item-9817239" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817239"><a href="/life/">Life</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9818643" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818643"><a href="/life/food-drink/">Food &#038; Drink</a></li>
	<li id="menu-item-9818653" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818653"><a href="/life/travel/">Travel &#038; Outdoors</a></li>
	<li id="menu-item-9818654" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818654"><a href="/life/wellness/">Wellness</a></li>
	<li id="menu-item-9876210" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9876210"><a href="/life/pets/">Pets</a></li>
	<li id="menu-item-9818655" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9818655"><a href="https://www.seattletimes.com/category/rant-and-rave/">Rant &#038; Rave</a></li>
</ul>
</li>
<li id="menu-item-9818651" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9818651"><a href="/pacific-nw-magazine/">Pacific NW Magazine</a></li>
<li id="menu-item-9817269" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9817269"><a href="/homes-real-estate">Homes &#038; Real Estate</a></li>
<li id="menu-item-9817240" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9817240"><a href="/opinion/">Opinion</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-9817247" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817247"><a href="/opinion/editorials/">Editorials</a></li>
	<li id="menu-item-9817248" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9817248"><a href="/opinion/letters-to-the-editor/">Letters to the Editor</a></li>
	<li id="menu-item-11126979" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11126979"><a href="https://www.seattletimes.com/author/david-horsey/">David Horsey</a></li>
	<li id="menu-item-12758963" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12758963"><a href="/tag/free-press/">Free Press</a></li>
</ul>
</li>
<li id="menu-item-10051574" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10051574"><a title="Video" href="/video/">Video</a></li>
<li id="menu-item-10082928" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10082928"><a href="/photo-video/">Photography</a></li>
<li id="menu-item-9817274" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9817274"><a href="http://www.legacy.com/obituaries/seattletimes/#_ga=1.72389267.1837675783.1379017650">Obituaries</a><svg class='icon-chevron icon'><use xlink:href='#icon-chevron'></use></svg><span class='sub-menu-toggle'></span>
<ul class="sub-menu">
	<li id="menu-item-10203898" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10203898"><a href="/obituaries/">News Obituaries</a></li>
	<li id="menu-item-10203899" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10203899"><a href="http://www.legacy.com/obituaries/seattletimes/#_ga=1.15101558.1560921668.1447363166">Paid Obituaries</a></li>
</ul>
</li>
<li id="menu-item-11044943" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11044943"><a href="http://seattletimes.com/newsletters/">Newsletters</a></li>
<li id="menu-item-10785263" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10785263"><a href="https://secure.seattletimes.com/accountcenter/replica">Print Replica</a></li>
<li id="menu-item-10828531" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10828531"><a href="http://www.seattletimes.com/tag/inside-the-times/">Inside The Times</a></li>
<li id="menu-item-9817258" class="text-gray menu-item menu-item-type-custom menu-item-object-custom menu-item-9817258"><a href="/explore/">Explore</a></li>
<li id="menu-item-9817256" class="text-gray menu-item menu-item-type-custom menu-item-object-custom menu-item-9817256"><a href="http://jobs.seattletimes.com/">Jobs</a></li>
<li id="menu-item-9817271" class="text-gray menu-item menu-item-type-custom menu-item-object-custom menu-item-9817271"><a href="http://autos.seattletimes.com">Autos</a></li>
</ul>
  <div class="main-nav-separator"></div>
  <ul class="hamburger-login-nav main-nav-list"></ul>
</div>

          </nav>

        </div>

        <nav class='header-utils'>
  <ul>
    <li><a href='https://secure.seattletimes.com/accountcenter/' class='login st-return'>Log In</a></li>
    <li><a id='header-subscribe-link' href='/subscribe/signup-offers?subsource=voluntary' class='subscribe st-return'>Subscribe</a></li>
  </ul>
</nav>
        <button class="header-search-icon global-search-button">
          <svg class="icon-search icon">
            <use xlink:href="#icon-search"></use>
          </svg>
          <span id="search-button-text" class="header-search-text">Search</span>
        </button>

        <div class="secondary-nav">

          <h1><a href="https://www.seattletimes.com" class="home-header-wordmark" title="The Seattle Times"></a></h1>

        </div>

      </div>

    </div>

    <!--
  <div id="ad-top-mobile" class="ad show-mobile small-leaderboard">
  -->
        <!--
  </div>
  -->

    <nav class="section-nav standard">

      <div class="wrapper">
        <ul id="menu-home-navbar" class="primary-navigation"><li id="menu-item-12619294" class="menu-item menu-item-type-taxonomy menu-item-object-post_tag menu-item-12619294"><a href="https://www.seattletimes.com/tag/coronavirus/">Coronavirus</a></li>
<li id="menu-item-41596" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-41596"><a title="Seattle News" href="/seattle-news/">Local</a></li>
<li id="menu-item-41597" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-41597"><a title="Seattle Business" href="/business/">Biz</a></li>
<li id="menu-item-41598" class="menu-item menu-item-type-taxonomy menu-item-object-section current-post-ancestor current-menu-parent current-post-parent menu-item-41598"><a title="Seattle Sports" href="/sports/">Sports</a></li>
<li id="menu-item-41600" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-41600"><a title="Seattle Entertainment" href="/entertainment/">Entertainment</a></li>
<li id="menu-item-41601" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-41601"><a title="Seattle Life" href="/life/">Life</a></li>
<li id="menu-item-9717308" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9717308"><a href="/homes-real-estate/">Homes</a></li>
<li id="menu-item-42489" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-42489"><a title="Seattle Opinion" href="/opinion/">Opinion</a></li>
<li id="menu-item-9805207" class="menu-item menu-item-type-separator menu-item-object-custom menu-item-9805207"><a>|</a></li>
<li id="menu-item-42648" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42648"><a href="http://jobs.seattletimes.com">Jobs</a></li>
<li id="menu-item-9756150" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9756150"><a href="http://autos.seattletimes.com/">Autos</a></li>
<li id="menu-item-42651" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42651"><a href="/explore/">Explore</a></li>
</ul><div class="nav-all-sections"><button class="nav-all-sections-toggle" aria-label="Toggle mega menu" aria-controls="navAllSections" aria-expanded="false"><svg class="icon-chevron icon"><use xlink:href="#icon-chevron"></use></svg><span class="btn-txt">All Sections</span></button><div class="nav-all-sections-wrapper" id="navAllSections"><ul id="menu-all-sections-tier-1" class="all-sections-primary"><li id="menu-item-9850750" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9850750"><a href="/seattle-news/">Local</a>
<ul class="sub-menu">
	<li id="menu-item-12758952" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12758952"><a href="/tag/coronavirus/">Coronavirus</a></li>
	<li id="menu-item-9845534" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845534"><a href="/seattle-news/transportation/">Traffic Lab</a></li>
	<li id="menu-item-10554575" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10554575"><a href="/seattle-news/homeless/">Project Homeless</a></li>
	<li id="menu-item-9845529" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845529"><a href="/seattle-news/crime/">Crime</a></li>
	<li id="menu-item-9845533" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845533"><a href="/seattle-news/politics/">Local Politics</a></li>
	<li id="menu-item-9845531" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845531"><a href="/seattle-news/education/">Education</a></li>
	<li id="menu-item-10273896" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10273896"><a href="/education-lab/">Education Lab</a></li>
	<li id="menu-item-9845530" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845530"><a href="/seattle-news/eastside/">Eastside</a></li>
	<li id="menu-item-9875159" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9875159"><a href="/seattle-news/northwest/">Northwest</a></li>
	<li id="menu-item-9874852" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9874852"><a href="/seattle-news/data/">Data</a></li>
	<li id="menu-item-9845532" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845532"><a href="/seattle-news/health/">Health</a></li>
	<li id="menu-item-9874851" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9874851"><a href="/seattle-news/times-watchdog/">Times Watchdog</a></li>
	<li id="menu-item-10828536" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10828536"><a href="http://www.seattletimes.com/tag/inside-the-times/">Inside The Times</a></li>
	<li id="menu-item-9845537" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9845537"><a href="/obituaries/">News Obituaries</a></li>
	<li id="menu-item-9845491" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845491"><a href="/photo-video/">Photo &#038; Video</a></li>
	<li id="menu-item-9845487" class="top-level menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845487"><a href="/nation-world/">Nation &#038; World</a></li>
	<li id="menu-item-9845488" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845488"><a href="/nation-world/nation-politics/">Politics</a></li>
	<li id="menu-item-9845538" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845538"><a href="/nation-world/oddities/">Oddities</a></li>
</ul>
</li>
<li id="menu-item-9845475" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9845475"><a href="/business/">Business</a>
<ul class="sub-menu">
	<li id="menu-item-9845525" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845525"><a href="/business/boeing-aerospace/">Boeing</a></li>
	<li id="menu-item-9845524" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845524"><a href="/business/amazon/">Amazon</a></li>
	<li id="menu-item-11560298" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11560298"><a href="/tag/artificial-intelligence/">Artificial Intelligence</a></li>
	<li id="menu-item-9845526" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845526"><a href="/business/microsoft/">Microsoft</a></li>
	<li id="menu-item-9845499" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845499"><a href="/business/technology/">Technology</a></li>
	<li id="menu-item-9845539" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845539"><a href="/business/economy/">Economy</a></li>
	<li id="menu-item-9845498" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845498"><a href="/business/real-estate/">Real Estate</a></li>
</ul>
</li>
<li id="menu-item-9845492" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9845492"><a href="/sports/">Sports</a>
<ul class="sub-menu">
	<li id="menu-item-9845553" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845553"><a href="/sports/seahawks/">Seahawks</a></li>
	<li id="menu-item-9845550" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845550"><a href="/sports/uw-huskies/">Huskies</a></li>
	<li id="menu-item-9845548" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845548"><a href="/sports/wsu-cougars/">Cougars</a></li>
	<li id="menu-item-9845549" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845549"><a href="/sports/high-school/">High Schools</a></li>
	<li id="menu-item-9845547" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845547"><a href="/sports/mariners/">Mariners</a></li>
	<li id="menu-item-9845493" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845493"><a href="/sports/sounders/">Sounders</a></li>
	<li id="menu-item-9849008" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9849008"><a href="/sports/snow-sports/">Snow Sports</a></li>
	<li id="menu-item-9848996" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848996"><a href="/author/geoff-baker">Geoff Baker</a></li>
	<li id="menu-item-9848994" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848994"><a href="/author/matt-calkins">Matt Calkins</a></li>
	<li id="menu-item-9848995" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848995"><a href="/author/larry-stone">Larry Stone</a></li>
	<li id="menu-item-9848993" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848993"><a href="/author/bob-condotta">Bob Condotta</a></li>
	<li id="menu-item-9848954" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848954"><a href="/sports/sports-on-tv-radio-2/">On TV/Radio</a></li>
</ul>
</li>
<li id="menu-item-9845476" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9845476"><a href="/entertainment/">Entertainment</a>
<ul class="sub-menu">
	<li id="menu-item-9848965" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9848965"><a href="/entertainment/movies/">Movies</a></li>
	<li id="menu-item-9848968" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9848968"><a href="/entertainment/books/">Books</a></li>
	<li id="menu-item-9848966" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9848966"><a href="/entertainment/music/">Music</a></li>
	<li id="menu-item-9848979" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9848979"><a href="/entertainment/theater/">Theater</a></li>
	<li id="menu-item-9849076" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9849076"><a href="/entertainment/classical-music/">Classical Music</a></li>
	<li id="menu-item-9875161" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9875161"><a href="/entertainment/tv/">TV/Streaming</a></li>
	<li id="menu-item-10270563" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10270563"><a href="/entertainment/comics/">Comics</a></li>
	<li id="menu-item-10270565" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-10270565"><a href="/entertainment/games/">Games &#038; Puzzles</a></li>
	<li id="menu-item-10364416" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-10364416"><a href="https://www.seattletimes.com/horoscopes/">Horoscopes</a></li>
</ul>
</li>
<li id="menu-item-9845478" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9845478"><a href="/life/">Life</a>
<ul class="sub-menu">
	<li id="menu-item-9845490" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845490"><a href="/pacific-nw-magazine/">Pacific NW Magazine</a></li>
	<li id="menu-item-9848964" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9848964"><a href="/life/food-drink/">Food &#038; Drink</a></li>
	<li id="menu-item-9848961" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9848961"><a href="https://www.seattletimes.com/category/seattle-happy-hours/">Happy Hour</a></li>
	<li id="menu-item-9848980" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9848980"><a href="/life/wellness/">Wellness</a></li>
	<li id="menu-item-9849021" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9849021"><a href="/life/home-decor/">Home &#038; Decor</a></li>
	<li id="menu-item-9875160" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9875160"><a href="/life/pets/">Pets</a></li>
	<li id="menu-item-9848981" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9848981"><a href="https://www.seattletimes.com/category/rant-and-rave/">Rant &#038; Rave</a></li>
	<li id="menu-item-9849075" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849075"><a href="/author/bethany-jean-clement">Bethany Jean Clement</a></li>
</ul>
</li>
<li id="menu-item-9845497" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9845497"><a href="/life/travel/">Travel</a>
<ul class="sub-menu">
	<li id="menu-item-9845496" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845496"><a href="/life/outdoors/">Outdoors</a></li>
	<li id="menu-item-9849016" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9849016"><a href="https://www.seattletimes.com/category/northwest-hikes/">Northwest Hikes</a></li>
	<li id="menu-item-9849020" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9849020"><a href="https://www.seattletimes.com/category/travel-in-washington-state/">Washington</a></li>
	<li id="menu-item-9849019" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9849019"><a href="https://www.seattletimes.com/category/travel-to-oregon/">Oregon</a></li>
	<li id="menu-item-9849017" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9849017"><a href="https://www.seattletimes.com/category/travel-to-british-columbia/">B.C.</a></li>
	<li id="menu-item-9849018" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9849018"><a href="https://www.seattletimes.com/category/travel-to-hawaii/">Hawaii</a></li>
</ul>
</li>
<li id="menu-item-9845477" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-has-children menu-item-9845477"><a href="/opinion/">Opinion</a>
<ul class="sub-menu">
	<li id="menu-item-9845551" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845551"><a href="/opinion/editorials/">Editorials</a></li>
	<li id="menu-item-9845552" class="menu-item menu-item-type-taxonomy menu-item-object-section menu-item-9845552"><a href="/opinion/letters-to-the-editor/">Letters</a></li>
	<li id="menu-item-9848983" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9848983"><a href="https://www.seattletimes.com/category/op-eds/">Op-Eds</a></li>
	<li id="menu-item-9848988" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848988"><a href="/author/david-horsey/">David Horsey</a></li>
	<li id="menu-item-9848985" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848985"><a href="/author/kate-riley/">Kate Riley</a></li>
	<li id="menu-item-9848986" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848986"><a href="/author/mark-higgins/">Mark Higgins</a></li>
	<li id="menu-item-9848987" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9848987"><a href="/author/brier-dudley/">Brier Dudley</a></li>
	<li id="menu-item-12763164" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12763164"><a href="/author/jennifer-hemmingsen/">Jennifer Hemmingsen</a></li>
	<li id="menu-item-12763158" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12763158"><a href="/author/derrick-nunnally/">Derrick Nunnally</a></li>
	<li id="menu-item-12758918" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12758918"><a href="/author/dean-miller/">Dean Miller</a></li>
	<li id="menu-item-12758941" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12758941"><a href="/tag/free-press/">Free Press</a></li>
</ul>
</li>
<li id="menu-item-9845540" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9845540"><a href="/newsroom-staff/#news-columnists">Columnists</a>
<ul class="sub-menu">
	<li id="menu-item-9849057" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849057"><a href="/author/gene-balk-fyi-guy">FYI Guy</a></li>
	<li id="menu-item-9849058" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849058"><a href="/author/gabriel-campanario-seattle-sketcher/">Seattle Sketcher</a></li>
	<li id="menu-item-9849037" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849037"><a href="/author/danny-westneat/">Danny Westneat</a></li>
	<li id="menu-item-12182094" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12182094"><a href="https://www.seattletimes.com/author/naomi-ishisaka/">Naomi Ishisaka</a></li>
	<li id="menu-item-12758926" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12758926"><a href="/author/jon-talton/">Jon Talton</a></li>
</ul>
</li>
</ul><ul id="menu-all-sections-tier-2" class="all-sections-secondary"><li id="menu-item-9849281" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849281"><a href="http://jobs.seattletimes.com/">Jobs</a></li>
<li id="menu-item-9849284" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849284"><a href="http://autos.seattletimes.com/">Autos</a></li>
<li id="menu-item-9849285" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849285"><a href="/explore/nwhomes/">Homes Listings</a></li>
<li id="menu-item-9849286" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849286"><a href="http://classifieds.seattletimes.com/">Classifieds</a></li>
<li id="menu-item-10203919" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10203919"><a href="http://www.legacy.com/obituaries/seattletimes/#_ga=1.6704882.1560921668.1447363166">Paid Obituaries</a></li>
<li id="menu-item-9849287" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849287"><a href="/explore/">Explore</a></li>
<li id="menu-item-10270535" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-10270535"><a href="/sponsored/">Sponsored Posts</a></li>
<li id="menu-item-9849288" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849288"><a href="/explore/shop-northwest/">ShopNW</a></li>
<li id="menu-item-9849290" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849290"><a href="http://company.seattletimes.com/store/">Seattle Times Store</a></li>
</ul><ul id="menu-all-sections-tier-3" class="all-sections-footer"><li id="menu-item-9849310" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9849310"><a href="https://www.seattletimes.com/contact/">Contact</a></li>
<li id="menu-item-9849312" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849312"><a href="/help/">FAQs</a></li>
<li id="menu-item-9849313" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849313"><a href="https://secure.seattletimes.com/accountcenter/managesubscriptions">Subscriber Services</a></li>
<li id="menu-item-9849314" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849314"><a href="https://secure.seattletimes.com/accountcenter/replica">Print Replica</a></li>
<li id="menu-item-9849315" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849315"><a href="https://itunes.apple.com/us/app/seattle-times-mobile/id329502124">iOS App</a></li>
<li id="menu-item-9849318" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9849318"><a href="https://play.google.com/store/apps/details?id=com.seattletimes.android.SeattleTimesMobileNews">Android App</a></li>
</ul></div></div>      </div>

      <div class="section-nav-popup">

        <div class="section-nav-popup-header">
          <span class="section-nav-button">Home Page</span>
          <a class="section-nav-button close" href="#">
            <svg class="icon-x icon-white icon">
              <use xlink:href="#icon-x"></use>
            </svg>
          </a>
        </div>

        <div class="section-nav-popup-container">
                  </div>

      </div>
    </nav>

    <div class="ad ad-top-one">
      <div id="ad-flex-top" class="wrapper ad-top-two">
        <zeus-ad id='zeus_top' class='' ></zeus-ad>      </div>
    </div>

    <div class="secondary-nav-mobile">
      <div class="wrapper">
        <div class="weather-traffic">
  <ul class="horizontal-list-menu">
    <li class="weather">
      <a href="/seattle-news/weather/">Weather</a>
    </li>
    <li class="traffic">
      <a href="/traffic/">Traffic</a>
    </li>
  </ul>
</div>        <nav class='header-utils'>
  <ul>
    <li><a href='https://secure.seattletimes.com/accountcenter/' class='login st-return'>Log In</a></li>
    <li><a id='header-subscribe-link' href='/subscribe/signup-offers?subsource=voluntary' class='subscribe st-return'>Subscribe</a></li>
  </ul>
</nav>      </div>

    </div>

  </header>


<section id="content" class="content-well">
    <div class="wrapper">

        
<div id="el-top-stories-top-above-fold-block-12793980-t" class="top-stories-centerpiece top-section full-width-content">

  <div data-zone="top-stories-at-top" class="river-group editorial-content top-stories-at-top">
    <div class="primary">
  <div class="top-story">
    
      <figure class="top-story-photo centerpiece-photo">

        <a id="el-above-fold-block-12793980-12792099-i" href="https://www.seattletimes.com/seattle-news/health/in-an-uneven-coronavirus-pandemic-some-washington-counties-may-still-have-a-long-way-to-go-before-reopening/">
          <img  class='' alt='Viewed from Magnuson Park, boaters cruise on Lake Washington on May 17. People west of the Cascades are getting restless. “You can just look around you and see there are more people out and about and doing things,” Dr. Jeff Duchin, health officer for Public Health — Seattle &#038; King County, said. As long as people keep their distance, being outside is actually a good thing — because the risk of transmission is lower, he added.  (Dean Rutz / The Seattle Times)' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-780x528.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-300x203.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-768x520.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-1024x694.jpg 1024w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-780x528.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-1020x691.jpg 1020w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-1560x1057.jpg 1560w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_lo_094025-375x254.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' />        </a>

                  <figcaption class="caption">
          Viewed from Magnuson Park, boaters cruise on Lake Washington on May 17. Dr. Jeff Duchin, health officer for Public Health — Seattle &amp; King County says as long as people keep their distance, being outside is actually a good thing because the risk of transmission is lower. (Dean Rutz / The Seattle Times)          </figcaption>
        
      </figure>

    
    
    <div class="top-story-content">
      <span class="top-story-eyebrow">
              Health            </span>

      <h2 class="top-story-title centerpiece-story-title"><a id="el-above-fold-block-12793980-12792099-h" href="https://www.seattletimes.com/seattle-news/health/in-an-uneven-coronavirus-pandemic-some-washington-counties-may-still-have-a-long-way-to-go-before-reopening/">In an uneven coronavirus pandemic, some Washington counties may still have a long way to go before reopening</a></h2>
              <div class="top-story-lede">
          <p>
            King and Snohomish counties are nowhere near the low levels of COVID-19 cases Gov. Jay Inslee set as one of the criteria for applying to move to the second phase of his recovery plan.                            <span class="update-timestamp">Updated <time>3:04 pm</time></span>
            </p>
        </div>
        <ul class="horizontal-list-menu top-story-links centerpiece-background-links">
          <li><a id="el-above-fold-block-12793980-background-link-1-inslee-some-washington-counties-wont-move-to-second-phase-of-reopening-plan-on-june-1-t" href="https://www.seattletimes.com/seattle-news/politics/inslee-some-washington-counties-wont-move-to-second-phase-of-coronavirus-reopening-plan-by-june-1/"><i class=""></i> Inslee: Some Washington counties won’t move to second phase of reopening plan on June 1</a></li>          <li><a id="el-above-fold-block-12793980-background-link-2-full-coronavirus-coverage-and-resources-t" href="https://www.seattletimes.com/tag/coronavirus/"><i class=""></i> Full coronavirus coverage and resources »</a></li>        </ul>
          </div>

  </div>
</div>



<div class="secondary ">
  <div class="story-list show">
          <ul>

        
                                  <li class="top-stories-list-item">
              <a id="el-above-fold-block-12793980-12792830-t" href="https://www.seattletimes.com/seattle-news/health/coronavirus-daily-news-updates-may-23-what-to-know-today-about-covid-19-in-the-seattle-area-washington-state-and-the-nation/">
                <span class="live-label u-sans u-white u-bg-orange u-upper u-bold">Live</span>Coronavirus daily news updates, May 23: What to know today about COVID-19 in the Seattle area, Washington state and the nation                              </a>
                                    <span class="update-timestamp">Updated <time>3:29 pm</time></span>
              </li>
                                              <li class="top-stories-list-item">
              <a id="el-above-fold-block-12793980-12792392-t" href="https://www.seattletimes.com/seattle-news/crime/feds-charge-issaquah-software-engineer-with-fraud-related-to-coronavirus-financial-relief/">
                Feds charge Issaquah software engineer with fraud related to coronavirus financial relief                              </a>
                                            </li>
                                              <li class="top-stories-list-item">
              <a id="el-above-fold-block-12793980-12788911-t" href="https://www.seattletimes.com/seattle-news/politics/will-we-go-back-or-is-the-coronavirus-forging-a-new-political-reality-the-first-verdict-is-in/">
                Oregon&#8217;s vote for big new taxes to aid the homeless ups the urgency in Seattle                 | Danny Westneat              </a>
                                            </li>
                                              <li class="top-stories-list-item">
              <a id="el-above-fold-block-12793980-12793696-t" href="https://www.seattletimes.com/nation-world/trumps-move-to-block-travel-from-europe-triggered-chaos-and-a-surge-of-passengers-from-the-outbreaks-center/">
                Trump&#8217;s move to block travel from Europe triggered chaos and a surge of passengers from the outbreak&#8217;s center                              </a>
                                    <span class="update-timestamp">Updated <time>2:20 pm</time></span>
              </li>
                                              <li class="top-stories-list-item">
              <a id="el-above-fold-block-12793980-12779756-t" href="https://www.seattletimes.com/seattle-news/in-yakimas-apple-industry-the-surging-covd-19-pandemic-has-brought-a-wave-of-cases-and-labor-strife/">
                In Yakima&#8217;s apple industry, the surging COVID-19 pandemic has brought a wave of cases, and labor strife                              </a>
                                            </li>
                                              <li class="top-stories-list-item">
              <a id="el-above-fold-block-12793980-12792831-t" href="https://www.seattletimes.com/sports/wsu-cougar-football/former-wsu-quarterback-ryan-leaf-arrested-on-suspicion-of-domestic-battery-in-california/">
                Former WSU quarterback Ryan Leaf arrested on suspicion of misdemeanor domestic battery in California                              </a>
                                    <span class="update-timestamp">Updated <time>1:57 pm</time></span>
              </li>
                      
        
        
        
                
        
      </ul>
  </div>
</div>
  </div>

  <div id="ad-right-top" class="tertiary ad">
          <zeus-ad id="zeus_right" class="ad"></zeus-ad>
      </div>

</div>
<div id="st_centerpiece_widget-1423" class="three-featured-articles full-width-content">

<div data-zone="triplet" class="river-group three-col-single has-image">
  <figure class="top-story-photo">
    <a id="el-triplets-12786279-i" href="https://www.seattletimes.com/business/local-business/a-dream-come-true-original-players-rescue-hipster-chain-rudys-barbershop-from-bankruptcy/">
      <img  class='lazy ' alt='Rudy&#8217;s Barbershop co-founders David Petersen (CQ), front, and Wade Weigel; partner Butch Bannon, operating partner Teddy Albertson have saved the company returning it to local ownership.

Buying back the company that went to a VC firm in 2014, to rescuing it from bankruptcy proceedings.

Friday May 22, 2020


Two others involved are Butch Bannon, new partner, and Teddy Albertson, operating partner 214030' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-375x241.jpg 375w' data-sizes='(max-width: 998px) 33vw, 320px' /><noscript><img  class='' alt='Rudy&#8217;s Barbershop co-founders David Petersen (CQ), front, and Wade Weigel; partner Butch Bannon, operating partner Teddy Albertson have saved the company returning it to local ownership.

Buying back the company that went to a VC firm in 2014, to rescuing it from bankruptcy proceedings.

Friday May 22, 2020


Two others involved are Butch Bannon, new partner, and Teddy Albertson, operating partner 214030' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05232020_teaser_tzr_082533-375x241.jpg 375w' sizes='(max-width: 998px) 33vw, 320px' data-sizes='(max-width: 998px) 33vw, 320px' /></noscript>    </a>
  </figure>

  <div class="three-col-text">
    <div class="top-story-eyebrow">
              Local Business          </div>
    <h2 class="top-story-title"><a id="el-triplets-12786279-t" href="https://www.seattletimes.com/business/local-business/a-dream-come-true-original-players-rescue-hipster-chain-rudys-barbershop-from-bankruptcy/">&#8216;A dream come true&#8217;: Original players rescue hipster chain Rudy&#8217;s Barbershop from bankruptcy</a></h2>
  </div>
</div>
<div data-zone="triplet" class="river-group three-col-single has-image">
  <figure class="top-story-photo">
    <a id="el-triplets-12782572-i" href="https://www.seattletimes.com/seattle-news/obituaries/charlie-burrell-beloved-kcts-supervisor-and-king-of-one-liners-dies-of-coronavirus/">
      <img  class='lazy ' alt='Charlie Burrell was known for his quick wit and humor. He worked at KCTS for three decades and was respected by all.' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-375x241.jpg 375w' data-sizes='(max-width: 998px) 33vw, 320px' /><noscript><img  class='' alt='Charlie Burrell was known for his quick wit and humor. He worked at KCTS for three decades and was respected by all.' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_teaser_tzr_094056-375x241.jpg 375w' sizes='(max-width: 998px) 33vw, 320px' data-sizes='(max-width: 998px) 33vw, 320px' /></noscript>    </a>
  </figure>

  <div class="three-col-text">
    <div class="top-story-eyebrow">
              Lives Remembered          </div>
    <h2 class="top-story-title"><a id="el-triplets-12782572-t" href="https://www.seattletimes.com/seattle-news/obituaries/charlie-burrell-beloved-kcts-supervisor-and-king-of-one-liners-dies-of-coronavirus/">Charlie Burrell, beloved KCTS supervisor and king of one-liners, dies of coronavirus</a></h2>
  </div>
</div>
<div data-zone="triplet" class="river-group three-col-single has-image">
  <figure class="top-story-photo">
    <a id="el-triplets-12786530-i" href="https://www.seattletimes.com/sports/mariners/as-mlb-negotiations-near-critical-juncture-mutual-motivation-will-be-key-to-saving-weird-2020-season/">
      <img  class='lazy ' alt='The Mariners warm up for their first road game of the Cactus League season at the home of the Milwaukee Brewers.

The Seattle Mariners played the Milwaukee Brewers in Cactus League Spring Training baseball Tuesday, February 25, 2020 at American Family Fields of Phoenix. 213092' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-375x241.jpg 375w' data-sizes='(max-width: 998px) 33vw, 320px' /><noscript><img  class='' alt='The Mariners warm up for their first road game of the Cactus League season at the home of the Milwaukee Brewers.

The Seattle Mariners played the Milwaukee Brewers in Cactus League Spring Training baseball Tuesday, February 25, 2020 at American Family Fields of Phoenix. 213092' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_130355-375x241.jpg 375w' sizes='(max-width: 998px) 33vw, 320px' data-sizes='(max-width: 998px) 33vw, 320px' /></noscript>    </a>
  </figure>

  <div class="three-col-text">
    <div class="top-story-eyebrow">
              Larry Stone          </div>
    <h2 class="top-story-title"><a id="el-triplets-12786530-t" href="https://www.seattletimes.com/sports/mariners/as-mlb-negotiations-near-critical-juncture-mutual-motivation-will-be-key-to-saving-weird-2020-season/">As MLB negotiations near critical juncture, mutual motivation will be key to saving weird 2020 season</a></h2>
  </div>
</div>
</div>
<div id="el-coronavirus-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-coronavirus" class="section-block river-group subsection full-width-content">

<h2><span class="zone_title">Coronavirus</span><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-coronavirus-12788359-i" href="https://www.seattletimes.com/life/when-can-you-get-a-haircut-see-a-doctor-shop-retail-and-more-in-washington-state/">
        <img  class='lazy ' alt='Shopping retail is just one of several activities that can resume in Phase 2 of Washington state&#8217;s plan to reopen. (Steve Ringman / The Seattle Times)' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='Shopping retail is just one of several activities that can resume in Phase 2 of Washington state&#8217;s plan to reopen. (Steve Ringman / The Seattle Times)' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_132149-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-coronavirus-12788359-t" href='https://www.seattletimes.com/life/when-can-you-get-a-haircut-see-a-doctor-shop-retail-and-more-in-washington-state/'>When can you get a haircut, go to the gym or eat at restaurants, etc., in Washington?</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-coronavirus-12792570-medialink-t" href='https://www.seattletimes.com/nation-world/study-estimates-24-states-still-have-uncontrolled-coronavirus-spread/'>Study estimates 24 states still have uncontrolled coronavirus spread</a>          </li>

  <li>
        <a id="el-coronavirus-12791845-medialink-t" href='https://www.seattletimes.com/business/boeing-aerospace/mitsubishi-will-close-its-washington-state-operations-as-its-slashes-spacejet-budget/'>Mitsubishi cuts hundreds of jobs, shuts Washington operations as it slashes SpaceJet budget</a>          </li>

  <li>
        <a id="el-coronavirus-12791618-medialink-t" href='https://www.seattletimes.com/nation-world/nation-politics/trump-calls-on-churches-to-reopen-this-weekend/'>Trump says he will 'override' governors who reject his call to reopen houses of worship this weekend</a>     <a href="https://www.seattletimes.com/nation-world/nation-politics/trump-calls-on-churches-to-reopen-this-weekend/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a>      </li>

  <li>
        <a id="el-coronavirus-12772574-medialink-t" href='https://www.seattletimes.com/life/coronavirus-upended-everything-what-will-life-in-seattle-look-like-as-we-re-emerge/'>Coronavirus upended everything. What will life in Seattle look like when we re-emerge?</a>          </li>

  <li>
        <a id="el-coronavirus-12766963-medialink-t" href='https://www.seattletimes.com/life/travel/what-does-travel-look-like-in-the-near-future-post-pandemic-future-road-trips-and-staycations-top-the-list/'>Summer isn&#8217;t canceled: Embrace the staycation as coronavirus travel restrictions ease in Washington</a>          </li>
</ul></div><ul class="subsection-links horizontal-list-menu"><li><a id="el-coronavirus-preventing-covid-19-hl" href="https://www.seattletimes.com/seattle-news/health/facts-about-novel-coronavirus-and-how-to-prevent-covid-19/">Preventing COVID-19</a></li><li><a id="el-coronavirus-times-watchdog-hl" href="/seattle-news/times-watchdog/">Times Watchdog</a></li><li><a id="el-coronavirus-full-coverage-hl" href="/tag/coronavirus/">Full coverage</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      
<div class="mini-text-block-stacked-news-group subsection mini-content  mini-text-news-block-group-padding" id="mini-content-Coronavirus-1" data-zone="Resources-&amp;-info-»">
  <h2><a id="el-coronavirus-mini-text-block-stacked-news-header-h" href="https://www.seattletimes.com/tag/coronavirus/">Resources &amp; info »</a></h2>        <div class="partner-story first">
          <p><a id="el-coronavirus-12752773-t" href="https://www.seattletimes.com/life/wellness/in-this-stressful-pandemic-era-keep-these-seattle-area-mental-health-resources-in-mind/">In this stressful COVID era, keep these Seattle-area mental health resources in mind</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-coronavirus-12737502-t" href="https://www.seattletimes.com/seattle-news/how-to-properly-wear-a-face-mask-to-slow-the-spread-of-coronavirus/">How to properly wear a face mask to slow the spread of coronavirus</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-coronavirus-12741000-t" href="https://www.seattletimes.com/business/didnt-get-your-stimulus-payment-yet-heres-what-to-do/">Didn’t get your stimulus payment yet? Here’s what to do.</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-coronavirus-12754053-t" href="https://www.seattletimes.com/life/seattle-times-features-staffers-share-whats-getting-them-through-the-coronavirus-stay-home-routine/">What&#8217;s getting us through the coronavirus stay-home routine</a></p>
        </div>
      </div>

<div class="mini-text-block-group subsection mini-content" id="mini-content-Coronavirus-2">
<h2><a id="el-coronavirus-mini-text-block-header-h" href="https://www.seattletimes.com/seattle-news/health/interactive-map-coronavirus-pandemic-track-outbreak-washington-united-states-world/">Mapping a pandemic »</a></h2></div>
  </div>
</div><!--/.row-->
<div id="el-quads-above-fold-block-9458878-t" data-zone="Don&#039;t Miss" class="river-group extra-items elsewhere four-col full-width-content">


  <div class="extra-items-header">
    <h2>Don&#039;t Miss</h2>
  </div>
<div class="four-col-single first has-image">  <a id="el-above-fold-block-9458878-12791982-i" href="https://www.seattletimes.com/sports/seahawks/seahawks-may-be-focusing-on-carlos-hyde-to-add-to-running-back-corps/">
    <img  class='lazy ' alt='Houston Texans running back Carlos Hyde (23) carries the ball during the first half of an NFL divisional playoff football game against the Kansas City Chiefs, in Kansas City, Mo., Sunday, Jan. 12, 2020. (AP Photo/Charlie Riedel)' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='Houston Texans running back Carlos Hyde (23) carries the ball during the first half of an NFL divisional playoff football game against the Kansas City Chiefs, in Kansas City, Mo., Sunday, Jan. 12, 2020. (AP Photo/Charlie Riedel)' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_144809-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Seahawks          </div>

    <h3><a id="el-above-fold-block-9458878-12791982-t" href="https://www.seattletimes.com/sports/seahawks/seahawks-may-be-focusing-on-carlos-hyde-to-add-to-running-back-corps/">Seahawks to sign Carlos Hyde to one-year contract</a></h3>

      </div>
</div>
<div class="four-col-single has-image">  <a id="el-above-fold-block-9458878-12792546-i" href="https://www.seattletimes.com/business/retail/pcc-markets-ceo-cate-hardy-leaving-to-run-huge-wine-company/">
    <img  class='lazy ' alt='Cate Hardy, chief executive officer of PCC Natural Markets, Thursday, March 24, 2016, at Green Lake Village branch in Seattle.' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='Cate Hardy, chief executive officer of PCC Natural Markets, Thursday, March 24, 2016, at Green Lake Village branch in Seattle.' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_165710-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Retail          </div>

    <h3><a id="el-above-fold-block-9458878-12792546-t" href="https://www.seattletimes.com/business/retail/pcc-markets-ceo-cate-hardy-leaving-to-run-huge-wine-company/">PCC Markets CEO Cate Hardy leaving to run huge wine company</a></h3>

      </div>
</div>
<div class="four-col-single has-image">  <a id="el-above-fold-block-9458878-12792215-i" href="https://www.seattletimes.com/sports/seahawks/russell-wilson-may-want-to-add-antonio-brown-but-a-lot-would-have-to-happen-first/">
    <img  class='lazy ' alt='FILE &#8211; In this Sunday, Sept. 15, 2019, file photo, New England Patriots wide receiver Antonio Brown (17) on the sidelines,during the first half at an NFL football game against the Miami Dolphins in Miami Gardens, Fla. The Patriots released Brown on Friday, Sept. 20, 2019. (AP Photo/Lynne Sladky, File) NYDD217 NYDD217' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='FILE &#8211; In this Sunday, Sept. 15, 2019, file photo, New England Patriots wide receiver Antonio Brown (17) on the sidelines,during the first half at an NFL football game against the Miami Dolphins in Miami Gardens, Fla. The Patriots released Brown on Friday, Sept. 20, 2019. (AP Photo/Lynne Sladky, File) NYDD217 NYDD217' src='https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2019/09/tzr_155111-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Seahawks          </div>

    <h3><a id="el-above-fold-block-9458878-12792215-t" href="https://www.seattletimes.com/sports/seahawks/russell-wilson-may-want-to-add-antonio-brown-but-a-lot-would-have-to-happen-first/">Russell Wilson may want Seahawks to sign Antonio Brown, but a lot would have to happen first</a></h3>

      </div>
</div>
<div class="four-col-single has-image">  <a id="el-above-fold-block-9458878-12788850-i" href="https://www.seattletimes.com/opinion/editorials/faa-needs-stronger-safety-process/">
    <img  class='lazy ' alt='' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-MAX-victims-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Editorial          </div>

    <h3><a id="el-above-fold-block-9458878-12788850-t" href="https://www.seattletimes.com/opinion/editorials/faa-needs-stronger-safety-process/">FAA needs stronger safety process</a></h3>

      </div>
</div>
</div>


      <div class="homepage-recirculation-widget"></div>

      <div id="el-spokenlayer-audio-player-block-below-fold-block-12794165-t" data-zone="SpokenLayer Audio Player Block" class="full-width-content elsewhere audio-block full-width-content">
  <div class="spokenlayer-audio-player-block-container">
    <div class="spokenlayer-audio-player-block-border u-border-light-gray u-border-t u-border-b u-df flex-row align-items-baseline">
      <div class="spokenlayer-content-container-inline pr-3">
        <div class="spokenlayer-audio-player-block-title pt-3 font-large u-sans u-bold">
          The Seattle Times daily audio briefing
        </div>
        <div class="spokenlayer-audio-player-block-description pt-3 font-list">
          Stay connected to the Pacific Northwest without missing a beat. The Seattle Times delivers top stories from
          around the region every weekday morning in just a few minutes.
        </div>
        <div class="spokenlayer-buttons u-df pt-3">
          <a class="st-button spokenlayer-instructions-button mt-2 mr-2 u-tc" href="https://www.seattletimes.com/inside-the-times/listen-to-the-seattle-times-on-smart-speakers-and-podcast-apps/">Listen on smart speaker</a>

          <div class="st-dropdown spokenlayer-subscribe-menu dropdown--no-header" data-stui="dropdown">
          <button class="st-dropdown_toggle spokenlayer-subscribe-button st-button mt-2" aria-haspopup="true" aria-expanded="false">Subscribe to audio brief</i></button>
          <ul class="spokenlayer-subscribe-list st-dropdown_menu">
            <li class="st-dropdown_item"><a href="https://podcasts.apple.com/us/podcast/seattle-times/id1491068029">Apple Podcasts</a></li>
            <li class="st-dropdown_item"><a href="https://play.google.com/music/listen?u=0#/ps/Ij7354dzgxyshbgngoka5fgls3a">Google Play</a></li>
            <li class="st-dropdown_item"><a href="https://open.spotify.com/show/4SLMP0n5lb2yDrPUYoTaXA?si=M9P-YtULSp6Anan2Jp1lFQ">Spotify</a></li>
            <li class="st-dropdown_item"><a href="https://www.iheart.com/podcast/339-seattle-times-54093143/">iHeart Radio</a></li>
            <li class="st-dropdown_item"><a href="https://overcast.fm/itunes1491068029/seattle-times">Overcast</a></li>
          </ul>
          </div>
        </div>

        <div class="spokenlayer-player align-self-center mv-3 u-border u-border-light-gray">
          <iframe class="spokenlayer-frame pl-1 pt-1" src="https://player.spokenlayer.net/seattle-times" height="90px" width="100%" style="border: none"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="ad full-width show-desktop"><zeus-ad id='zeus_middle' class='' ></zeus-ad></div><div id="el-local-news-politics-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-local-news-politics" class="section-block river-group subsection full-width-content">

<h2><a id="el-local-news-politics-h" href="/seattle-news/"><span class="zone_title">Local News &amp; Politics</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-local-news-politics-12781595-i" href="https://www.seattletimes.com/seattle-news/data/census-seattle-drops-out-of-top-5-for-growth-among-major-u-s-cities/">
        <img  class='lazy ' alt='Sundown had brilliant reds over Elliott Bay, but a deep moody blue over downtown, as seen from Kerry Park, Wednesday, Feb. 26, 2020 in Seattle. 213122' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='Sundown had brilliant reds over Elliott Bay, but a deep moody blue over downtown, as seen from Kerry Park, Wednesday, Feb. 26, 2020 in Seattle. 213122' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05202020_teaser_tzr_105801-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-local-news-politics-12781595-t" href='https://www.seattletimes.com/seattle-news/data/census-seattle-drops-out-of-top-5-for-growth-among-major-u-s-cities/'>Seattle drops out of top 5 for growth among major U.S. cities; here are the new leaders | FYI Guy</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-local-news-politics-12792041-medialink-t" href='https://www.seattletimes.com/seattle-news/crime/purported-leader-of-neo-nazi-group-atomwaffen-wants-out-of-detention-in-seatac-feds-oppose-release/'>Purported leader of neo-Nazi group Atomwaffen wants out of detention in SeaTac; feds oppose release</a>          </li>

  <li>
        <a id="el-local-news-politics-12792640-medialink-t" href='https://www.seattletimes.com/seattle-news/crime/man-charged-with-killing-motorcyclist-in-north-seattle-while-awaiting-trial-for-vehicular-assault/'>Man charged with killing motorcyclist in North Seattle while awaiting trial for vehicular assault</a>          </li>

  <li>
        <a id="el-local-news-politics-12789100-medialink-t" href='https://www.seattletimes.com/seattle-news/health/washington-states-actual-coronavirus-death-toll-may-be-higher-than-current-tallies-health-officials-say/'>Washington state&#8217;s actual coronavirus death toll may be higher than current tallies, health officials say</a>          </li>

  <li>
        <a id="el-local-news-politics-12791860-medialink-t" href='https://www.seattletimes.com/seattle-news/olympia-hotel-burns-displacing-dozens-of-homeless-guests-and-some-covid-19-families/'>Olympia hotel burns, displacing dozens of homeless guests and some families with coronavirus</a>          </li>

  <li>
        <a id="el-local-news-politics-12787493-medialink-t" href='https://www.seattletimes.com/seattle-news/wolves-attack-2-more-calves-in-eastern-washington-state-may-take-action/'>Wolves attack 2 more calves in Eastern Washington; state may take action</a>          </li>
<li><div id="ad-headline-hp-local" class="tertiary ad"><zeus-ad id="zeus_headline-hp-local" class="ad"></zeus-ad></div></li></ul></div>            <div class="subsection-callout">
            <figure class="round">
              <img  class='lazy ' alt='Featured Columnist' src='data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=' data-src ='https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-780x780.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-300x300.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-150x150.jpg 150w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-768x768.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-1024x1024.jpg 1024w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-100x100.jpg 100w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-780x780.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-1020x1020.jpg 1020w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-316x316.jpg 316w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-375x375.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2.jpg 1136w' data-sizes='100px' /><noscript><img  class='' alt='Featured Columnist' src='https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-780x780.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-300x300.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-150x150.jpg 150w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-768x768.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-1024x1024.jpg 1024w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-100x100.jpg 100w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-780x780.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-1020x1020.jpg 1020w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-316x316.jpg 316w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2-375x375.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2014/10/westneat_square_mug2.jpg 1136w' sizes='100px' data-sizes='100px' /></noscript>            </figure>
                    <div class="slug"><a href="https://www.seattletimes.com/author/danny-westneat/" title="Posts by Danny Westneat" class="url fn" rel="author">Danny Westneat</a></div>
          <h3><a id="el-local-news-politics-12788911-t" href="https://www.seattletimes.com/seattle-news/politics/will-we-go-back-or-is-the-coronavirus-forging-a-new-political-reality-the-first-verdict-is-in/">Oregon&#8217;s vote for big new taxes to aid the homeless ups the urgency in Seattle</a></h3>
        </div>

       <ul class="subsection-links horizontal-list-menu"><li><a id="el-local-news-politics-politics-hl" href="/seattle-news/politics/">Politics</a></li><li><a id="el-local-news-politics-crime-hl" href="/seattle-news/crime/">Crime</a></li><li><a id="el-local-news-politics-traffic-lab-hl" href="/seattle-news/transportation/">Traffic Lab</a></li><li><a id="el-local-news-politics-columnists-hl" href="/newsroom-staff/#news-columnists">Columnists</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      
<div class="mini-text-block-stacked-news-group subsection mini-content  mini-text-news-block-group-padding" id="mini-content-Local-News-&amp;-Politics-1" data-zone="Project-Homeless">
  <h2><a id="el-local-news-politics-mini-text-block-stacked-news-header-h" href="/seattle-news/homeless">Project Homeless</a></h2>        <div class="partner-story first">
          <p><a id="el-local-news-politics-12682222-t" href="https://www.seattletimes.com/seattle-news/homeless/coronavirus-pushed-seattle-to-treat-homelessness-differently-will-those-changes-last/">Coronavirus pushed Seattle to treat homelessness differently. Will those changes last?</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-local-news-politics-12701530-t" href="https://www.seattletimes.com/seattle-news/homeless/stimulus-checks-will-help-homeless-seattleites-but-not-into-housing-experts-say/">Stimulus checks will help homeless Seattleites — but not into housing, experts say</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-local-news-politics-12735604-t" href="https://www.seattletimes.com/seattle-news/homeless/seattle-officials-clear-ballard-encampment-raising-concerns-about-where-homeless-can-go-during-coronavirus-pandemic/">Seattle officials clear Ballard encampment, raising concerns about where homeless can go during coronavirus pandemic</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-local-news-politics-12738307-t" href="https://www.seattletimes.com/seattle-news/homeless/appeals-court-ruling-could-discourage-seattle-from-towing-vehicles-people-live-in-attorney-says/">Appeals court ruling could discourage Seattle from towing vehicles people live in, attorney says</a></p>
        </div>
              <div class="partner-story ">
          <p><a id="el-local-news-politics-12688926-t" href="https://www.seattletimes.com/seattle-news/politics/with-may-rent-looming-some-seattle-tenants-eye-rent-strikes-as-coronavirus-continues-to-upend-lives/">With May rent looming, some Seattle tenants eye &#8216;rent strikes&#8217; as coronavirus continues to upend lives</a></p>
        </div>
      </div>

<div class="mini-text-block-group subsection mini-content" id="mini-content-Local-News-&amp;-Politics-2">
</div>
  </div>
</div><!--/.row-->
<div id="el-business-tech-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-business-tech" class="section-block river-group subsection full-width-content">

<h2><a id="el-business-tech-h" href="/business/"><span class="zone_title">Business &amp; Tech</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-business-tech-12784986-i" href="https://www.seattletimes.com/business/technology/everything-you-need-to-know-about-slow-internet-speeds/">
        <img  class='lazy ' alt='Restricted to our homes for months now, many of us have been putting up with a persistent annoyance: a lousy internet connection. As people have hunkered down to contain the spread of the coronavirus, average internet speeds all over the world have slowed. (Glenn Harvey/The New York Times) &#8212; FOR USE ONLY WITH NYT STORY SLUGGED TECH FIX BY BRIAN X. CHEN FOR MAY 20, 2020 &#8212; ALL OTHER USE PROHIBITED. &#8212; XNYT21 XNYT21' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='Restricted to our homes for months now, many of us have been putting up with a persistent annoyance: a lousy internet connection. As people have hunkered down to contain the spread of the coronavirus, average internet speeds all over the world have slowed. (Glenn Harvey/The New York Times) &#8212; FOR USE ONLY WITH NYT STORY SLUGGED TECH FIX BY BRIAN X. CHEN FOR MAY 20, 2020 &#8212; ALL OTHER USE PROHIBITED. &#8212; XNYT21 XNYT21' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_netspeedChen_tzr_tzr_003320-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-business-tech-12784986-t" href='https://www.seattletimes.com/business/technology/everything-you-need-to-know-about-slow-internet-speeds/'>Everything you need to know about slow internet speeds</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-business-tech-12786279-medialink-t" href='https://www.seattletimes.com/business/local-business/a-dream-come-true-original-players-rescue-hipster-chain-rudys-barbershop-from-bankruptcy/'>&#8216;A dream come true&#8217;: Original players rescue hipster chain Rudy&#8217;s Barbershop from bankruptcy</a>          </li>

  <li>
        <a id="el-business-tech-12791845-medialink-t" href='https://www.seattletimes.com/business/boeing-aerospace/mitsubishi-will-close-its-washington-state-operations-as-its-slashes-spacejet-budget/'>Mitsubishi cuts hundreds of jobs, shuts Washington operations as it slashes SpaceJet budget</a>          </li>

  <li>
        <a id="el-business-tech-12792546-medialink-t" href='https://www.seattletimes.com/business/retail/pcc-markets-ceo-cate-hardy-leaving-to-run-huge-wine-company/'>PCC Markets CEO Cate Hardy leaving to run huge wine company</a>          </li>

  <li>
        <a id="el-business-tech-12773378-medialink-t" href='https://www.seattletimes.com/business/one-side-effect-of-the-coronavirus-free-credit-reports-each-week/'>One side effect of the coronavirus: Free credit reports each week</a>          </li>

  <li>
        <a id="el-business-tech-12787982-medialink-t" href='https://www.seattletimes.com/business/technology/how-do-i-protect-an-older-computer-against-malware/'>How do I protect an older computer against malware? | Tech Q&A with Patrick Marshall</a>          </li>
</ul></div>            <div class="subsection-callout">
            <figure class="round">
              <img  class='lazy ' alt='Featured Columnist' src='data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=' data-src ='https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-375x374.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-300x299.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-150x150.jpg 150w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-100x100.jpg 100w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-316x316.jpg 316w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-375x374.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2.jpg 395w' data-sizes='100px' /><noscript><img  class='' alt='Featured Columnist' src='https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-375x374.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-300x299.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-150x150.jpg 150w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-100x100.jpg 100w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-316x316.jpg 316w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2-375x374.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2014/10/talton_square_mug2.jpg 395w' sizes='100px' data-sizes='100px' /></noscript>            </figure>
                    <div class="slug"><a href="https://www.seattletimes.com/author/jon-talton/" title="Posts by Jon Talton" class="url fn" rel="author">Jon Talton</a></div>
          <h3><a id="el-business-tech-12785782-t" href="https://www.seattletimes.com/business/for-america-and-china-breaking-up-is-hard-to-do/">For America and China, breaking up is hard to do</a></h3>
        </div>

       <ul class="subsection-links horizontal-list-menu"><li><a id="el-business-tech-amazon-hl" href="/business/amazon/">Amazon</a></li><li><a id="el-business-tech-boeing-hl" href="/business/boeing-aerospace/">Boeing</a></li><li><a id="el-business-tech-microsoft-hl" href="/business/microsoft/">Microsoft</a></li><li><a id="el-business-tech-real-estate-hl" href="/business/real-estate/">Real Estate</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      <zeus-ad id="zeus_right1" class="ad"></zeus-ad>  </div>
</div><!--/.row-->

<div class="five-col-explore explore-quintuplets explore-block native-block">
    <div class="explore-block-disclaimer">PRODUCED BY THE SEATTLE TIMES CONTENT STUDIO</div>
  <div id="el-quintuplets-native-below-fold-block-12794165-t" data-zone="Sponsored" class="river-group extra-items elsewhere five-col full-width-content">

    <div class="extra-items-header">
      <h2><a id="el-sponsored-h"  href="/sponsored/">Sponsored</a></h2>    </div>
    <div class="five-col-single first has-image">
      <div id="ad-explore-top-hp1">
                  <zeus-ad id="zeus_explore-top-hp1" class="ad"></zeus-ad>
              </div>
    </div>
    <div class="five-col-single has-image">
      <div id="ad-explore-top-hp2">
                  <zeus-ad id="zeus_explore-top-hp2" class="ad"></zeus-ad>
              </div>
    </div>
    <div class="five-col-single has-image">
      <div id="ad-explore-top-hp3">
                  <zeus-ad id="zeus_explore-top-hp3" class="ad"></zeus-ad>
              </div>
    </div>
    <div class="five-col-single has-image">
      <div id="ad-explore-top-hp4">
                  <zeus-ad id="zeus_explore-top-hp4" class="ad"></zeus-ad>
              </div>
    </div>
    <div class="five-col-single has-image">
      <div id="ad-explore-top-hp5">
                  <zeus-ad id="zeus_explore-top-hp5" class="ad"></zeus-ad>
              </div>
    </div>
  </div>
</div>
<div id="el-nation-world-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-nation-world" class="section-block river-group subsection full-width-content">

<h2><a id="el-nation-world-h" href="/nation-world/"><span class="zone_title">Nation &amp; World</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-nation-world-12790432-i" href="https://www.seattletimes.com/seattle-news/biden-accusers-life-marred-by-abuse-and-financial-hardship/">
        <img  class='lazy ' alt='FILE &#8212; Tara Reade at a horse stable in Penn Valley, Calif., on April 11, 2020. Reade complained to her ex-husband during the 1990s that she had been a victim of sexual harassment while working in Joe Biden&#8217;s Senate office, court records show, providing the first contemporaneous record supporting her claims that sexual misconduct occurred when she was worked for Biden. (Max Whittaker/The New York Times) XNYT16 XNYT16' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='FILE &#8212; Tara Reade at a horse stable in Penn Valley, Calif., on April 11, 2020. Reade complained to her ex-husband during the 1990s that she had been a victim of sexual harassment while working in Joe Biden&#8217;s Senate office, court records show, providing the first contemporaneous record supporting her claims that sexual misconduct occurred when she was worked for Biden. (Max Whittaker/The New York Times) XNYT16 XNYT16' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05222020_reade-APlife_tzr_162252-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-nation-world-12790432-t" href='https://www.seattletimes.com/seattle-news/biden-accusers-life-marred-by-abuse-and-financial-hardship/'>Biden accuser&#8217;s life marred by abuse and financial hardship</a> <a href="https://www.seattletimes.com/seattle-news/biden-accusers-life-marred-by-abuse-and-financial-hardship/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-nation-world-12792726-medialink-t" href='https://www.seattletimes.com/nation-world/trump-administration-discussed-conducting-first-u-s-nuclear-test-in-decades/'>Trump administration discussed conducting first U.S. nuclear test in decades</a>          </li>

  <li>
        <a id="el-nation-world-12790154-medialink-t" href='https://www.seattletimes.com/seattle-news/health/san-francisco-sanctions-once-shunned-homeless-encampments/'>San Francisco sanctions once-shunned homeless encampments</a>     <a href="https://www.seattletimes.com/seattle-news/health/san-francisco-sanctions-once-shunned-homeless-encampments/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a>      </li>

  <li>
        <a id="el-nation-world-12791818-medialink-t" href='https://www.seattletimes.com/nation-world/lionhearted-girl-bikes-dad-across-india-inspiring-a-nation/'>‘Lionhearted’ girl bikes dad across India, inspiring a nation</a>          </li>

  <li>
        <a id="el-nation-world-12791067-medialink-t" href='https://www.seattletimes.com/nation-world/nation-politics/biden-if-you-cant-choose-me-over-trump-you-aint-black/'>Biden says he was too 'cavalier' in comment about Black supporters of Trump</a>          </li>

  <li>
        <a id="el-nation-world-12791618-medialink-t" href='https://www.seattletimes.com/nation-world/nation-politics/trump-calls-on-churches-to-reopen-this-weekend/'>Trump says he will 'override' governors who reject his call to reopen houses of worship this weekend</a>     <a href="https://www.seattletimes.com/nation-world/nation-politics/trump-calls-on-churches-to-reopen-this-weekend/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a>      </li>

  <li>
        <a id="el-nation-world-12790588-medialink-t" href='https://www.seattletimes.com/nation-world/pakistani-passenger-plane-crashes-near-karachi-107-on-board/'>Pakistan jet with 98 aboard crashes in crowded neighborhood</a>     <a href="https://www.seattletimes.com/nation-world/pakistani-passenger-plane-crashes-near-karachi-107-on-board/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a>      </li>

  <li>
        <a id="el-nation-world-12791744-medialink-t" href='https://www.seattletimes.com/nation-world/nation-politics/fbi-director-orders-internal-review-of-flynn-investigation/'>FBI director orders internal review of Flynn investigation</a>          </li>
<li><div id="ad-headline-hp-nation" class="tertiary ad"><zeus-ad id="zeus_headline-hp-nation" class="ad"></zeus-ad></div></li></ul></div><ul class="subsection-links horizontal-list-menu"><li><a id="el-nation-world-national-politics-hl" href="/nation-world/nation-politics/">National Politics</a></li><li><a id="el-nation-world-oddities-hl" href="/nation-world/oddities/">Oddities</a></li><li><a id="el-nation-world-consumer-news-hl" href="/tag/consumer-news/">Consumer News</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
            <div data-section="" class="most-read-container trending-group module article-aside story-list most-shared show article-aside story-list">
        <div class="most-read-wrapper">
          <h3>Most Read Stories</h3>
          <ul>
                      <li class="u-relative pv-1 pl-3 most-read-widget-item most-read-widget-item-1">
            <a class="no-image u-href font-list u-off-black 1" href="//www.seattletimes.com/life/when-can-you-get-a-haircut-see-a-doctor-shop-retail-and-more-in-washington-state/"><span>Reopening phases in Washington state: When you can get a haircut, go to the gym, or eat at restaurants as coronavirus lockdowns are lifted  </span></a>
          </li>          <li class="u-relative pv-1 pl-3 most-read-widget-item most-read-widget-item-2">
            <a class="no-image u-href font-list u-off-black 1" href="//www.seattletimes.com/business/economy/washington-adds-more-than-145000-weekly-jobless-claims-as-coronavirus-crisis-lingers/"><span>'Hundreds of millions of dollars' lost in Washington to unemployment fraud amid coronavirus joblessness surge  </span></a>
          </li>          <li class="u-relative pv-1 pl-3 most-read-widget-item most-read-widget-item-3">
            <a class="no-image u-href font-list u-off-black 1" href="//www.seattletimes.com/seattle-news/health/coronavirus-daily-news-updates-may-22-what-to-know-today-about-covid-19-in-the-seattle-area-washington-state-and-the-nation/"><span>Coronavirus daily news updates, May 22: What to know today about COVID-19 in the Seattle area, Washington state and the nation  </span></a>
          </li>          <li class="u-relative pv-1 pl-3 most-read-widget-item most-read-widget-item-4">
            <a class="no-image u-href font-list u-off-black 1" href="//www.seattletimes.com/seattle-news/politics/inslee-some-washington-counties-wont-move-to-second-phase-of-coronavirus-reopening-plan-by-june-1/"><span>Inslee:  Some Washington counties won't move to second phase of coronavirus reopening plan on June 1  </span></a>
          </li>          <li class="u-relative pv-1 pl-3 most-read-widget-item most-read-widget-item-5">
            <a class="no-image u-href font-list u-off-black 1" href="//www.seattletimes.com/seattle-news/data/census-seattle-drops-out-of-top-5-for-growth-among-major-u-s-cities/"><span>Seattle drops out of top 5 for growth among major U.S. cities; here are the new leaders  </span></a>
          </li>
          </ul>
          
        </div>
      </div>  </div>
</div><!--/.row-->
<div id="el-times-watchdog-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-times-watchdog" class="section-block river-group subsection full-width-content">

<h2><a id="el-times-watchdog-h" href="/seattle-news/times-watchdog/"><span class="zone_title">Times Watchdog</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-times-watchdog-12762046-i" href="https://www.seattletimes.com/seattle-news/times-watchdog/washington-state-ordered-227-5-million-in-coronavirus-supplies-from-a-chinese-manufacturer-but-orders-have-trickled-in/">
        <img  class='lazy ' alt='Medical masks and protection products, April 1, 2020. The eruption in demand for dwindling amounts of masks has resulted in a kind of global supply-chain bedlam. (Shane Lavalette/The New York Times) XNYT77 XNYT77 XNYT77' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='Medical masks and protection products, April 1, 2020. The eruption in demand for dwindling amounts of masks has resulted in a kind of global supply-chain bedlam. (Shane Lavalette/The New York Times) XNYT77 XNYT77 XNYT77' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05152020_TZR_PPE_tzr_124847-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-times-watchdog-12762046-t" href='https://www.seattletimes.com/seattle-news/times-watchdog/washington-state-ordered-227-5-million-in-coronavirus-supplies-from-a-chinese-manufacturer-but-orders-have-trickled-in/'>Washington state ordered $227.5 million in coronavirus supplies from a Chinese firm, but deliveries have trickled in</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-times-watchdog-12762113-medialink-t" href='https://www.seattletimes.com/seattle-news/from-the-editor-why-it-takes-local-journalism-to-uncover-national-scandals-like-the-boeing-737-max-disaster/'>From the editor: Why it takes local journalism to uncover national scandals like the Boeing 737 MAX disaster</a>          </li>

  <li>
        <a id="el-times-watchdog-12704997-medialink-t" href='https://www.seattletimes.com/seattle-news/times-watchdog/despite-gov-inslees-order-and-complaints-from-the-public-home-construction-projects-kept-swinging-hammers-during-coronavirus-lockdown/'>Home construction ban wasn't enforced, even after hundreds of complaints | Times Watchdog</a>          </li>

  <li>
        <a id="el-times-watchdog-12724534-medialink-t" href='https://www.seattletimes.com/seattle-news/times-watchdog/washington-seems-to-be-avoiding-the-dramatic-nationwide-spike-in-deaths-during-coronavirus-pandemic/'>Washington seems to be avoiding the dramatic nationwide spike in deaths during coronavirus pandemic</a>          </li>

  <li>
        <a id="el-times-watchdog-12721695-medialink-t" href='https://www.seattletimes.com/seattle-news/times-watchdog/in-hunt-for-coronavirus-supplies-gov-inslee-looks-globally-and-within-his-personal-network/'>Gov. Inslee connected personal contacts with state officials in hunt for coronavirus supplies</a>          </li>

  <li>
        <a id="el-times-watchdog-12676089-medialink-t" href='https://www.seattletimes.com/seattle-news/health/at-burien-mental-health-facility-for-teens-a-rare-coronavirus-outbreak-and-a-death/'>At Burien mental-health facility for teens, a rare coronavirus outbreak and a death</a>          </li>
</ul></div><ul class="subsection-links horizontal-list-menu"><li><a id="el-times-watchdog-full-coronavirus-coverage-hl" href="https://www.seattletimes.com/tag/coronavirus/">Full coronavirus coverage</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      <zeus-ad id="zeus_right2" class="ad"></zeus-ad>  </div>
</div><!--/.row-->


<div id="bcplaylist-1663908451337584036" class="scrolling-quads video-block river-group extra-items elsewhere full-width-content"
     data-total-videos="66"
     data-api-url="https://vendorapi.seattletimes.com/st/proxy-api/v1.0/"
     data-playlist-id="1663908451337584036"
     data-playlist-name="Coronavirus+Video">
  <div class="extra-items-header">
    <div class="scrolling-quad-arrow left inactive"><i class="icon-chevron-thin-left"></i></div>
    <div class="scrolling-quad-arrow right"><i class="icon-chevron-thin-right"></i></div>
    <h2>Coronavirus Video</h2>
  </div>
  <div class="scrolling-quads-container">
        <div id="bcvideo-6157205916001" class="scrolling-quads-item has-image"
         data-videoslug="no-safety-net-for-our-art-a-musician-copes-with-loss-of-work-during-pandemic"
         data-videoid="6157205916001"
         data-videodescription="When COVID-19 began to crush Guayaba's music goals for 2020, they changed course and found a new outlet for creativity. (Ramon Dompor / The Seattle Times)"
         data-related-text=""
         data-related-url="https://www.seattletimes.com/seattle-news/losing-jobs-finding-resilience-how-seattle-workers-are-battling-through-coronavirus-employment/"
         data-social-image="https://brightcove.hs.llnwd.net/v2/unsecured/media/1509317113/202005/2648/1509317113_6157187621001_6157205916001-vs.jpg?pubId=1509317113&videoId=6157205916001">
      <a class="img-container" href="/video/6157205916001/no-safety-net-for-our-art-a-musician-copes-with-loss-of-work-during-pandemic/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="When COVID-19 began to crush Guayaba's music goals for 2020, they changed course and found a new outlet for creativity. (Ramon Dompor / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6157187621001_6157205916001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6157187621001_6157205916001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6157187621001_6157205916001-vs-300x192.jpg" alt="When COVID-19 began to crush Guayaba's music goals for 2020, they changed course and found a new outlet for creativity. (Ramon Dompor / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6157205916001/no-safety-net-for-our-art-a-musician-copes-with-loss-of-work-during-pandemic/?vpln=Coronavirus&vplid=1663908451337584036">'No safety net for our art': A musician copes with loss of work...</a>
          <span class="video-duration">(1:51)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6157069676001" class="scrolling-quads-item has-image"
         data-videoslug="the-pandemic-caused-a-potato-surplus-now-farmers-give-them-away"
         data-videoid="6157069676001"
         data-videodescription="When COVID-19 shutdown potato processors, the Washington Potato Commission found it had too many spuds to keep in storage. To avoid food waste, the Emergency Food Network worked to giveaway 200,000 pounds of spuds. (Ramon Dompor / The Seattle Times)"
         data-related-text=""
         data-related-url="https://www.seattletimes.com/seattle-news/states-spud-surplus-being-given-away-amid-coronavirus-shutdown/"
         data-social-image="https://brightcove.hs.llnwd.net/v2/unsecured/media/1509317113/202005/3704/1509317113_6157066031001_6157069676001-vs.jpg?pubId=1509317113&videoId=6157069676001">
      <a class="img-container" href="/video/6157069676001/the-pandemic-caused-a-potato-surplus-now-farmers-give-them-away/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="When COVID-19 shutdown potato processors, the Washington Potato Commission found it had too many spuds to keep in storage. To avoid food waste, the Emergency Food Network worked to giveaway 200,000 pounds of spuds. (Ramon Dompor / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6157066031001_6157069676001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6157066031001_6157069676001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6157066031001_6157069676001-vs-300x192.jpg" alt="When COVID-19 shutdown potato processors, the Washington Potato Commission found it had too many spuds to keep in storage. To avoid food waste, the Emergency Food Network worked to giveaway 200,000 pounds of spuds. (Ramon Dompor / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6157069676001/the-pandemic-caused-a-potato-surplus-now-farmers-give-them-away/?vpln=Coronavirus&vplid=1663908451337584036">The pandemic caused a potato surplus, now farmers give them away </a>
          <span class="video-duration">(1:49)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6156799105001" class="scrolling-quads-item has-image"
         data-videoslug="dancing-through-the-pandemic-in-a-homemade-studio"
         data-videoid="6156799105001"
         data-videodescription="When the novel coronavirus outbreak canceled the rest of their season, Pacific Northwest Ballet dancers Sarah-Gabrielle Ryan and Kyle Davis built a ballet studio in their living room and started teaching via Zoom. (Corinne Chin / The Seattle Times)"
         data-related-text=""
         data-related-url=""
         data-social-image="https://brightcove.hs.llnwd.net/v2/unsecured/media/1509317113/202005/336/1509317113_6156803275001_6156799105001-vs.jpg?pubId=1509317113&videoId=6156799105001">
      <a class="img-container" href="/video/6156799105001/dancing-through-the-pandemic-in-a-homemade-studio/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="When the novel coronavirus outbreak canceled the rest of their season, Pacific Northwest Ballet dancers Sarah-Gabrielle Ryan and Kyle Davis built a ballet studio in their living room and started teaching via Zoom. (Corinne Chin / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6156803275001_6156799105001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6156803275001_6156799105001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6156803275001_6156799105001-vs-300x192.jpg" alt="When the novel coronavirus outbreak canceled the rest of their season, Pacific Northwest Ballet dancers Sarah-Gabrielle Ryan and Kyle Davis built a ballet studio in their living room and started teaching via Zoom. (Corinne Chin / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6156799105001/dancing-through-the-pandemic-in-a-homemade-studio/?vpln=Coronavirus&vplid=1663908451337584036">Dancing through the pandemic &ndash;&nbsp;in a homemade studio</a>
          <span class="video-duration">(2:39)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6155354348001" class="scrolling-quads-item has-image"
         data-videoslug="er-nurse-i-dont-want-to-bring-the-virus-home"
         data-videoid="6155354348001"
         data-videodescription="Tricia Jenkins, an emergency room nurse, and her husband &ndash; also an essential worker &ndash; sent their two kids to live with her mom during the coronavirus pandemic. &quot;I desperately miss my children,&quot; Jenkins said. (Corinne Chin / The Seattle Times)"
         data-related-text=""
         data-related-url=""
         data-social-image="https://brightcove.hs.llnwd.net/v2/unsecured/media/1509317113/202005/456/1509317113_6155405775001_6155354348001-vs.jpg?pubId=1509317113&videoId=6155354348001">
      <a class="img-container" href="/video/6155354348001/er-nurse-i-dont-want-to-bring-the-virus-home/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="Tricia Jenkins, an emergency room nurse, and her husband &ndash; also an essential worker &ndash; sent their two kids to live with her mom during the coronavirus pandemic. &quot;I desperately miss my children,&quot; Jenkins said. (Corinne Chin / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405775001_6155354348001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405775001_6155354348001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405775001_6155354348001-vs-300x192.jpg" alt="Tricia Jenkins, an emergency room nurse, and her husband &ndash; also an essential worker &ndash; sent their two kids to live with her mom during the coronavirus pandemic. &quot;I desperately miss my children,&quot; Jenkins said. (Corinne Chin / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6155354348001/er-nurse-i-dont-want-to-bring-the-virus-home/?vpln=Coronavirus&vplid=1663908451337584036">ER nurse: 'I don't want to bring the virus home'</a>
          <span class="video-duration">(3:12)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6155351474001" class="scrolling-quads-item has-image waiting"
         data-videoslug="night-shift-nurse-nothing-compares-to-this"
         data-videoid="6155351474001"
         data-videodescription="Jessica Esparza became an ICU nurse just as the coronavirus pandemic reached Washington. Previously an oncology nurse, Esparza is often overwhelmed by how ill her COVID-19 patients are &ndash; &quot;Nothing compares to this.&quot; (Corinne Chin / The Seattle Times)"
         data-related-text=""
         data-related-url=""
         data-social-image="https://brightcove.hs.llnwd.net/v2/unsecured/media/1509317113/202005/3640/1509317113_6155405778001_6155351474001-vs.jpg?pubId=1509317113&videoId=6155351474001">
      <a class="img-container" href="/video/6155351474001/night-shift-nurse-nothing-compares-to-this/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="Jessica Esparza became an ICU nurse just as the coronavirus pandemic reached Washington. Previously an oncology nurse, Esparza is often overwhelmed by how ill her COVID-19 patients are &ndash; &quot;Nothing compares to this.&quot; (Corinne Chin / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405778001_6155351474001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405778001_6155351474001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405778001_6155351474001-vs-300x192.jpg" alt="Jessica Esparza became an ICU nurse just as the coronavirus pandemic reached Washington. Previously an oncology nurse, Esparza is often overwhelmed by how ill her COVID-19 patients are &ndash; &quot;Nothing compares to this.&quot; (Corinne Chin / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6155351474001/night-shift-nurse-nothing-compares-to-this/?vpln=Coronavirus&vplid=1663908451337584036">Night shift nurse: 'Nothing compares to this'</a>
          <span class="video-duration">(2:56)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6155351502001" class="scrolling-quads-item has-image waiting"
         data-videoslug="with-pike-place-closed-hmong-flower-farmers-cultivate-resilience"
         data-videoid="6155351502001"
         data-videodescription="After the novel coronavirus outbreak shut down most of Pike Place Market, many Hmong flower farmers were left with nowhere to sell. It&rsquo;s not the first time these families have had to overcome what felt impossible. (Corinne Chin / The Seattle Times)"
         data-related-text="Pike Place Market&rsquo;s Hmong flower farmers adapt during the coronavirus pandemic"
         data-related-url="https://www.seattletimes.com/seattle-news/pike-place-markets-hmong-flower-farmers-adapt-during-the-coronavirus-pandemic/"
         data-social-image="https://brightcove.hs.llnwd.net/v2/unsecured/media/1509317113/202005/3592/1509317113_6155405771001_6155351502001-vs.jpg?pubId=1509317113&videoId=6155351502001">
      <a class="img-container" href="/video/6155351502001/with-pike-place-closed-hmong-flower-farmers-cultivate-resilience/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="After the novel coronavirus outbreak shut down most of Pike Place Market, many Hmong flower farmers were left with nowhere to sell. It&rsquo;s not the first time these families have had to overcome what felt impossible. (Corinne Chin / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405771001_6155351502001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405771001_6155351502001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6155405771001_6155351502001-vs-300x192.jpg" alt="After the novel coronavirus outbreak shut down most of Pike Place Market, many Hmong flower farmers were left with nowhere to sell. It&rsquo;s not the first time these families have had to overcome what felt impossible. (Corinne Chin / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6155351502001/with-pike-place-closed-hmong-flower-farmers-cultivate-resilience/?vpln=Coronavirus&vplid=1663908451337584036">With Pike Place closed, Hmong flower farmers cultivate resilience</a>
          <span class="video-duration">(5:55)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6154518497001" class="scrolling-quads-item has-image waiting"
         data-videoslug="after-62-day-battle-with-covid-19-70-year-old-patient-leaves-hospital-to-boisterous-applause"
         data-videoid="6154518497001"
         data-videodescription="Michael Flor battled with coronavirus for 62 days at Swedish Issaquah. His stay makes him the longest coronavirus patient at a Swedish hospital. (Ramon Dompor / The Seattle Times)"
         data-related-text=""
         data-related-url=""
         data-social-image="https://f1.media.brightcove.com/8/1509317113/1509317113_6154515828001_6154518497001-vs.jpg?pubId=1509317113&videoId=6154518497001">
      <a class="img-container" href="/video/6154518497001/after-62-day-battle-with-covid-19-70-year-old-patient-leaves-hospital-to-boisterous-applause/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="Michael Flor battled with coronavirus for 62 days at Swedish Issaquah. His stay makes him the longest coronavirus patient at a Swedish hospital. (Ramon Dompor / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6154515828001_6154518497001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6154515828001_6154518497001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6154515828001_6154518497001-vs-300x192.jpg" alt="Michael Flor battled with coronavirus for 62 days at Swedish Issaquah. His stay makes him the longest coronavirus patient at a Swedish hospital. (Ramon Dompor / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6154518497001/after-62-day-battle-with-covid-19-70-year-old-patient-leaves-hospital-to-boisterous-applause/?vpln=Coronavirus&vplid=1663908451337584036">After 62-day battle with COVID-19, 70-year-old patient leaves...</a>
          <span class="video-duration">(1:08)</span>
        </h3>
      </div>
    </div>
        <div id="bcvideo-6153776229001" class="scrolling-quads-item has-image waiting"
         data-videoslug="makah-tribe-fights-covid-19-with-isolation-and-self-reliance"
         data-videoid="6153776229001"
         data-videodescription="As a sovereign nation, the Makah tribe leveraged its isolated location to protect the community from the coronavirus. Tribal members offer a look into life on the reservation  while it's closed to outsiders.  (Lauren Frohne / The Seattle Times)"
         data-related-text="Makah tribe fights coronavirus with self-reliance and extreme isolation"
         data-related-url="https://www.seattletimes.com/seattle-news/makah-tribe-fights-coronavirus-with-self-reliance-and-extreme-isolation/"
         data-social-image="https://f1.media.brightcove.com/8/1509317113/1509317113_6153753823001_6153776229001-vs.jpg?pubId=1509317113&videoId=6153776229001">
      <a class="img-container" href="/video/6153776229001/makah-tribe-fights-covid-19-with-isolation-and-self-reliance/?vpln=Coronavirus&vplid=1663908451337584036">
        <img class="teaser lazy" alt="As a sovereign nation, the Makah tribe leveraged its isolated location to protect the community from the coronavirus. Tribal members offer a look into life on the reservation  while it's closed to outsiders.  (Lauren Frohne / The Seattle Times)"
             src="https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png"
             data-src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6153753823001_6153776229001-vs-300x192.jpg"
             data-srcset="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6153753823001_6153776229001-vs-300x192.jpg  300w"
             data-sizes="(max-width: 767px) calc((100vw - 20px) * .32), (max-width: 1044px) calc((100vw - 60px) * .23), 228px"
        >
        <noscript>
            &lt;img class="teaser " src="https://static.seattletimes.com/wp-content/uploads/2020/05/1509317113_6153753823001_6153776229001-vs-300x192.jpg" alt="As a sovereign nation, the Makah tribe leveraged its isolated location to protect the community from the coronavirus. Tribal members offer a look into life on the reservation  while it's closed to outsiders.  (Lauren Frohne / The Seattle Times)" /&gt;
        </noscript>
      </a>
      <div class="four-col-text">
        <h3><a class="video-title" href="/video/6153776229001/makah-tribe-fights-covid-19-with-isolation-and-self-reliance/?vpln=Coronavirus&vplid=1663908451337584036">Makah tribe fights COVID-19 with isolation and self-reliance</a>
          <span class="video-duration">(4:24)</span>
        </h3>
      </div>
    </div>
      </div>
  <a class="show-more-button next">View More</a>
</div><div id="el-food-drink-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-food-drink" class="section-block river-group subsection full-width-content">

<h2><a id="el-food-drink-h" href="/life/food-drink/"><span class="zone_title">Food &amp; Drink</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-food-drink-12765783-i" href="https://www.seattletimes.com/life/food-drink/cleaner-air-menus-on-your-phone-how-will-seattles-restaurants-adapt-to-the-post-coronavirus-shutdown-era/">
        <img  class='lazy ' alt='XCJ (Xiao Chi Jie) owner Caleb Wang demonstrates a soup dumpling order at the counter kiosk of the fast-casual restaurant Monday, May 18, 2020 in Bellevue. Gloves and sanitizer are nearby. (Ken Lambert/The Seattle Times)' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='XCJ (Xiao Chi Jie) owner Caleb Wang demonstrates a soup dumpling order at the counter kiosk of the fast-casual restaurant Monday, May 18, 2020 in Bellevue. Gloves and sanitizer are nearby. (Ken Lambert/The Seattle Times)' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_190326-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-food-drink-12765783-t" href='https://www.seattletimes.com/life/food-drink/cleaner-air-menus-on-your-phone-how-will-seattles-restaurants-adapt-to-the-post-coronavirus-shutdown-era/'>Seattle's restaurants are finding creative ways to meet reopening criteria</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-food-drink-12772574-medialink-t" href='https://www.seattletimes.com/life/coronavirus-upended-everything-what-will-life-in-seattle-look-like-as-we-re-emerge/'>Coronavirus upended everything. What will life in Seattle look like when we re-emerge?</a>          </li>

  <li>
        <a id="el-food-drink-12789417-medialink-t" href='https://www.seattletimes.com/business/coronavirus-economy-daily-chart-food-assistance-and-restaurant-sales/'>Food assistance and restaurant sales | Coronavirus Economy daily chart</a>          </li>

  <li>
        <a id="el-food-drink-12722754-medialink-t" href='https://www.seattletimes.com/life/food-drink/what-will-become-of-our-restaurant-scene-post-coronavirus-crisis-seattle-chefs-weigh-in-on-the-future/'>What will become of our restaurant scene post-coronavirus crisis? Seattle chefs weigh in on the future.</a>          </li>

  <li>
        <a id="el-food-drink-12770095-medialink-t" href='https://www.seattletimes.com/life/food-drink/these-2-side-dishes-will-take-center-stage-at-memorial-day-meals-cooking-with-sadie/'>These 2 side dishes will take center stage at Memorial Day meals | Cooking with Sadie</a>          </li>

  <li>
        <a id="el-food-drink-12762209-medialink-t" href='https://www.seattletimes.com/life/wellness/what-lessons-for-healthful-living-can-the-coronavirus-pandemic-teach-us/'>What lessons for healthful living can staying home during the coronavirus pandemic teach us?</a>          </li>
</ul></div><ul class="subsection-links horizontal-list-menu"><li><a id="el-food-drink-takeout-hl" href="/tag/takeout-delivery/">Takeout</a></li><li><a id="el-food-drink-recipes-hl" href="/category/recipes">Recipes</a></li><li><a id="el-food-drink-restaurant-news-hl" href="/tag/restaurant-news/">Restaurant News</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      
<div class="pnw-group subsection mini-side">
  <h2><a id="el-pnw-header-link-h" href="/pacific-nw-magazine/">Pacific NW Magazine</a></h2>  <a id="el-pnw-image-link-t" href="https://www.seattletimes.com/pacific-nw-magazine/online-body-positive-exercise-classes-focus-on-acceptance-and-comfort-in-the-movements-and-in-yourself/"><figure><img  class='lazy ' alt='' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px),  300px' /><noscript><img  class='' alt='' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr-fit-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px),  300px' data-sizes='(max-width: 767px) calc(100vw - 20px),  300px' /></noscript></figure></a>  <h3><a id="el-pnw-headline-link-h" href="https://www.seattletimes.com/pacific-nw-magazine/online-body-positive-exercise-classes-focus-on-acceptance-and-comfort-in-the-movements-and-in-yourself/">Online body-positive exercise classes focus on acceptance and comfort — in the movements, and in yourself</a></h3></div>
  </div>
</div><!--/.row-->
<div id="el-editorials-opinion-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-editorials-opinion" class="section-block river-group subsection full-width-content">

<h2><a id="el-editorials-opinion-h" href="/opinion/"><span class="zone_title">Editorials &amp; Opinion</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-editorials-opinion-12772231-i" href="https://www.seattletimes.com/opinion/on-a-memorial-day-like-no-other-we-will-remember-them-still/">
        <img  class='lazy ' alt='' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tsr-bugler-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-editorials-opinion-12772231-t" href='https://www.seattletimes.com/opinion/on-a-memorial-day-like-no-other-we-will-remember-them-still/'>On a Memorial Day like no other, we will remember them still | Op-Ed</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-editorials-opinion-12788850-medialink-t" href='https://www.seattletimes.com/opinion/editorials/faa-needs-stronger-safety-process/'>FAA needs stronger safety process | Editorial</a>          </li>

  <li>
        <a id="el-editorials-opinion-12782345-medialink-t" href='https://www.seattletimes.com/opinion/we-need-to-remember-and-call-our-isolated-neighbors/'>We need to remember — and call — our isolated neighbors | Op-Ed</a>          </li>

  <li>
        <a id="el-editorials-opinion-12782635-medialink-t" href='https://www.seattletimes.com/opinion/playing-with-legos-is-a-lesson-that-order-and-control-are-fleeting/'>Playing with Legos is a lesson that order and control are fleeting | Op-Ed</a>          </li>

  <li>
        <a id="el-editorials-opinion-12784785-medialink-t" href='https://www.seattletimes.com/opinion/editorials/crisis-reveals-need-for-better-state-tech/'>Crisis reveals need for better state tech | Editorial</a>          </li>

  <li>
        <a id="el-editorials-opinion-12781617-medialink-t" href='https://www.seattletimes.com/opinion/the-love-hate-relationship-between-restaurants-and-delivery-services/'>The love-hate relationship between restaurants and delivery services | Op-Ed</a>          </li>

  <li>
        <a id="el-editorials-opinion-12782053-medialink-t" href='https://www.seattletimes.com/opinion/editorials/feds-must-increase-and-clarify-aerospace-support/'>Feds must increase and clarify aerospace support | Editorial</a>          </li>
</ul></div>            <div class="subsection-callout">
            <figure class="round">
              <img  class='lazy ' alt='Featured Columnist' src='data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=' data-src ='https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-375x438.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-257x300.jpg 257w, https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-300x350.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-375x438.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot.jpg 600w' data-sizes='100px' /><noscript><img  class='' alt='Featured Columnist' src='https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-375x438.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-257x300.jpg 257w, https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-300x350.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot-375x438.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2014/11/cropped-new-kate-headshot.jpg 600w' sizes='100px' data-sizes='100px' /></noscript>            </figure>
                    <div class="slug"><a href="https://www.seattletimes.com/author/kate-riley/" title="Posts by Kate Riley" class="url fn" rel="author">Kate Riley</a></div>
          <h3><a id="el-editorials-opinion-12791146-t" href="https://www.seattletimes.com/opinion/a-crucial-election-for-state-and-nation-what-do-you-want-to-know-from-candidates/">A crucial election for state and nation: What do you want to know from candidates?</a></h3>
        </div>

       <ul class="subsection-links horizontal-list-menu"><li><a id="el-editorials-opinion-editorials-hl" href="/opinion/editorials/">Editorials</a></li><li><a id="el-editorials-opinion-op-eds-hl" href="/category/op-eds/">Op-Eds</a></li><li><a id="el-editorials-opinion-letters-hl" href="/opinion/letters-to-the-editor/">Letters</a></li><li><a id="el-editorials-opinion-free-press-hl" href="/tag/free-press/">Free Press</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      <div class="small-news-block-group subsection mini-side">
  <h2><a id="el-mini_plus_image-block-title-link-h" href="https://www.seattletimes.com/author/david-horsey/">Horsey Cartoon</a></h2>
      <a class="small-news-teaser" id="el-mini_plus_image-teaser-link-t" href="https://www.seattletimes.com/opinion/mail-in-ballot-mayhem-nonsense/">
        <figure>
          <img  class='lazy ' alt='' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px),  300px' /><noscript><img  class='' alt='' src='https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/Mail-in-Ballot-ONLINE-COLOR-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px),  300px' data-sizes='(max-width: 767px) calc(100vw - 20px),  300px' /></noscript>        </figure>
    </a>
  
  <h3><a id="el-mini_plus_image-headline-link-h" href="https://www.seattletimes.com/opinion/mail-in-ballot-mayhem-nonsense/">Mail-in ballot mayhem? Nonsense!</a></h3></div>
  </div>
</div><!--/.row-->
<div id="el-sports-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-sports" class="section-block river-group subsection full-width-content">

<h2><a id="el-sports-h" href="/sports/"><span class="zone_title">Sports</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-sports-12762937-i" href="https://www.seattletimes.com/sports/high-school/will-coronavirus-concerns-wipe-out-high-school-football-this-fall-wiaa-says-its-too-soon-to-tell/">
        <img  class='lazy ' alt='Eric Cheatley, center, walks back to the sideline during Friday night&#8217;s football game between Adna High School and Onalaska High School at Adna on Oct. 25, 2019. Much like the players, referees will also work through cold and rain in addition to harassment from fans and low wages. With an average age of over 50, referees are struggling to maintain their numbers as previous generations age and retire from the job. &#8220;Our bodies can&#8217;t survive much longer after that,&#8221; said another referee, Tyler Trimble. 211906' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='Eric Cheatley, center, walks back to the sideline during Friday night&#8217;s football game between Adna High School and Onalaska High School at Adna on Oct. 25, 2019. Much like the players, referees will also work through cold and rain in addition to harassment from fans and low wages. With an average age of over 50, referees are struggling to maintain their numbers as previous generations age and retire from the job. &#8220;Our bodies can&#8217;t survive much longer after that,&#8221; said another referee, Tyler Trimble. 211906' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05212020_teaser_tzr_134440-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-sports-12762937-t" href='https://www.seattletimes.com/sports/high-school/will-coronavirus-concerns-wipe-out-high-school-football-this-fall-wiaa-says-its-too-soon-to-tell/'>Will coronavirus concerns wipe out high-school football this fall? WIAA says it&#8217;s too soon to tell</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-sports-12792215-medialink-t" href='https://www.seattletimes.com/sports/seahawks/russell-wilson-may-want-to-add-antonio-brown-but-a-lot-would-have-to-happen-first/'>Russell Wilson may want Seahawks to sign Antonio Brown, but a lot would have to happen first</a>            <span class="update-timestamp">Updated <time>2:48 pm</time></span>
    </li>

  <li>
        <a id="el-sports-12779699-medialink-t" href='https://www.seattletimes.com/sports/uw-husky-football/we-lean-on-each-other-were-in-this-together-inside-the-bond-between-apple-cup-athletic-directors-jen-cohen-and-pat-chun/'>&#8216;We lean on each other. We&#8217;re in this together&#8217;: Inside the bond between Apple Cup athletic directors Jen Cohen and Pat Chun</a>          </li>

  <li>
        <a id="el-sports-12792831-medialink-t" href='https://www.seattletimes.com/sports/wsu-cougar-football/former-wsu-quarterback-ryan-leaf-arrested-on-suspicion-of-domestic-battery-in-california/'>Former WSU quarterback Ryan Leaf arrested on suspicion of misdemeanor domestic battery in California</a>            <span class="update-timestamp">Updated <time>1:57 pm</time></span>
    </li>

  <li>
        <a id="el-sports-12793719-medialink-t" href='https://www.seattletimes.com/sports/nba/nba-says-it-is-talking-with-disney-about-resuming-season/'>NBA says it is talking with Disney about resuming season</a>            <span class="update-timestamp">Updated <time>3:26 pm</time></span>
    </li>
</ul></div>            <div class="subsection-callout">
            <figure class="round">
              <img  class='lazy ' alt='Featured Columnist' src='data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=' data-src ='https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-375x375.png' data-srcset='https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-300x300.png 300w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-150x150.png 150w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-100x100.png 100w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone.png 500w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-316x316.png 316w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-375x375.png 375w' data-sizes='100px' /><noscript><img  class='' alt='Featured Columnist' src='https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-375x375.png' srcset='https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-300x300.png 300w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-150x150.png 150w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-100x100.png 100w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone.png 500w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-316x316.png 316w, https://static.seattletimes.com/wp-content/uploads/2014/12/Sports_lstone-375x375.png 375w' sizes='100px' data-sizes='100px' /></noscript>            </figure>
                    <div class="slug"><a href="https://www.seattletimes.com/author/larry-stone/" title="Posts by Larry Stone" class="url fn" rel="author">Larry Stone</a></div>
          <h3><a id="el-sports-12786530-t" href="https://www.seattletimes.com/sports/mariners/as-mlb-negotiations-near-critical-juncture-mutual-motivation-will-be-key-to-saving-weird-2020-season/">As MLB negotiations near critical juncture, mutual motivation will be key to saving weird 2020 season</a></h3>
        </div>

       <ul class="subsection-links horizontal-list-menu"><li><a id="el-sports-seahawks-hl" href="/sports/seahawks/">Seahawks</a></li><li><a id="el-sports-mariners-hl" href="/sports/mariners/">Mariners</a></li><li><a id="el-sports-huskies-hl" href="/sports/uw-huskies/">Huskies</a></li><li><a id="el-sports-sounders-hl" href="/sports/sounders/">Sounders</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      <zeus-ad id="zeus_right3" class="ad"></zeus-ad>  </div>
</div><!--/.row-->
<div id="el-arts-life-section-block-t" class="section-block row full-width-content">
  <div class="main">
    <div class="main-inner">
      <div data-zone="section-block-arts-life" class="section-block river-group subsection full-width-content">

<h2><a id="el-arts-life-h" href="/life/"><span class="zone_title">Arts &amp; Life</span></a><span class="section-block-label"></span></h2>
  <div class="subsection-feature">
          <a id="el-arts-life-12766963-i" href="https://www.seattletimes.com/life/travel/what-does-travel-look-like-in-the-near-future-post-pandemic-future-road-trips-and-staycations-top-the-list/">
        <img  class='lazy ' alt='Dave Massie opens up the trunk of a 1991 Volkswagen Vanagon Westfalia camper van at Camano Island State Park in 2016. Massie, along with his wife, Chelsea, and former Seattle Times reporter Tricia Romano, rented the van for a weekend from Peace Vans, a local van rental outfitter in Sodo. The company is expecting a busy summer despite the coronavirus. (Sy Bean / The Seattle Times)' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-375x241.jpg 375w' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /><noscript><img  class='' alt='Dave Massie opens up the trunk of a 1991 Volkswagen Vanagon Westfalia camper van at Camano Island State Park in 2016. Massie, along with his wife, Chelsea, and former Seattle Times reporter Tricia Romano, rented the van for a weekend from Peace Vans, a local van rental outfitter in Sodo. The company is expecting a busy summer despite the coronavirus. (Sy Bean / The Seattle Times)' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_teaser_tzr_185521-375x241.jpg 375w' sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' data-sizes='(max-width: 767px) calc(100vw - 20px), (max-width: 1019px) calc(100vw - 360px), 304px' /></noscript>      </a>
      <h3 class="mb-0"><a id="el-arts-life-12766963-t" href='https://www.seattletimes.com/life/travel/what-does-travel-look-like-in-the-near-future-post-pandemic-future-road-trips-and-staycations-top-the-list/'>Summer isn&#8217;t canceled: Embrace the staycation as coronavirus travel restrictions ease in Washington</a></h3>
            </div>
  <div class="subsection-stories story-list"><ul>

  <li>
        <a id="el-arts-life-12772574-medialink-t" href='https://www.seattletimes.com/life/coronavirus-upended-everything-what-will-life-in-seattle-look-like-as-we-re-emerge/'>Coronavirus upended everything. What will life in Seattle look like when we re-emerge?</a>          </li>

  <li>
        <a id="el-arts-life-12753268-medialink-t" href='https://www.seattletimes.com/entertainment/events/events-and-festivals-that-have-been-canceled-due-to-coronavirus-pandemic/'>What&#8217;s happening with Seafair, Folklife, Seattle Pride and other big events, given the coronavirus pandemic?</a>          </li>

  <li>
        <a id="el-arts-life-12779451-medialink-t" href='https://www.seattletimes.com/entertainment/tv/seattle-teacher-competes-for-100000-prize-on-jeopardy-teachers-tournament/'>Seattle teacher competes for $100,000 prize on &#8216;Jeopardy!&#8217; tournament</a>          </li>

  <li>
        <a id="el-arts-life-12788263-medialink-t" href='https://www.seattletimes.com/life/whats-there-to-do-in-the-seattle-area-over-this-memorial-day-weekend/'>What&#8217;s there to do in the Seattle area over this Memorial Day weekend?</a>          </li>

  <li>
        <a id="el-arts-life-12773212-medialink-t" href='https://www.seattletimes.com/entertainment/books/starting-a-novel-while-stuck-at-home-seattle-author-elizabeth-george-shares-tips-in-mastering-the-process/'>Starting a novel while stuck at home? Seattle author Elizabeth George shares tips in ‘Mastering the Process.’</a>          </li>
</ul></div><ul class="subsection-links horizontal-list-menu"><li><a id="el-arts-life-at-home-entertainment-hl" href="/entertainment/">At-home Entertainment</a></li><li><a id="el-arts-life-kids-hl" href="/tag/kids-corner">Kids</a></li><li><a id="el-arts-life-outdoors-hl" href="/life/outdoors/">Outdoors</a></li><li><a id="el-arts-life-wellness-hl" href="/life/wellness/">Wellness</a></li></ul></div><!--/.subsection-->
    </div><!--/.main-inner-->
  </div><!--/.main-->
  <div class="side">
      
<div class="marketing-promo-block subsection mini-side">
  <h2>The Seattle Times has won a 2020 Pulitzer Prize</h2>  <a id="el-mpb-image-link-i" href="https://www.seattletimes.com/business/boeing-aerospace/boeing-737-max-crisis-2019-news-coverage/"><figure><img  class='lazy ' alt='' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463-375x241.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463-375x241.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463.jpg 720w' data-sizes='(max-width: 767px) calc(100vw - 20px),  300px' /><noscript><img  class='' alt='' src='https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463-375x241.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463-375x241.jpg 375w, https://static.seattletimes.com/wp-content/uploads/2020/05/pulitzer_2020_Homepage_720x463.jpg 720w' sizes='(max-width: 767px) calc(100vw - 20px),  300px' data-sizes='(max-width: 767px) calc(100vw - 20px),  300px' /></noscript></figure></a>  <h3><a id="el-mpb-promo-text-link-t" href="https://www.seattletimes.com/business/boeing-aerospace/boeing-737-max-crisis-2019-news-coverage/">Read our award-winning coverage of Boeing’s 737 MAX crisis</a></h3></div>
  </div>
</div><!--/.row-->
<div id="el-quads-below-fold-block-12794165-t" data-zone="Photography" class="river-group extra-items elsewhere four-col full-width-content">


  <div class="extra-items-header">
    <h2>Photography</h2>
  </div>
<div class="four-col-single first has-image">  <a id="el-below-fold-block-12794165-12728700-i" href="https://www.seattletimes.com/seattle-news/photos-mount-st-helens-after-40-years/">
    <img  class='lazy ' alt='Mount St. Helens in Washington State erupts May 18, 1980, with a fury more powerful than the atomic bomb that leveled Hiroshima. Hot volcanic ash spewed 60,000 feet into the air and turned day into night as the ash fell to the ground. Never before had a volcano erupted in an industrialized country in the middle of a major population center. This photo is one of a series of photos that won a Pulitzer Prize in 1981 in the General News category.  (AP Photo/The Daily News, Roger Werth) MANDATORY CREDIT

12/26/99 &#8212; Glimpses of a Northwest Century 
Mount St. Helens had been Washington&#8217;s most recently active volcano when it rumbled alive again with internal forces in March 1980. By May its northwest side was bulging ominously. On May 18, at 8:32 a.m., it erupted. The top 2,400 feet of the mountain were destroyed in an explosion that rattled windows as far away as Vancouver, B.C. Wind-borne ash fell thickly in Eastern Washington, disrupting transportation, agricultures and lives for weeks. Fifty-seven people died in the eruption.' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='Mount St. Helens in Washington State erupts May 18, 1980, with a fury more powerful than the atomic bomb that leveled Hiroshima. Hot volcanic ash spewed 60,000 feet into the air and turned day into night as the ash fell to the ground. Never before had a volcano erupted in an industrialized country in the middle of a major population center. This photo is one of a series of photos that won a Pulitzer Prize in 1981 in the General News category.  (AP Photo/The Daily News, Roger Werth) MANDATORY CREDIT

12/26/99 &#8212; Glimpses of a Northwest Century 
Mount St. Helens had been Washington&#8217;s most recently active volcano when it rumbled alive again with internal forces in March 1980. By May its northwest side was bulging ominously. On May 18, at 8:32 a.m., it erupted. The top 2,400 feet of the mountain were destroyed in an explosion that rattled windows as far away as Vancouver, B.C. Wind-borne ash fell thickly in Eastern Washington, disrupting transportation, agricultures and lives for weeks. Fifty-seven people died in the eruption.' src='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/tzr_170803-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Local News          </div>

    <h3><a id="el-below-fold-block-12794165-12728700-t" href="https://www.seattletimes.com/seattle-news/photos-mount-st-helens-after-40-years/">Photos: Mount St. Helens after 40 years</a> <a href="https://www.seattletimes.com/seattle-news/photos-mount-st-helens-after-40-years/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a></h3>

      </div>
</div>
<div class="four-col-single has-image">  <a id="el-below-fold-block-12794165-12769264-i" href="https://www.seattletimes.com/seattle-news/education/caps-and-gowns-are-distributed-at-cleveland-high-school-in-seattle/">
    <img  class='lazy ' alt='Academic intervention specialist Jenn Kekuna passes a graduation cap and gown to Charm Sok, center, and her daughter Tetiana Mountha, 18, left, at Cleveland High School in Seattle Monday, May 18, 2020. Waving pom poms and shouting messages of congratulations, Cleveland staffers distributed commencement attire through socially-distanced, drive-through stops in the parking lot. &#8220;Tetiana graduating high school means a lot to us,&#8221; says Sok. &#8220;Tetiana has worked super hard all through high school, a straight-A student. I think think she missed one day out of the whole school year.&#8221; 213969' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='Academic intervention specialist Jenn Kekuna passes a graduation cap and gown to Charm Sok, center, and her daughter Tetiana Mountha, 18, left, at Cleveland High School in Seattle Monday, May 18, 2020. Waving pom poms and shouting messages of congratulations, Cleveland staffers distributed commencement attire through socially-distanced, drive-through stops in the parking lot. &#8220;Tetiana graduating high school means a lot to us,&#8221; says Sok. &#8220;Tetiana has worked super hard all through high school, a straight-A student. I think think she missed one day out of the whole school year.&#8221; 213969' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05182020_TZR_tzr_163454-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Education          </div>

    <h3><a id="el-below-fold-block-12794165-12769264-t" href="https://www.seattletimes.com/seattle-news/education/caps-and-gowns-are-distributed-at-cleveland-high-school-in-seattle/">Caps and gowns are distributed at Cleveland High School in Seattle</a> <a href="https://www.seattletimes.com/seattle-news/education/caps-and-gowns-are-distributed-at-cleveland-high-school-in-seattle/"> <i aria-label="Photo gallery" class="icon-camera icon-section-block"></i><span class="icon-label">&nbsp;VIEW</span></a></h3>

      </div>
</div>
<div class="four-col-single has-image">  <a id="el-below-fold-block-12794165-12776640-i" href="https://www.seattletimes.com/seattle-news/icons-at-work-tom-douglas-and-copper-river-salmon/">
    <img  class='lazy ' alt='LINESONLY

Seattle restauranteur Tom Douglas grills the first Copper River Salmon of the year to reach the city as part of his Grilling For Good charity Sunday in his Ballard warehouse.  Douglas partnered with Trident Seafoods, Ocean Beauty Seafoods, Alaska Airlines and the Copper River Marketing Association to create 400 dinners, each sold at $45, the proceeds of which went entirely to Food Lifeline. 213993' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='LINESONLY

Seattle restauranteur Tom Douglas grills the first Copper River Salmon of the year to reach the city as part of his Grilling For Good charity Sunday in his Ballard warehouse.  Douglas partnered with Trident Seafoods, Ocean Beauty Seafoods, Alaska Airlines and the Copper River Marketing Association to create 400 dinners, each sold at $45, the proceeds of which went entirely to Food Lifeline. 213993' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05172020_tzr_tzr_174327-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Local News          </div>

    <h3><a id="el-below-fold-block-12794165-12776640-t" href="https://www.seattletimes.com/seattle-news/icons-at-work-tom-douglas-and-copper-river-salmon/">Icons at work: Tom Douglas and Copper River salmon</a></h3>

      </div>
</div>
<div class="four-col-single has-image">  <a id="el-below-fold-block-12794165-12759624-i" href="https://www.seattletimes.com/seattle-news/states-spud-surplus-being-given-away-amid-coronavirus-shutdown/">
    <img  class='lazy ' alt='Thursday, May 14, 2020.   Justin Murner at left and Darek Gorring doing from throwing are from the Washington Air National Guard volunteering during the Washington Potato Growers give away of 200,000 pounds of bagged and washed potatoes at the Tacoma Dome.  213943' src='https://www.seattletimes.com/wp-content/themes/st_refresh/img/lazy-loading-14x9.png' data-src ='https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-780x501.jpg' data-srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-375x241.jpg 375w' data-sizes='(max-width: 1044px) 25vw, 228px' /><noscript><img  class='' alt='Thursday, May 14, 2020.   Justin Murner at left and Darek Gorring doing from throwing are from the Washington Air National Guard volunteering during the Washington Potato Growers give away of 200,000 pounds of bagged and washed potatoes at the Tacoma Dome.  213943' src='https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-780x501.jpg' srcset='https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-300x193.jpg 300w, https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-768x493.jpg 768w, https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256.jpg 780w, https://static.seattletimes.com/wp-content/uploads/2020/05/05142020_tzr_tzr_155256-375x241.jpg 375w' sizes='(max-width: 1044px) 25vw, 228px' data-sizes='(max-width: 1044px) 25vw, 228px' /></noscript>  </a>
  <div class="four-col-text">
    <div class="eyebrow">
              Local News          </div>

    <h3><a id="el-below-fold-block-12794165-12759624-t" href="https://www.seattletimes.com/seattle-news/states-spud-surplus-being-given-away-amid-coronavirus-shutdown/">State&#8217;s spud surplus being given away amid coronavirus shutdown</a> <a href="https://www.seattletimes.com/seattle-news/states-spud-surplus-being-given-away-amid-coronavirus-shutdown/"> <i aria-label="Video" class="icon-video icon-section-block"></i><span class="icon-label">&nbsp;WATCH</span></a></h3>

      </div>
</div>
</div>


      <div class="homepage-recirculation-widget"></div>

      
<div class="explore-promo explore-block native-promo" id="native-promo">
    <div class="explore-block-disclaimer">PRODUCED BY THE SEATTLE TIMES CONTENT STUDIO</div>

    <div class="explore-promo-wrapper extra-items five-col">

      <div class="explore-promo-header extra-items-header">
        <h2><a id="el-sponsored-h"  href="/sponsored/">Sponsored</a></h2>      </div>

      <div class="triplet-top first has-image">
        <div id="ad-explore-bottom-hp1">
                      <zeus-ad id="zeus_explore-bottom-hp1" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="triplet-top has-image">
        <div id="ad-explore-bottom-hp2">
                      <zeus-ad id="zeus_explore-bottom-hp2" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="triplet-top has-image">
        <div id="ad-explore-bottom-hp3">
                      <zeus-ad id="zeus_explore-bottom-hp3" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="five-col-single first has-image">
        <div id="ad-explore-bottom-hp4">
                      <zeus-ad id="zeus_explore-bottom-hp4" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="five-col-single has-image">
        <div id="ad-explore-bottom-hp5">
                      <zeus-ad id="zeus_explore-bottom-hp5" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="five-col-single has-image">
        <div id="ad-explore-bottom-hp6">
                      <zeus-ad id="zeus_explore-bottom-hp6" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="five-col-single has-image">
        <div id="ad-explore-bottom-hp7">
                      <zeus-ad id="zeus_explore-bottom-hp7" class="ad"></zeus-ad>
                  </div>
      </div>
      <div class="five-col-single has-image">
        <div id="ad-explore-bottom-hp8">
                      <zeus-ad id="zeus_explore-bottom-hp8" class="ad"></zeus-ad>
                  </div>
      </div>
    </div>

    <nav class="explore-promo-links">
        <ul>
            <li><a id="el-sponsored-auto-deals-hl" href="https://autos.seattletimes.com/">Auto Deals</a></li><li><a id="el-sponsored-real-estate-hl" href="/explore/nwhomes/">Real Estate</a></li><li><a id="el-sponsored-merchandise-pets-hl" href="https://classifieds.seattletimes.com/">Merchandise &amp; Pets</a></li><li><a id="el-sponsored-seattle-times-store-hl" href="https://company.seattletimes.com/store/">Seattle Times Store</a></li><li><a id="el-sponsored-seattle-times-store-hl" href="https://jobs.seattletimes.com/">Find a Job</a></li><li><a id="el-sponsored-weekly-ads-hl" href="https://www.seattletimes.com/weekly-ads/">Weekly Ads</a></li>        </ul>
    </nav>

</div>



<div id="userMessagingFooter" class="full-width-content user-messaging animate"></div>

<div id="ad-bottom" class="footer-ad ad no-border show-tablet show-desktop ">
      <zeus-ad id="zeus_bottom" class="ad"></zeus-ad>
  </div>

    </div><!-- /.wrapper-->
</section><!-- #content-well -->


</div>


  <footer class="global-footer">
    <div class="seattle-horizon">
      <span></span>
    </div>
    <div class="footer-top">
      <div class="wrapper">
        <ul class="footer-nav-primary">
          <li id="menu-item-42879" class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-has-children menu-item-42879"><a href="https://www.seattletimes.com/type/link/">Contact</a>
<ul class="sub-menu">
	<li id="menu-item-9619487" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9619487"><a href="https://www.seattletimes.com/newsroom-staff/">Newsroom Staff List</a></li>
	<li id="menu-item-42783" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-42783"><a href="https://www.seattletimes.com/help/">FAQ</a></li>
	<li id="menu-item-9487380" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9487380"><a href="https://www.seattletimes.com/contact/">Contact Form</a></li>
</ul>
</li>
<li id="menu-item-5522511" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-5522511"><a href="http://company.seattletimes.com/who-we-are/">About the Company</a>
<ul class="sub-menu">
	<li id="menu-item-42813" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42813"><a href="https://srw.seattletimes.com/">Seattle Restaurant Week</a></li>
	<li id="menu-item-42808" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42808"><a href="http://nie.seattletimes.com">Newspapers in Education</a></li>
	<li id="menu-item-42809" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42809"><a href="http://ffn.seattletimes.com">Fund for the Needy</a></li>
	<li id="menu-item-42799" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42799"><a href="http://company.seattletimes.com/careers/">Employment</a></li>
	<li id="menu-item-42803" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42803"><a href="http://nl.newsbank.com/nl-search/we/Archives/?p_product=HA-SE&#038;p_theme=histpaper&#038;p_action=keyword">Newspaper Archive</a></li>
	<li id="menu-item-9591853" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9591853"><a href="https://www.seattletimes.com/pulitzers/">Pulitzers</a></li>
	<li id="menu-item-42786" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42786"><a href="http://company.seattletimes.com/contact-us/">Company Information</a></li>
	<li id="menu-item-9639172" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9639172"><a href="https://stux.wufoo.com/forms/permissions-and-licensing-request/">Permissions</a></li>
	<li id="menu-item-9639173" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9639173"><a href="http://company.seattletimes.com/store/">Seattle Times Store</a></li>
</ul>
</li>
<li id="menu-item-42880" class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-has-children menu-item-42880"><a href="https://www.seattletimes.com/type/link/">Advertise</a>
<ul class="sub-menu">
	<li id="menu-item-42825" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42825"><a href="http://classifieds.seattletimes.com/">Classifieds</a></li>
	<li id="menu-item-42832" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42832"><a href="http://autos.seattletimes.com/">Autos</a></li>
	<li id="menu-item-42834" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42834"><a href="http://homes.seattletimes.com/postlisting.html">Homes</a></li>
	<li id="menu-item-42830" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42830"><a href="http://services.nwsource.com/ClassifiedWeb/ObituaryNotice.aspx">Obituary</a></li>
	<li id="menu-item-42831" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42831"><a href="http://jobs.seattletimes.com/employer-home">Jobs</a></li>
	<li id="menu-item-42817" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42817"><a href="http://mediakit.seattletimes.com/">Media Kit</a></li>
	<li id="menu-item-42824" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42824"><a href="http://mediakit.seattletimes.com/">Advertise with Us</a></li>
</ul>
</li>
<li id="menu-item-42874" class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-has-children menu-item-42874"><a href="https://www.seattletimes.com/type/link/">My Account</a>
<ul class="sub-menu">
	<li id="menu-item-42839" class="st-return menu-item menu-item-type-custom menu-item-object-custom menu-item-42839"><a href="/subscribe/signup-offers/?subsource=voluntary">Subscribe</a></li>
	<li id="menu-item-42843" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42843"><a href="https://secure.seattletimes.com/accountcenter/linksubscription">Activate Account</a></li>
	<li id="menu-item-42841" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42841"><a href="https://secure.seattletimes.com/accountcenter/managesubscriptions">Manage Subscription</a></li>
	<li id="menu-item-42842" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42842"><a href="https://secure.seattletimes.com/accountcenter/deliveryholds">Place Temporary Hold</a></li>
	<li id="menu-item-5522514" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-5522514"><a href="https://secure.seattletimes.com/accountcenter/reportdeliveryissue">Report Delivery Issue</a></li>
	<li id="menu-item-42846" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42846"><a href="https://secure.seattletimes.com/accountcenter/paymybill">Make a Payment</a></li>
	<li id="menu-item-42847" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42847"><a href="https://secure.seattletimes.com/accountcenter/replica">Print Replica</a></li>
</ul>
</li>
<li id="menu-item-42857" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-42857"><a href="https://secure.seattletimes.com/accountcenter/replica">Today&#8217;s Front Page</a></li>
<li id="menu-item-42875" class="facebook separated menu-item menu-item-type-custom menu-item-object-custom menu-item-42875"><a target="_blank" href="https://www.facebook.com/seattletimes">Facebook</a></li>
<li id="menu-item-42876" class="twitter menu-item menu-item-type-custom menu-item-object-custom menu-item-42876"><a target="_blank" href="https://twitter.com/seattletimes">Twitter</a></li>
        </ul>
          <ul id="menu-footer-secondary" class="footer-nav-secondary"><li id="menu-item-9604572" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9604572"><a href="https://www.seattletimes.com/rss-feeds/">RSS Feeds</a></li>
<li id="menu-item-9927432" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9927432"><a href="https://www.seattletimes.com/newsletters/">Newsletters</a></li>
<li id="menu-item-5522517" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-5522517"><a href="https://www.seattletimes.com/mobile-apps/">Mobile Apps</a></li>
<li id="menu-item-12328887" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12328887"><a href="https://www.seattletimes.com/inside-the-times/listen-to-the-seattle-times-on-smart-speakers-and-podcast-apps/">Audio &#038; Voice</a></li>
<li id="menu-item-9471222" class="st-return menu-item menu-item-type-custom menu-item-object-custom menu-item-9471222"><a href="/subscribe/signup/">Subscribe</a></li>
</ul>      </div>
    </div>

    
<div class="footer-btm">
  <div class="wrapper">
    <section class="footer-copyright">
      <a href="https://company.seattletimes.com/notices/notice3.html">Copyright &copy; 2020 The Seattle Times</a> |
      <a href="https://company.seattletimes.com/notices/notice2.html">Privacy statement</a> |
      <a href="https://company.seattletimes.com/notices/notice1.html">Terms of service</a>
    </section>
  </div>
</div>
  </footer>

<div class="modals">
  <div class="global-modal">
    <div class="modal-content"></div>
    <span class="modal-toggle"><i></i></span>
  </div>
  <div id="message-container"></div>
      <div id="ad-wallpaper">
              <zeus-ad id="zeus_wallpaper"></zeus-ad>
          </div>
    <div id="userMessagingOverlay" class="user-messaging"></div>
</div>

<div class="footer-scripts">

  
<!--Plugin WP Missed Schedule Active - Secured with Genuine Authenticity KeyTag-->

<!-- This site is patched against a big problem not solved since WordPress 2.5 -->

<script type='text/javascript' src='https://www.seattletimes.com/wp-content/plugins/st-advertising/includes/functions/../../dist/st-advertising-bundle.js?ver=1587485469'></script>
<script type='text/javascript' src='https://www.seattletimes.com/wp-content/plugins/st-article-template/js/legacy-article-template/dist/legacy-article-main.js?ver=1588799123'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var globalStub = [];
var SEATIMESCO = SEATIMESCO || {};

  window.SEATIMESCO.singleSignOn = window.SEATIMESCO.singleSignOn || {};
  window.SEATIMESCO.singleSignOn.info = window.SEATIMESCO.singleSignOn.info || {};
  window.SEATIMESCO.singleSignOn.info.ssoEnvironment          = "secure.";
  window.SEATIMESCO.singleSignOn.info.subscriberSessionURL    = "https://secure.seattletimes.com/accountcenter/getsubscribersession.js?method=ajax&session=";
  window.SEATIMESCO.singleSignOn.info.commenterSessionURL     = "https://secure.seattletimes.com/accountcenter/coraltoken.js?token=";
  window.SEATIMESCO.singleSignOn.info.analyticsURL            = "https://secure.seattletimes.com/accountcenter/soa.js?method=ajax&session=";
  window.SEATIMESCO.subscriptionSalePromo = window.SEATIMESCO.subscriptionSalePromo || {};

  window.SEATIMESCO.subscriptionSalePromo.enabled = false;

  window.SEATIMESCO.subscriptionSalePromo.text = "Sale extended! Last day to save over 90% on unlimited digital access for 8 weeks.";

  window.SEATIMESCO.subscriptionSalePromo.cta = "Subscribe now";

  window.SEATIMESCO.subscriptionSalePromo.url = "https://www.seattletimes.com/subscribe/signup-offers/?subsource=promo";
  window.SEATIMESCO.images = window.SEATIMESCO.images || {};
  window.SEATIMESCO.images.lazyLoadingDisabled = true;
  window.SEATIMESCO.images.forceSSL = true;

        window.SEATIMESCO.userMessaging = window.SEATIMESCO.userMessaging || {};
        window.SEATIMESCO.userMessaging = {"messages":[{"id":"fenaq1","type":"newsletter-signup","dateCreated":1586300629998,"enabled":1,"priority":4,"slot":"overlay","deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","frequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"newsletter":10349041,"message":"Be among the first to know about coronavirus updates and other breaking news.","headline":"Sign up for [title].","sections":[{"label":"Health","value":"health"},{"label":"Local News","value":"seattle-news"},{"label":"Wellness","value":"wellness"},{"label":"Science","value":"science"},{"label":"Nation & World","value":"nation-world"}],"buttonText":"Sign up"},{"id":"rheij1","type":"newsletter-signup","dateCreated":1585087326250,"enabled":1,"priority":4,"slot":"atf","userTypes":[{"value":"registered","label":"Registered"},{"value":"anonymous","label":"Anonymous"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"newsletter":10349041,"sections":[{"label":"Home","value":"home"},{"label":"Local News","value":"seattle-news"}],"buttonText":"Sign up"},{"id":"k6chpn","type":"generic","dateCreated":1582845503867,"enabled":0,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"name":"EducationLabSurveyFeb2020","layout":"bar","sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"buttonText":"Take a brief survey","headline":"Give us your feedback on Education Lab coverage","message":"Help us improve The Seattle Times by answering a few short questions.","buttonUrl":"https:\/\/www.research.net\/r\/VZNGQF9"},{"id":"waq91q","type":"newsletter-signup","dateCreated":1579190424499,"enabled":0,"priority":5,"slot":"inset-custom","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349060,"sections":[{"label":"Agriculture","value":"agriculture"},{"label":"Amazon","value":"amazon"},{"label":"Auto Racing","value":"auto-racing"},{"label":"Boeing & Aerospace","value":"boeing-aerospace"},{"label":"Books","value":"books"},{"label":"Business","value":"business"},{"label":"Careers","value":"careers"},{"label":"Classical Music","value":"classical-music"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Comics","value":"comics"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Crime","value":"crime"},{"label":"Dance","value":"dance"},{"label":"Data","value":"data"},{"label":"Diversions","value":"shop-northwest"},{"label":"Eastside","value":"eastside"},{"label":"Economy","value":"economy"},{"label":"Editorials","value":"editorials"},{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"},{"label":"Entertainment","value":"entertainment"},{"label":"Environment","value":"environment"},{"label":"Events","value":"events"},{"label":"Explore","value":"explore"},{"label":"Fashion","value":"fashion"},{"label":"Fitness","value":"fitness"},{"label":"Food & Drink","value":"food-drink"},{"label":"Games & Puzzles","value":"games"},{"label":"Garden","value":"garden"},{"label":"Golf","value":"golf"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"Health","value":"health"},{"label":"High School Sports","value":"high-school"},{"label":"Hockey","value":"hockey"},{"label":"Home & Decor","value":"home-decor"},{"label":"Homes & Real Estate","value":"homes-real-estate"},{"label":"Horse Racing","value":"horse-racing"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Inside the Times","value":"inside-the-times"},{"label":"International Trade","value":"international-trade"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Life","value":"life"},{"label":"Lifestyle","value":"lifestyle"},{"label":"Local Business","value":"local-business"},{"label":"Local News","value":"seattle-news"},{"label":"Local Politics","value":"politics"},{"label":"Marijuana","value":"marijuana"},{"label":"Mariners","value":"mariners"},{"label":"Markets","value":"markets"},{"label":"Microsoft","value":"microsoft"},{"label":"MLB","value":"mlb"},{"label":"Movies","value":"movies"},{"label":"Music","value":"music"},{"label":"Nation","value":"nation"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"News","value":"news"},{"label":"NFL","value":"nfl"},{"label":"Nightlife","value":"nightlife"},{"label":"Northwest","value":"northwest"},{"label":"Northwest Voices","value":"northwest-voices"},{"label":"NWhomes","value":"nwhomes"},{"label":"Obituaries","value":"obituaries"},{"label":"Oddities","value":"oddities"},{"label":"Olympics","value":"olympics"},{"label":"Opinion","value":"opinion"},{"label":"Other Sports","value":"other-sports"},{"label":"Outdoors","value":"outdoors"},{"label":"Pac-12","value":"pac-12"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"},{"label":"Pets","value":"pets"},{"label":"Photo & Video","value":"photo-video"},{"label":"Photography","value":"photography"},{"label":"Project Homeless","value":"homeless"},{"label":"Puget Sound","value":"puget-sound"},{"label":"Quail Run","value":"quail-run"},{"label":"Real Estate","value":"real-estate"},{"label":"Reign","value":"reign"},{"label":"Retail","value":"retail"},{"label":"Science","value":"science"},{"label":"Seahawks","value":"seahawks"},{"label":"Seattle University","value":"seattle-university"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Soccer","value":"soccer"},{"label":"Sounders","value":"sounders"},{"label":"Special Reports","value":"special-reports"},{"label":"Special Sections","value":"special-sections"},{"label":"Sponsored","value":"sponsored"},{"label":"Sports","value":"sports"},{"label":"Starbucks","value":"starbucks"},{"label":"Storm","value":"storm"},{"label":"Technology","value":"technology"},{"label":"Theater","value":"theater"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"Traffic Lab","value":"transportation"},{"label":"Travel","value":"travel"},{"label":"TV\/Streaming","value":"tv"},{"label":"Video","value":"video"},{"label":"Video Games","value":"video-games"},{"label":"Visual Arts","value":"visual-arts"},{"label":"Weather","value":"weather"},{"label":"Wellness","value":"wellness"},{"label":"WNBA","value":"wnba"},{"label":"World","value":"world"},{"label":"World Cup","value":"world-cup"}],"buttonText":"Sign Up"},{"id":"2zf6uo","type":"paywall","dateCreated":1575489214597,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"ExtendedDays","value":"incognito"}],"layout":"bar","pageviewCount":2,"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","buttonText":"Subscribe","headline":"We need your support!"},{"id":"xcit8q","type":"paywall","dateCreated":1575489146296,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","paywallConfigs":[{"label":"ExtendedDays","value":"incognito"}],"pageviewCount":4,"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","headline":"Last free article!","buttonText":"Subscribe"},{"id":"4tvmyy","type":"paywall","dateCreated":1575420390723,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":4,"layout":"bar","paywallConfigs":[{"label":"ExtendedDays","value":"incognito"}],"headline":"This is your last free article.","message":"Free press takes time and money to produce. Support us today.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"7agy1z","type":"custom-data","dateCreated":1575319330007,"enabled":1,"priority":4,"slot":"overlay","frequency":86400,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"layout":"bar","name":"abandonedcart-desktop","storageType":"cookie","storageItem":"st-abandoned-cart","storageValue":"yes","headline":"Forget something?","message":"Your subscription is still in your shopping cart.","buttonText":"Complete your purchase now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo"},{"id":"628iop","type":"custom-data","dateCreated":1575319057745,"enabled":1,"priority":4,"storageType":"cookie","slot":"overlay","frequency":86400,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"name":"abandonedcart-mobile","layout":"bar","storageItem":"st-abandoned-cart","storageValue":"yes","headline":"Your subscription is still in your shopping cart.","buttonText":"Complete your purchase now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo"},{"id":"aeo6x1","type":"generic","dateCreated":1574382277949,"enabled":0,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"name":"entertainmentsurveyNov19mobile","buttonUrl":"https:\/\/www.research.net\/r\/59HSKYH","headline":"Your feedback needed to shape entertainment coverage","buttonText":"To the questions","sections":[{"label":"Books","value":"books"},{"label":"Classical Music","value":"classical-music"},{"label":"Dance","value":"dance"},{"label":"Life","value":"life"},{"label":"Lifestyle","value":"lifestyle"},{"label":"Wellness","value":"wellness"},{"label":"Visual Arts","value":"visual-arts"},{"label":"TV\/Streaming","value":"tv"},{"label":"Travel","value":"travel"},{"label":"Theater","value":"theater"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"},{"label":"Home & Decor","value":"home-decor"},{"label":"Entertainment","value":"entertainment"},{"label":"Fashion","value":"fashion"},{"label":"Food & Drink","value":"food-drink"},{"label":"Music","value":"music"},{"label":"Movies","value":"movies"},{"label":"Nightlife","value":"nightlife"},{"label":"Health","value":"health"},{"label":"Pets","value":"pets"},{"label":"Events","value":"events"},{"label":"Fitness","value":"fitness"},{"label":"Garden","value":"garden"},{"label":"Outdoors","value":"outdoors"}]},{"id":"0syihc","type":"generic","dateCreated":1574373393593,"enabled":0,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"sections":[{"label":"Books","value":"books"},{"label":"Classical Music","value":"classical-music"},{"label":"Dance","value":"dance"},{"label":"Life","value":"life"},{"label":"Lifestyle","value":"lifestyle"},{"label":"Wellness","value":"wellness"},{"label":"Visual Arts","value":"visual-arts"},{"label":"TV\/Streaming","value":"tv"},{"label":"Travel","value":"travel"},{"label":"Theater","value":"theater"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"},{"label":"Home & Decor","value":"home-decor"},{"label":"Entertainment","value":"entertainment"},{"label":"Fashion","value":"fashion"},{"label":"Food & Drink","value":"food-drink"},{"label":"Music","value":"music"},{"label":"Movies","value":"movies"},{"label":"Nightlife","value":"nightlife"},{"label":"Health","value":"health"},{"label":"Pets","value":"pets"},{"label":"Events","value":"events"},{"label":"Fitness","value":"fitness"},{"label":"Garden","value":"garden"},{"label":"Outdoors","value":"outdoors"}],"name":"entertainmentsurveyNov19desktop","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"layout":"bar","headline":"Help us entertain you!","message":"Answer a short set of questions to help us improve our entertainment content.","buttonText":"To the questions","buttonUrl":"https:\/\/www.research.net\/r\/59HSKYH"},{"id":"fdc6nu","type":"paywall","dateCreated":1573594555128,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"registered","label":"Registered"},{"value":"anonymous","label":"Anonymous"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"headline":"Start supporting independent journalism today.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","message":"Get unlimited digital access for just $1.","buttonText":"Subscribe now","layout":"bar","pageviewCount":2,"paywallConfigs":[{"label":"ExtendedDays","value":"incognito"}]},{"id":"a8adfy","type":"newsletter-signup","dateCreated":1564428275583,"enabled":1,"priority":2,"slot":"overlay","frequency":604800,"closeFrequency":1209600,"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"free-trial-user","label":"Free Trial User"}],"layout":"splash","newsletter":10349079,"sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"message":"Sign up for the [title] newsletter for Ed Lab features as well as education-related content and news.","buttonText":"Sign up & return to story"},{"id":"ldrkeg","type":"newsletter-signup","dateCreated":1564427968618,"enabled":1,"priority":2,"slot":"overlay","frequency":604800,"closeFrequency":1209600,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"subsection_front","label":"Subsection Front"},{"value":"section_front","label":"Section Front"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"layout":"splash","newsletter":10349065,"message":"Sign up for the [title] newsletter, all things sports, every weekday.","sections":[{"label":"College Basketball","value":"college-basketball"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"Golf","value":"golf"},{"label":"Hockey","value":"hockey"},{"label":"High School Sports","value":"high-school"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Huskies","value":"uw-huskies"},{"label":"Mariners","value":"mariners"},{"label":"MLB","value":"mlb"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"NFL","value":"nfl"},{"label":"Olympics","value":"olympics"},{"label":"Other Sports","value":"other-sports"},{"label":"Pac-12","value":"pac-12"},{"label":"Reign","value":"reign"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Soccer","value":"soccer"},{"label":"Storm","value":"storm"},{"label":"WNBA","value":"wnba"},{"label":"World Cup","value":"world-cup"},{"label":"Seahawks","value":"seahawks"},{"label":"Auto Racing","value":"auto-racing"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Seattle University","value":"seattle-university"},{"label":"Sounders","value":"sounders"},{"label":"Sports","value":"sports"},{"label":"Horse Racing","value":"horse-racing"}],"buttonText":"Sign up"},{"id":"c8vwyt","type":"newsletter-signup","dateCreated":1564427537816,"enabled":1,"priority":2,"slot":"overlay","frequency":259200,"closeFrequency":1209600,"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"newsletter":10349021,"layout":"splash","sections":[{"label":"Agriculture","value":"agriculture"},{"label":"Data","value":"data"},{"label":"Economy","value":"economy"},{"label":"Local News","value":"seattle-news"},{"label":"Nation","value":"nation"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"Project Homeless","value":"homeless"},{"label":"Puget Sound","value":"puget-sound"},{"label":"Real Estate","value":"real-estate"},{"label":"Seattle University","value":"seattle-university"},{"label":"Special Reports","value":"special-reports"},{"label":"Special Sections","value":"special-sections"},{"label":"Starbucks","value":"starbucks"},{"label":"Technology","value":"technology"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"World","value":"world"},{"label":"Microsoft","value":"microsoft"},{"label":"Local Politics","value":"politics"},{"label":"Local Business","value":"local-business"},{"label":"Crime","value":"crime"},{"label":"Business","value":"business"}],"buttonText":"Sign up & return to story"},{"id":"d4ocp4","type":"newsletter-signup","dateCreated":1564426240120,"enabled":1,"priority":3,"slot":"overlay","frequency":604800,"closeFrequency":1209600,"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"print-replica","label":"Print Replica"},{"value":"registered","label":"Registered"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"layout":"splash","newsletter":10349060,"buttonText":"Sign up & return to story","message":"Sign up for the [title] newsletter and eat, drink, and be happy with this newsletter full of epicurean delights.","sections":[{"label":"Entertainment","value":"entertainment"},{"label":"Food & Drink","value":"food-drink"},{"label":"Lifestyle","value":"lifestyle"}]},{"id":"6vqwtj","type":"newsletter-signup","dateCreated":1564426122469,"enabled":1,"slot":"inset","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"print-replica","label":"Print Replica"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"newsletter":11815630,"sections":[{"label":"Opinion","value":"opinion"},{"label":"Editorials","value":"editorials"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Northwest Voices","value":"northwest-voices"}],"priority":3,"buttonText":"Sign up"},{"id":"p96q2u","type":"newsletter-signup","dateCreated":1564425843293,"enabled":1,"priority":3,"slot":"overlay","frequency":259200,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"pageTypes":[{"value":"story","label":"Story"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","newsletter":11815630,"sections":[{"label":"Opinion","value":"opinion"},{"label":"Editorials","value":"editorials"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Northwest Voices","value":"northwest-voices"}],"buttonText":"Sign up","message":"Stay on top of all things Opinion with our free weekly newsletter.","headline":"Sign up for [title]."},{"id":"w5xhlx","type":"newsletter-signup","dateCreated":1564425638988,"enabled":1,"priority":3,"slot":"overlay","frequency":259200,"closeFrequency":1209600,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"print-replica","label":"Print Replica"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"layout":"splash","newsletter":11815630,"buttonText":"Sign up","sections":[{"label":"Opinion","value":"opinion"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Northwest Voices","value":"northwest-voices"},{"label":"Editorials","value":"editorials"}]},{"id":"9ztwrp","type":"newsletter-signup","dateCreated":1564425382593,"enabled":1,"slot":"overlay","frequency":259200,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"subscriber","label":"Subscriber"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"newsletter":11815630,"layout":"splash","buttonText":"Sign up & return to story","sections":[{"label":"Opinion","value":"opinion"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Editorials","value":"editorials"},{"label":"Northwest Voices","value":"northwest-voices"}],"priority":4},{"id":"s7icqv","type":"subscription-promo","dateCreated":1563216569391,"enabled":0,"priority":4,"slot":"topOverlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"tablet","label":"Tablet"}],"sections":[{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Books","value":"books"},{"label":"Auto Racing","value":"auto-racing"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"World Cup","value":"world-cup"},{"label":"WNBA","value":"wnba"},{"label":"Storm","value":"storm"},{"label":"Sports","value":"sports"},{"label":"Sounders","value":"sounders"},{"label":"Soccer","value":"soccer"},{"label":"Seahawks","value":"seahawks"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Reign","value":"reign"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"High School Sports","value":"high-school"},{"label":"Hockey","value":"hockey"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Mariners","value":"mariners"},{"label":"MLB","value":"mlb"},{"label":"NBA","value":"nba"},{"label":"Pac-12","value":"pac-12"},{"label":"Horse Racing","value":"horse-racing"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"NFL","value":"nfl"},{"label":"Olympics","value":"olympics"},{"label":"Other Sports","value":"other-sports"},{"label":"Golf","value":"golf"}],"message":"Subscribe and get a FREE copy of Edgar Martinez\u2019s new autobiography","buttonText":"Subscribe","url":"http:\/\/promo.seattletimes.com\/Edgar","enabledSaleTimer":1,"saleTimerEndTime":"2019-07-23T00:00"},{"id":"azz8d9","type":"subscription-promo","dateCreated":1563208476928,"enabled":0,"priority":4,"slot":"topOverlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"url":"http:\/\/promo.seattletimes.com\/Edgar","buttonText":"Subscribe","message":"Subscribe and get a FREE Edgar Martinez autobiography","sections":[{"label":"Cougars","value":"wsu-cougars"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Sports","value":"college"},{"label":"College Football","value":"college-football"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"High School Sports","value":"high-school"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Huskies","value":"uw-huskies"},{"label":"Mariners","value":"mariners"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"Hockey","value":"hockey"},{"label":"MLB","value":"mlb"},{"label":"NBA","value":"nba"},{"label":"Olympics","value":"olympics"},{"label":"Horse Racing","value":"horse-racing"},{"label":"Other Sports","value":"other-sports"},{"label":"Reign","value":"reign"},{"label":"NFL","value":"nfl"},{"label":"Pac-12","value":"pac-12"},{"label":"Sports","value":"sports"},{"label":"World Cup","value":"world-cup"},{"label":"WNBA","value":"wnba"},{"label":"Storm","value":"storm"},{"label":"Sounders","value":"sounders"},{"label":"Seahawks","value":"seahawks"},{"label":"Soccer","value":"soccer"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Golf","value":"golf"},{"label":"Auto Racing","value":"auto-racing"},{"label":"Books","value":"books"}],"enabledSaleTimer":1,"saleTimerEndTime":"2019-07-23T00:00"},{"id":"wlpz0g","type":"subscription-promo","dateCreated":1563207170424,"enabled":0,"priority":4,"slot":"topOverlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"sections":[{"label":"Auto Racing","value":"auto-racing"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"College Sports","value":"college"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Golf","value":"golf"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"High School Sports","value":"high-school"},{"label":"Books","value":"books"},{"label":"Hockey","value":"hockey"},{"label":"World Cup","value":"world-cup"},{"label":"WNBA","value":"wnba"},{"label":"Storm","value":"storm"},{"label":"Sports","value":"sports"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"Mariners","value":"mariners"},{"label":"MLB","value":"mlb"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"NBA","value":"nba"},{"label":"Olympics","value":"olympics"},{"label":"NFL","value":"nfl"},{"label":"Other Sports","value":"other-sports"},{"label":"Pac-12","value":"pac-12"},{"label":"Reign","value":"reign"},{"label":"Soccer","value":"soccer"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Sounders","value":"sounders"},{"label":"Seahawks","value":"seahawks"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Horse Racing","value":"horse-racing"}],"buttonText":"Subscribe","message":"Subscribe and get a FREE copy of Edgar Martinez\u2019s new autobiography. A $28 value!","url":"http:\/\/promo.seattletimes.com\/Edgar","enabledSaleTimer":0,"saleTimerEndTime":"2019-07-23T00:00"},{"id":"697xg1","type":"paywall","dateCreated":1559590835530,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":3,"layout":"bar","paywallConfigs":[{"label":"Formers","value":"formers"}],"headline":"This is your last free article.","message":"Free press takes time and money to produce. Support us today.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"uablcf","type":"paywall","dateCreated":1559590760363,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageviewCount":2,"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"Formers","value":"formers"}],"layout":"bar","headline":"Start supporting independent journalism today.","message":"Get unlimited digital access for just $1.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"ucl0bp","type":"paywall","dateCreated":1559590674252,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Formers","value":"formers"}],"layout":"bar","pageviewCount":2,"headline":"We need your support!","buttonText":"Subscribe","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","hideFooter":1},{"id":"y70c9p","type":"paywall","dateCreated":1559590602175,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Formers","value":"formers"}],"layout":"bar","pageviewCount":3,"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","headline":"Last free article!","message":"","buttonText":"Subscribe","hideFooter":1},{"id":"mngl98","type":"subscription-promo","dateCreated":1558594207853,"enabled":0,"priority":5,"slot":"topOverlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"headline":".","message":"Presidents Day Sale! Save 90% on select subscriptions for 12 weeks.","buttonText":"Subscribe now","url":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo","saleTimerEndTime":"2020-02-20T01:00","enabledSaleTimer":1},{"id":"vxju0x","type":"subscription-promo","dateCreated":1558569868162,"enabled":0,"priority":5,"slot":"topOverlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"message":"Sale! Save 90% on select subscriptions.","headline":".","buttonText":"Subscribe","url":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo","enabledSaleTimer":1,"saleTimerEndTime":"2020-02-20T01:00"},{"id":"kakv8j","type":"subscription-promo","dateCreated":1558569548998,"enabled":0,"priority":5,"slot":"topOverlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"tablet","label":"Tablet"}],"headline":".","url":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo","message":"Sale! Save 90% on select subscriptions for 12 weeks.","buttonText":"Subscribe","enabledSaleTimer":1,"saleTimerEndTime":"2020-02-20T01:00"},{"id":"g5zaus","type":"declined-payment","dateCreated":1555531087433,"enabled":1,"userTypes":[{"value":"subscriber","label":"Subscriber"}],"priority":4,"slot":"overlay","pageTypes":[{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"headline":"We\u2019re unable to process your payment.","message":"Update your information to prevent your subscription from being cancelled.","buttonText":"Update payment","url":"https:\/\/secure.seattletimes.com\/accountcenter\/autopay"},{"id":"vvinb2","type":"paywall","dateCreated":1552956908229,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"pageviewCount":4,"paywallConfigs":[{"label":"Freetrial","value":"freetrial"}],"layout":"bar","headline":"Last article.","buttonText":"Get a risk-free trial","buttonUrl":"https:\/\/secure.seattletimes.com\/accountcenter\/subscribe\/freetrialsubscription?subsource=meter"},{"id":"e8p618","type":"paywall","dateCreated":1552956854830,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Freetrial","value":"freetrial"}],"layout":"bar","pageviewCount":3,"buttonUrl":"https:\/\/secure.seattletimes.com\/accountcenter\/subscribe\/freetrialsubscription?subsource=meter","buttonText":"Start trial","headline":"Get 1 month free"},{"id":"889xhs","type":"paywall","dateCreated":1552956727598,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Freetrial","value":"freetrial"}],"layout":"bar","pageviewCount":2,"headline":"1 month free trial","buttonText":"Subscribe","buttonUrl":"https:\/\/secure.seattletimes.com\/accountcenter\/subscribe\/freetrialsubscription?subsource=meter"},{"id":"c5jxpx","type":"paywall","dateCreated":1552956277763,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"paywallConfigs":[{"label":"Freetrial","value":"freetrial"}],"layout":"bar","pageviewCount":4,"buttonUrl":"https:\/\/secure.seattletimes.com\/accountcenter\/subscribe\/freetrialsubscription?subsource=meter","headline":"This is your last free article.","message":"Try our news free for a month. No credit card needed, cancel anytime.","buttonText":"Sign up"},{"id":"k3glxy","type":"paywall","dateCreated":1552956145989,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"Freetrial","value":"freetrial"}],"layout":"bar","pageviewCount":3,"headline":"You\u2019ve been selected for a free trial subscription.","buttonUrl":"https:\/\/secure.seattletimes.com\/accountcenter\/subscribe\/freetrialsubscription?subsource=meter","message":"Read all you want for a month, no credit card required.","buttonText":"See offer"},{"id":"l5yn8i","type":"paywall","dateCreated":1552955895627,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"Freetrial","value":"freetrial"}],"layout":"bar","pageviewCount":2,"headline":"Free trial subscription. No strings attached.","message":"Sign up for a free month, no credit card needed.","buttonText":"Sign up","buttonUrl":"https:\/\/secure.seattletimes.com\/accountcenter\/subscribe\/freetrialsubscription?subsource=meter"},{"id":"aaph9p","type":"generic","dateCreated":1552954836969,"enabled":1,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":432000,"userTypes":[{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"layout":"bar","name":"free-trial-story-mobile","headline":"Get more of a good thing.","buttonText":"Continue your subscription beyond your free trial.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=free-trial"},{"id":"lnebab","type":"generic","dateCreated":1552954681258,"enabled":1,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":432000,"userTypes":[{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"story","label":"Story"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"layout":"bar","name":"free-trial-story-desktop","headline":"Get more of a good thing.","message":"Continue your subscription beyond your free trial.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=free-trial","buttonText":"Learn more"},{"id":"602xps","type":"generic","dateCreated":1552954586993,"enabled":1,"priority":4,"slot":"overlay","closeFrequency":604800,"frequency":259200,"userTypes":[{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"name":"free-trial-homepage-section-desktop","layout":"bar","headline":"Don\u2019t let your free subscription come to an end.","message":"Continued unlimited Seattle Times access by subscribing now.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=free-trial","buttonText":"Subscribe"},{"id":"o5q7zw","type":"generic","dateCreated":1552954379676,"enabled":1,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"free-trial-user","label":"Free Trial User"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=free-trial","name":"free-trial-homepage-section-mobile","layout":"bar","headline":"Don\u2019t let your free subscription come to an end.","buttonText":"Continued unlimited Seattle Times access by subscribing now."},{"id":"e9oap1","type":"generic","dateCreated":1542763411965,"enabled":0,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"story","label":"Story"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","name":"EdLabSurveyNov18mobile","sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"headline":"Help us shape our education content by answering a few questions.","buttonUrl":"https:\/\/www.research.net\/r\/K5J8P5X","buttonText":"Start now"},{"id":"ygb38p","type":"generic","dateCreated":1542763070736,"enabled":0,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"print-replica","label":"Print Replica"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"story","label":"Story"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"name":"EdLabSurveyNov18","layout":"bar","sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"headline":"Share your thoughts on Education Lab","message":"Help us shape our education content by answering a few questions about our coverage.","buttonText":"Start now","buttonUrl":"https:\/\/www.research.net\/r\/K5J8P5X"},{"id":"82pc1e","type":"paywall","dateCreated":1542227121741,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"},{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"paywall2","value":"paywall2"}],"layout":"bar","pageviewCount":1,"headline":"There\u2019s an easier way of getting around the paywall.","message":"Become a subscriber \u2013 just $1 \u2013 for unlimited access to our news.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"d41njx","type":"paywall","dateCreated":1542227070616,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"},{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"paywall2","value":"paywall2"}],"layout":"bar","pageviewCount":2,"headline":"For a dollar to start, the paywall comes down.","message":"Try a subscription and get unlimited access to seattletimes.com.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","buttonText":"Subscribe now"},{"id":"kob2zz","type":"generic","dateCreated":1541203510246,"enabled":0,"priority":4,"slot":"overlay","frequency":86400,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","name":"Endorsements2018mobile","headline":"Still haven\u2019t cast your ballot?","message":"","buttonText":"Read recommendations from The Seattle Times Editorial Board.","buttonUrl":"https:\/\/www.seattletimes.com\/opinion\/editorials\/seattle-times-editorial-board-endorsements-for-nov-6-general-election\/"},{"id":"pgnmve","type":"generic","dateCreated":1540227038100,"enabled":0,"priority":4,"slot":"overlay","frequency":86400,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"sections":[{"label":"Agriculture","value":"agriculture"},{"label":"Boeing & Aerospace","value":"boeing-aerospace"},{"label":"Other Sports","value":"other-sports"},{"label":"Auto Racing","value":"auto-racing"},{"label":"Business","value":"business"},{"label":"Books","value":"books"},{"label":"Amazon","value":"amazon"},{"label":"Classical Music","value":"classical-music"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Comics","value":"comics"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Crime","value":"crime"},{"label":"Dance","value":"dance"},{"label":"Data","value":"data"},{"label":"Eastside","value":"eastside"},{"label":"Economy","value":"economy"},{"label":"Editorials","value":"editorials"},{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"},{"label":"Entertainment","value":"entertainment"},{"label":"Environment","value":"environment"},{"label":"Events","value":"events"},{"label":"Fashion","value":"fashion"},{"label":"Fitness","value":"fitness"},{"label":"Food & Drink","value":"food-drink"},{"label":"Games & Puzzles","value":"games"},{"label":"Garden","value":"garden"},{"label":"Golf","value":"golf"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"Health","value":"health"},{"label":"High School Sports","value":"high-school"},{"label":"Hockey","value":"hockey"},{"label":"Home & Decor","value":"home-decor"},{"label":"Homes & Real Estate","value":"homes-real-estate"},{"label":"Horse Racing","value":"horse-racing"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"International Trade","value":"international-trade"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Life","value":"life"},{"label":"Lifestyle","value":"lifestyle"},{"label":"Local Business","value":"local-business"},{"label":"Local News","value":"seattle-news"},{"label":"Local Politics","value":"politics"},{"label":"Marijuana","value":"marijuana"},{"label":"Mariners","value":"mariners"},{"label":"Markets","value":"markets"},{"label":"Microsoft","value":"microsoft"},{"label":"MLB","value":"mlb"},{"label":"Movies","value":"movies"},{"label":"Nation","value":"nation"},{"label":"Music","value":"music"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"News","value":"news"},{"label":"NFL","value":"nfl"},{"label":"Nightlife","value":"nightlife"},{"label":"Northwest","value":"northwest"},{"label":"Northwest Voices","value":"northwest-voices"},{"label":"Obituaries","value":"obituaries"},{"label":"Oddities","value":"oddities"},{"label":"Olympics","value":"olympics"},{"label":"Opinion","value":"opinion"},{"label":"Outdoors","value":"outdoors"},{"label":"Pac-12","value":"pac-12"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"},{"label":"Pets","value":"pets"},{"label":"Photo & Video","value":"photo-video"},{"label":"Photography","value":"photography"},{"label":"Project Homeless","value":"homeless"},{"label":"Puget Sound","value":"puget-sound"},{"label":"Quail Run","value":"quail-run"},{"label":"Real Estate","value":"real-estate"},{"label":"Reign","value":"reign"},{"label":"Retail","value":"retail"},{"label":"Science","value":"science"},{"label":"Seahawks","value":"seahawks"},{"label":"Seattle University","value":"seattle-university"},{"label":"Shopping","value":"shop-northwest"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Soccer","value":"soccer"},{"label":"Sounders","value":"sounders"},{"label":"Special Reports","value":"special-reports"},{"label":"Special Sections","value":"special-sections"},{"label":"Sponsored","value":"sponsored"},{"label":"Sports","value":"sports"},{"label":"Starbucks","value":"starbucks"},{"label":"Storm","value":"storm"},{"label":"Technology","value":"technology"},{"label":"Television","value":"tv"},{"label":"Theater","value":"theater"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"Traffic Lab","value":"transportation"},{"label":"Travel","value":"travel"},{"label":"Video","value":"video"},{"label":"Video Games","value":"video-games"},{"label":"Visual Arts","value":"visual-arts"},{"label":"Weather","value":"weather"},{"label":"Wellness","value":"wellness"},{"label":"WNBA","value":"wnba"},{"label":"World","value":"world"},{"label":"World Cup","value":"world-cup"}],"layout":"bar","name":"EndorsementsOct18","headline":"Still haven\u2019t cast your ballot?","message":"The Seattle Times editorial board interviewed over 130 candidates.","buttonText":"Read their opinions.","buttonUrl":"https:\/\/www.seattletimes.com\/opinion\/editorials\/seattle-times-editorial-board-endorsements-for-nov-6-general-election\/"},{"id":"6geoqr","type":"paywall","dateCreated":1538441184751,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"pageviewCount":4,"paywallConfigs":[{"label":"Politics","value":"politics"}],"layout":"bar","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","message":"Follow the stories as they develop, subscribe now for just $1 to start.","headline":"This is your last free article.","buttonText":"Subscribe now"},{"id":"1jz5fg","type":"paywall","dateCreated":1538441032909,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"Politics","value":"politics"}],"layout":"bar","pageviewCount":2,"headline":"Stay informed on the issues.","message":"Subscribe and enjoy unlimited journalism for just $1 to start.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","buttonText":"Learn more"},{"id":"tve5bb","type":"paywall","dateCreated":1538440906020,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"pageviewCount":4,"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","layout":"bar","paywallConfigs":[{"label":"Politics","value":"politics"}],"headline":"Last free article!","buttonText":"Subscribe now"},{"id":"ulm4cq","type":"paywall","dateCreated":1538440848086,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Politics","value":"politics"}],"layout":"bar","pageviewCount":2,"headline":"Stay informed","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"osqb2g","type":"paywall","dateCreated":1538439079104,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Seahawks","value":"seahawks"}],"layout":"bar","pageviewCount":4,"headline":"Last free article!","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"dakmdn","type":"paywall","dateCreated":1538439024952,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Seahawks","value":"seahawks"}],"layout":"bar","pageviewCount":2,"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","headline":"Follow the Hawks","buttonText":"Subscribe now"},{"id":"znbh34","type":"paywall","dateCreated":1538438839647,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":4,"paywallConfigs":[{"label":"Seahawks","value":"seahawks"}],"layout":"bar","headline":"You\u2019ve reached your limit of free articles.","message":"For just $1 to start, subscribe now to enjoy more Seahawks content.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"fuo9t1","type":"paywall","dateCreated":1538438711404,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"Seahawks","value":"seahawks"}],"layout":"bar","pageviewCount":2,"headline":"53-men on the field. One place with all the insight.","message":"Subscribe for just $1 to start and enjoy Bob Condotta\u2019s Hawks coverage.","buttonText":"Learn more","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"jiotri","type":"paywall","dateCreated":1538433313570,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Huskies","value":"huskies"}],"layout":"bar","pageviewCount":4,"headline":"Last free article!","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"e0qwxq","type":"paywall","dateCreated":1538433187364,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"Huskies","value":"huskies"}],"layout":"bar","pageviewCount":2,"buttonText":"Subscribe now","headline":"Follow the Dawgs","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"yvxg9l","type":"paywall","dateCreated":1538433092935,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":4,"paywallConfigs":[{"label":"Huskies","value":"huskies"}],"layout":"bar","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","buttonText":"Subscribe now","message":"Keep the Huskies stories coming by subscribing now for just $1 to start.","headline":"This is your last free article."},{"id":"w85tj8","type":"paywall","dateCreated":1538432949871,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"layout":"bar","paywallConfigs":[{"label":"Huskies","value":"huskies"}],"pageviewCount":2,"headline":"Recruiting, national rankings and analysis.","message":"Subscribe and keep up on our Huskies coverage for just $1.","buttonText":"Learn more","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"4m9wg8","type":"newsletter-signup","dateCreated":1535154422497,"enabled":1,"priority":4,"slot":"overlay","frequency":259200,"closeFrequency":604800,"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"pageTypes":[{"value":"story","label":"Story"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"newsletter":10349060,"layout":"bar","sections":[{"label":"Books","value":"books"},{"label":"Classical Music","value":"classical-music"},{"label":"Dance","value":"dance"},{"label":"Entertainment","value":"entertainment"},{"label":"Visual Arts","value":"visual-arts"},{"label":"Video Games","value":"video-games"},{"label":"Travel","value":"travel"},{"label":"Food & Drink","value":"food-drink"},{"label":"Fitness","value":"fitness"},{"label":"Lifestyle","value":"lifestyle"},{"label":"Life","value":"life"},{"label":"Nightlife","value":"nightlife"},{"label":"Home & Decor","value":"home-decor"},{"label":"Movies","value":"movies"},{"label":"Music","value":"music"},{"label":"Outdoors","value":"outdoors"},{"label":"Marijuana","value":"marijuana"},{"label":"Theater","value":"theater"},{"label":"Television","value":"tv"}],"message":"Keep up on the food scene with our free weekly newsletter.","buttonText":"Sign up","headline":"Sign up for [title]."},{"id":"1b7nn9","type":"newsletter-signup","dateCreated":1534546172642,"enabled":1,"priority":3,"newsletter":10349079,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"registered","label":"Registered"},{"value":"anonymous","label":"Anonymous"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"layout":"bar","message":"Catch up on Ed Lab features as well as education-related news each week.","sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"buttonText":"Sign up","headline":"Sign up for [title]."},{"id":"ww4vcr","type":"newsletter-signup","dateCreated":1534545585601,"enabled":1,"priority":3,"slot":"overlay","frequency":259200,"closeFrequency":604800,"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"layout":"bar","message":"Wrap up the day with a quick recap of top stories and need-to-know news.","newsletter":10728545,"sections":[{"label":"Amazon","value":"amazon"},{"label":"Boeing & Aerospace","value":"boeing-aerospace"},{"label":"Business","value":"business"},{"label":"Careers","value":"careers"},{"label":"Economy","value":"economy"},{"label":"International Trade","value":"international-trade"},{"label":"Local Business","value":"local-business"},{"label":"Microsoft","value":"microsoft"},{"label":"Markets","value":"markets"},{"label":"Technology","value":"technology"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"buttonText":"Sign up","headline":"Sign up for [title]."},{"id":"3shnwq","type":"newsletter-signup","dateCreated":1534452981298,"enabled":1,"priority":3,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"registered","label":"Registered"},{"value":"anonymous","label":"Anonymous"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"newsletter":10349065,"layout":"bar","message":"Get up to speed on all things sports, every weekday.","sections":[{"label":"Sports","value":"sports"},{"label":"Auto Racing","value":"auto-racing"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Golf","value":"golf"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"High School Sports","value":"high-school"},{"label":"Hockey","value":"hockey"},{"label":"World Cup","value":"world-cup"},{"label":"WNBA","value":"wnba"},{"label":"Storm","value":"storm"},{"label":"Sounders","value":"sounders"},{"label":"Soccer","value":"soccer"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Seattle University","value":"seattle-university"},{"label":"Seahawks","value":"seahawks"},{"label":"Pac-12","value":"pac-12"},{"label":"Other Sports","value":"other-sports"},{"label":"MLB","value":"mlb"},{"label":"Mariners","value":"mariners"},{"label":"Olympics","value":"olympics"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"NFL","value":"nfl"},{"label":"Reign","value":"reign"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Horse Racing","value":"horse-racing"},{"label":"Outdoors","value":"outdoors"}],"buttonText":"Sign up","headline":"Sign up for [title]."},{"id":"3rdsjy","type":"newsletter-signup","dateCreated":1534202011972,"enabled":1,"priority":3,"slot":"overlay","frequency":259200,"closeFrequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"},{"value":"page","label":"Page"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"layout":"bar","newsletter":10349021,"message":"Start your day with need-to-know news, including the latest on the novel coronavirus.","sections":[{"label":"Crime","value":"crime"},{"label":"Data","value":"data"},{"label":"Local News","value":"seattle-news"},{"label":"Local Politics","value":"politics"},{"label":"Environment","value":"environment"},{"label":"Weather","value":"weather"},{"label":"Northwest","value":"northwest"},{"label":"Traffic Lab","value":"transportation"},{"label":"Project Homeless","value":"homeless"},{"label":"Eastside","value":"eastside"},{"label":"Obituaries","value":"obituaries"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"Homes & Real Estate","value":"homes-real-estate"},{"label":"Real Estate","value":"real-estate"},{"label":"Comics","value":"comics"},{"label":"Games & Puzzles","value":"games"},{"label":"Marijuana","value":"marijuana"},{"label":"Nation","value":"nation"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"World","value":"world"},{"label":"Puget Sound","value":"puget-sound"},{"label":"News","value":"news"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"}],"pageIds":[10281555,10275124,10230502,10281558,10260050,10230487,10275133,10230508,10260044,10599705],"buttonText":"Sign up","headline":"Sign up for [title]."},{"id":"g4pxrw","type":"paywall","dateCreated":1532991866025,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"paywallConfigs":[{"label":"mmtest","value":"mmtest"}],"layout":"bar","pageviewCount":1,"headline":"There\u2019s an easier way of getting around the paywall.","message":"Become a subscriber \u2013 just $1 \u2013 for unlimited access to our news.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","hideFooter":0},{"id":"j3y8m2","type":"paywall","dateCreated":1532991623248,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"mmtest","value":"mmtest"}],"layout":"bar","pageviewCount":1,"headline":"Last free article","buttonText":"Subscribe","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"481vgj","type":"paywall","dateCreated":1530132812773,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"bar","pageviewCount":3,"headline":"Sale! Save 90%!","buttonText":"Subscribe","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","hideFooter":1},{"id":"zqckxe","type":"paywall","dateCreated":1529304159902,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"bar","pageviewCount":4,"headline":"Last article. Save 90%","buttonText":"Subscribe","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","hideFooter":1},{"id":"nc1zpf","type":"paywall","dateCreated":1529303998668,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"bar","pageviewCount":2,"buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","headline":"Sale! Save 90%!","buttonText":"Subscribe","hideFooter":1},{"id":"wxlgrq","type":"generic","dateCreated":1526595620171,"enabled":0,"priority":4,"slot":"overlay","frequency":86400,"deviceTypes":[{"value":"mobile","label":"Mobile"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"}],"name":"ReaderFeedbackMobileApril2020","layout":"bar","headline":"Give us your feedback.","buttonText":"Take a brief survey","buttonUrl":"https:\/\/www.research.net\/r\/PLB78SR","closeFrequency":604800,"message":""},{"id":"a4l4ey","type":"generic","dateCreated":1526595233752,"enabled":0,"priority":4,"slot":"overlay","frequency":86400,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"subscriber","label":"Subscriber"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"homepage","label":"Homepage"},{"value":"subsection_front","label":"Subsection Front"},{"value":"section_front","label":"Section Front"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"name":"ReaderFeedbackDesktopApril2020","layout":"bar","headline":"Give us your feedback.","message":"Help us improve The Seattle Times by answering a few short questions.","buttonText":"Take a brief survey","buttonUrl":"https:\/\/www.research.net\/r\/PLB78SR","closeFrequency":604800},{"id":"hgd791","type":"newsletter-signup","dateCreated":1525968760872,"enabled":0,"priority":3,"slot":"atf","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"newsletter":10728545,"sections":[{"label":"Nation & World","value":"nation-world"}],"buttonText":"Sign up"},{"id":"5b0ohv","type":"newsletter-signup","dateCreated":1525968649832,"enabled":1,"priority":3,"slot":"atf","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"newsletter":10349065,"sections":[{"label":"Sports","value":"sports"}],"buttonText":"Sign up"},{"id":"b3kuim","type":"newsletter-signup","dateCreated":1525968144208,"enabled":0,"priority":3,"slot":"atf","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"subscriber","label":"Subscriber"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"desktop","label":"Desktop"}],"newsletter":10349021,"sections":[{"label":"Home","value":"home"}],"buttonText":"Sign Up"},{"id":"pi9sc7","type":"newsletter-signup","dateCreated":1525720892798,"enabled":1,"priority":3,"slot":"overlay","frequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349060,"layout":"splash","sections":[{"label":"Food & Drink","value":"food-drink"},{"label":"Life","value":"life"},{"label":"Lifestyle","value":"lifestyle"}],"message":"Sign up for the [title] newsletter and eat, drink, and be happy with this newsletter full of epicurean delights.","closeFrequency":1209600,"buttonText":"Sign up"},{"id":"7nsynx","type":"newsletter-signup","dateCreated":1525720828438,"enabled":1,"priority":3,"slot":"overlay","frequency":604800,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349079,"layout":"splash","sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"message":"Sign up for the [title] newsletter for Ed Lab features as well as education-related content and news.","closeFrequency":1209600,"buttonText":"Sign up"},{"id":"613j17","type":"newsletter-signup","dateCreated":1525715776700,"enabled":0,"priority":2,"slot":"overlay","frequency":259200,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349060,"layout":"splash","sections":[{"label":"Life","value":"life"},{"label":"Marijuana","value":"marijuana"},{"label":"Movies","value":"movies"},{"label":"Music","value":"music"},{"label":"Nightlife","value":"nightlife"}],"message":"Sign up for the [title] newsletter and eat, drink, and be happy with this custom-curated newsletter full of epicurean delights.","closeFrequency":604800,"buttonText":"Sign up"},{"id":"oq9zar","type":"newsletter-signup","dateCreated":1525715654553,"enabled":0,"priority":2,"slot":"overlay","frequency":259200,"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10728545,"layout":"splash","message":"Sign up for the [title] newsletter for a quick recap of the day's top stories and need-to-know news.","sections":[{"label":"Education","value":"education"},{"label":"Environment","value":"environment"},{"label":"Markets","value":"markets"},{"label":"Northwest","value":"northwest"},{"label":"Northwest Voices","value":"northwest-voices"},{"label":"Science","value":"science"}],"closeFrequency":604800,"buttonText":"Sign up"},{"id":"xwp6hb","type":"newsletter-signup","dateCreated":1525715538006,"enabled":0,"priority":2,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"frequency":259200,"newsletter":10349079,"layout":"splash","sections":[{"label":"Education Lab","value":"education-lab"}],"message":"Sign up for the [title] newsletter for Ed Lab features as well as education-related content and news.","closeFrequency":604800,"buttonText":"Sign up"},{"id":"i1xzlb","type":"newsletter-signup","dateCreated":1525715372910,"enabled":1,"priority":2,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349065,"layout":"splash","message":"Sign up for the [title] newsletter, all things sports, every weekday.","sections":[{"label":"College Football","value":"college-football"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"Golf","value":"golf"},{"label":"Hockey","value":"hockey"},{"label":"High School Sports","value":"high-school"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Mariners","value":"mariners"},{"label":"MLB","value":"mlb"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"NFL","value":"nfl"},{"label":"Olympics","value":"olympics"},{"label":"Other Sports","value":"other-sports"},{"label":"Pac-12","value":"pac-12"},{"label":"Reign","value":"reign"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Soccer","value":"soccer"},{"label":"Storm","value":"storm"},{"label":"WNBA","value":"wnba"},{"label":"World Cup","value":"world-cup"},{"label":"Seahawks","value":"seahawks"},{"label":"Huskies","value":"uw-huskies"},{"label":"Auto Racing","value":"auto-racing"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Sports","value":"college"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Seattle University","value":"seattle-university"},{"label":"Sounders","value":"sounders"},{"label":"Sports","value":"sports"}],"frequency":259200,"closeFrequency":604800,"buttonText":"Sign up & return to story"},{"id":"ta72uz","type":"newsletter-signup","dateCreated":1525715279007,"enabled":0,"priority":2,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"desktop","label":"Desktop"},{"value":"tablet","label":"Tablet"}],"newsletter":10812646,"layout":"splash","message":"Sign up for [title]. Designed for those who want to know what happens next.","sections":[{"label":"Books","value":"books"},{"label":"Fashion","value":"fashion"},{"label":"Fitness","value":"fitness"},{"label":"Garden","value":"garden"}],"frequency":259200,"closeFrequency":604800,"buttonText":"Sign up"},{"id":"38mwpg","type":"newsletter-signup","dateCreated":1525715145626,"enabled":1,"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"story","label":"Story"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349041,"layout":"splash","message":"Sign up for [title]. Be among the first to know about coronavirus updates and other breaking news.","sections":[{"label":"Amazon","value":"amazon"},{"label":"Boeing & Aerospace","value":"boeing-aerospace"},{"label":"Eastside","value":"eastside"},{"label":"Traffic Lab","value":"transportation"},{"label":"Weather","value":"weather"},{"label":"Health","value":"health"},{"label":"Wellness","value":"wellness"},{"label":"Science","value":"science"}],"frequency":259200,"closeFrequency":604800,"buttonText":"Sign up & return to story"},{"id":"v9ikqn","type":"newsletter-signup","dateCreated":1525715015890,"enabled":1,"priority":2,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"},{"value":"page","label":"Page"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349021,"layout":"splash","message":"Sign up for the [title] newsletter, a quick overview of today's top stories and need-to-know news.","frequency":259200,"sections":[{"label":"Agriculture","value":"agriculture"},{"label":"Data","value":"data"},{"label":"Economy","value":"economy"},{"label":"Local News","value":"seattle-news"},{"label":"Nation","value":"nation"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"Project Homeless","value":"homeless"},{"label":"Puget Sound","value":"puget-sound"},{"label":"Real Estate","value":"real-estate"},{"label":"Seattle University","value":"seattle-university"},{"label":"Special Reports","value":"special-reports"},{"label":"Special Sections","value":"special-sections"},{"label":"Starbucks","value":"starbucks"},{"label":"Technology","value":"technology"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"World","value":"world"},{"label":"Comics","value":"comics"},{"label":"Games & Puzzles","value":"games"},{"label":"Microsoft","value":"microsoft"},{"label":"Local Politics","value":"politics"},{"label":"Local Business","value":"local-business"},{"label":"Crime","value":"crime"},{"label":"Business","value":"business"}],"closeFrequency":604800,"pageIds":[10281555,10275124,10230502,10281558,10260050,10230487,10275133,10230508,10260044,10599705],"buttonText":"Sign up"},{"id":"wnuh01","type":"newsletter-signup","dateCreated":1525713022668,"enabled":0,"priority":3,"slot":"inset","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349060,"sections":[{"label":"Entertainment","value":"entertainment"},{"label":"Food & Drink","value":"food-drink"},{"label":"Home & Decor","value":"home-decor"},{"label":"Life","value":"life"},{"label":"Movies","value":"movies"},{"label":"Music","value":"music"},{"label":"Nightlife","value":"nightlife"},{"label":"Television","value":"tv"},{"label":"Theater","value":"theater"},{"label":"Travel","value":"travel"},{"label":"Wellness","value":"wellness"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"}],"buttonText":"Sign up"},{"id":"kjyo9l","type":"newsletter-signup","dateCreated":1525712953873,"enabled":1,"priority":3,"slot":"inset","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"former","label":"Former Subscriber"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"free-trial-user","label":"Free Trial User"},{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349079,"sections":[{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"}],"buttonText":"Sign up"},{"id":"srdryd","type":"newsletter-signup","dateCreated":1525712790950,"enabled":1,"priority":3,"slot":"inset","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"print-replica","label":"Print Replica"},{"value":"registered","label":"Registered"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349065,"sections":[{"label":"Auto Racing","value":"auto-racing"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Golf","value":"golf"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"High School Sports","value":"high-school"},{"label":"Hockey","value":"hockey"},{"label":"Horse Racing","value":"horse-racing"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"Mariners","value":"mariners"},{"label":"MLB","value":"mlb"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"NFL","value":"nfl"},{"label":"Olympics","value":"olympics"},{"label":"Other Sports","value":"other-sports"},{"label":"Pac-12","value":"pac-12"},{"label":"Reign","value":"reign"},{"label":"Seahawks","value":"seahawks"},{"label":"Seattle University","value":"seattle-university"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Soccer","value":"soccer"},{"label":"Sounders","value":"sounders"},{"label":"Sports","value":"sports"},{"label":"Storm","value":"storm"},{"label":"WNBA","value":"wnba"},{"label":"World Cup","value":"world-cup"}],"buttonText":"Sign up"},{"id":"drr5td","type":"newsletter-signup","dateCreated":1525712647039,"enabled":1,"priority":3,"slot":"inset","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10728545,"sections":[{"label":"Amazon","value":"amazon"},{"label":"Boeing & Aerospace","value":"boeing-aerospace"},{"label":"Business","value":"business"},{"label":"Crime","value":"crime"},{"label":"Environment","value":"environment"},{"label":"Homes & Real Estate","value":"homes-real-estate"},{"label":"Local Business","value":"local-business"},{"label":"Local Politics","value":"politics"},{"label":"Nation","value":"nation"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"Puget Sound","value":"puget-sound"},{"label":"Real Estate","value":"real-estate"},{"label":"Science","value":"science"},{"label":"Special Reports","value":"special-reports"},{"label":"Special Sections","value":"special-sections"},{"label":"Starbucks","value":"starbucks"},{"label":"Technology","value":"technology"},{"label":"World","value":"world"}],"buttonText":"Sign up"},{"id":"20r75r","type":"newsletter-signup","dateCreated":1525712452818,"enabled":1,"priority":3,"slot":"inset","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"print-replica","label":"Print Replica"},{"value":"shared-subscriber","label":"Shared Subscriber"},{"value":"subscriber","label":"Subscriber"},{"value":"former","label":"Former Subscriber"},{"value":"free-trial-user","label":"Free Trial User"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"newsletter":10349021,"sections":[{"label":"Agriculture","value":"agriculture"},{"label":"Data","value":"data"},{"label":"Eastside","value":"eastside"},{"label":"Economy","value":"economy"},{"label":"Health","value":"health"},{"label":"International Trade","value":"international-trade"},{"label":"Local News","value":"seattle-news"},{"label":"Markets","value":"markets"},{"label":"Microsoft","value":"microsoft"},{"label":"News","value":"news"},{"label":"Northwest","value":"northwest"},{"label":"Northwest Voices","value":"northwest-voices"},{"label":"Project Homeless","value":"homeless"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"Traffic Lab","value":"transportation"},{"label":"Weather","value":"weather"}],"message":"","buttonText":"Sign up"},{"id":"q7s7cc","type":"paywall","dateCreated":1525676475056,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","pageviewCount":3,"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"headline":"Last free article!","buttonText":"Subscribe","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"vmag46","type":"paywall","dateCreated":1525676408880,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"layout":"bar","pageviewCount":2,"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"headline":"We need your support!","buttonText":"Subscribe","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"7g7g98","type":"paywall","dateCreated":1525676312920,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":3,"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"bar","headline":"This is your last free article.","message":"Free press takes time and money to produce. Support us today.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"o3nmdv","type":"paywall","dateCreated":1525676214214,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"layout":"bar","pageviewCount":2,"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"headline":"Start supporting independent journalism today.","message":"Get unlimited digital access for just $1.","buttonText":"Learn more","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"eb9x99","type":"generic","dateCreated":1522791778702,"enabled":0,"priority":5,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"pageTypes":[{"value":"section_front","label":"Section Front"},{"value":"subsection_front","label":"Subsection Front"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"name":"saleSectionFrontMobile","layout":"bar","headline":"Don't miss out!","buttonText":"Save over 90% on digital access and support the local free press.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo","frequency":86400,"closeFrequency":""},{"id":"8bsbsn","type":"generic","dateCreated":1522791238254,"enabled":0,"priority":5,"slot":"overlay","pageTypes":[{"value":"homepage","label":"Homepage"}],"userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"}],"layout":"bar","name":"saleHomepageMobile","headline":"Save during our One Day Sale!","buttonText":"Get digital access for 90% off. Cancel anytime.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo","frequency":86400,"closeFrequency":""},{"id":"nmey9l","type":"paywall","dateCreated":1510037731186,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"layout":"bar","paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"pageviewCount":4,"headline":"This is your last free article.","message":"Hurry! Act now and save big during our Presidents Day Sale.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"gyjlpj","type":"paywall","dateCreated":1510037662307,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"registered","label":"Registered"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":3,"layout":"bar","paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"headline":"Get 90% off select subscriptions","message":"This Presidents Day Sale, get digital access for $5 for 12 weeks.","buttonText":"Subscribe now","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter"},{"id":"6ve0oh","type":"paywall","dateCreated":1510037513769,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"registered","label":"Registered"},{"value":"anonymous","label":"Anonymous"},{"value":"former","label":"Former Subscriber"}],"deviceTypes":[{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"bar","pageviewCount":2,"headline":"Save during our Presidents Day Sale!","message":"Get 90% off on select subscriptions. Cancel anytime.","buttonUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=meter","buttonText":"Subscribe now","hideFooter":0},{"id":"qkvtj8","type":"paywall","dateCreated":1508998721526,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"print-replica","label":"Print Replica"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"corner","pageviewCount":2,"message":"For unlimited seattletimes.com access, please call customer service at 1.800.542.0820 to upgrade your subscription."},{"id":"7tudyd","type":"paywall","dateCreated":1508998698353,"enabled":0,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"print-replica","label":"Print Replica"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"pageviewCount":4,"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"corner","message":"For unlimited seattletimes.com access, please call customer service at 1.800.542.0820 to upgrade your subscription."},{"id":"nvr4c8","type":"paywall","dateCreated":1508998666696,"enabled":1,"pageTypes":[{"value":"story","label":"Story"}],"priority":4,"slot":"overlay","userTypes":[{"value":"print-replica","label":"Print Replica"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"paywallConfigs":[{"label":"stdotcom","value":"stdotcom"}],"layout":"corner","pageviewCount":3,"message":"For unlimited seattletimes.com access, please call customer service at 1.800.542.0820 to upgrade your subscription."},{"id":"v0fma7","type":"ad-block","dateCreated":1508287536514,"enabled":1,"priority":5,"slot":"overlay","pageTypes":[{"value":"story","label":"Story"}],"abTesting":0,"headline":"We noticed you're blocking ads.","message":"Great journalism depends on ad revenue. To keep reading, please turn off your ad blocker, create an account or support us by becoming a subscriber.","buttonOneUrl":"https:\/\/www.seattletimes.com\/how-to-turn-off-ad-blockers\/","buttonOneText":"Unblock ads","buttonTwoText":"Subscribe","buttonTwoUrl":"https:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=adblock","userTypes":[{"value":"anonymous","label":"Anonymous"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}]},{"id":"jpa4jw","type":"autopay","dateCreated":1503525230341,"enabled":0,"priority":3,"slot":"overlay","message":"With AutoPay, you'll spend less time paying your Seattle Times bill - so you can spend more time reading our stories.","buttonText":"Sign up for AutoPay","url":"https:\/\/secure.seattletimes.com\/accountcenter\/autopay","pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"frequency":1209600},{"id":"t7olub","type":"bill-overdue","dateCreated":1503524391249,"enabled":1,"priority":4,"slot":"overlay","message":"Our records show your bill is past due. Take a few minutes to pay it now, and get back to your reading.","url":"https:\/\/secure.seattletimes.com\/accountcenter\/paymybill","buttonText":"Pay your Bill","pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"frequency":604800},{"id":"50vut3","type":"subscription-promo","dateCreated":1502315575699,"enabled":1,"slot":"postscript","priority":4,"headline":"We need your support","message":"In-depth journalism takes time and effort to produce, and it depends on paying subscribers. If you value these kinds of stories, consider subscribing.","buttonText":"Subscribe","url":"http:\/\/www.seattletimes.com\/subscribe\/signup-offers\/?subsource=promo","userTypes":[{"value":"anonymous","label":"Anonymous"},{"value":"former","label":"Former Subscriber"},{"value":"registered","label":"Registered"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"sections":[{"label":"Auto Racing","value":"auto-racing"},{"label":"Agriculture","value":"agriculture"},{"label":"Amazon","value":"amazon"},{"label":"Boeing & Aerospace","value":"boeing-aerospace"},{"label":"Books","value":"books"},{"label":"Business","value":"business"},{"label":"Careers","value":"careers"},{"label":"Classical Music","value":"classical-music"},{"label":"College Basketball","value":"college-basketball"},{"label":"College Football","value":"college-football"},{"label":"College Sports","value":"college"},{"label":"Comics","value":"comics"},{"label":"Cougar Basketball","value":"wsu-cougar-basketball"},{"label":"Cougar Football","value":"wsu-cougar-football"},{"label":"Cougars","value":"wsu-cougars"},{"label":"Crime","value":"crime"},{"label":"Dance","value":"dance"},{"label":"Data","value":"data"},{"label":"Diversions","value":"shop-northwest"},{"label":"Eastside","value":"eastside"},{"label":"Economy","value":"economy"},{"label":"Editorials","value":"editorials"},{"label":"Education","value":"education"},{"label":"Education Lab","value":"education-lab"},{"label":"Entertainment","value":"entertainment"},{"label":"Environment","value":"environment"},{"label":"Events","value":"events"},{"label":"Explore","value":"explore"},{"label":"Fashion","value":"fashion"},{"label":"Fitness","value":"fitness"},{"label":"Food & Drink","value":"food-drink"},{"label":"Garden","value":"garden"},{"label":"Golf","value":"golf"},{"label":"Gonzaga","value":"gonzaga-bulldogs"},{"label":"Health","value":"health"},{"label":"High School Sports","value":"high-school"},{"label":"Hockey","value":"hockey"},{"label":"Home & Decor","value":"home-decor"},{"label":"Homes & Real Estate","value":"homes-real-estate"},{"label":"Horse Racing","value":"horse-racing"},{"label":"Huskies","value":"uw-huskies"},{"label":"Husky Basketball","value":"uw-husky-basketball"},{"label":"Husky Football","value":"uw-husky-football"},{"label":"International Trade","value":"international-trade"},{"label":"Letters to the Editor","value":"letters-to-the-editor"},{"label":"Life","value":"life"},{"label":"Lifestyle","value":"lifestyle"},{"label":"Local Business","value":"local-business"},{"label":"Local News","value":"seattle-news"},{"label":"Local Politics","value":"politics"},{"label":"Marijuana","value":"marijuana"},{"label":"Mariners","value":"mariners"},{"label":"Markets","value":"markets"},{"label":"Microsoft","value":"microsoft"},{"label":"MLB","value":"mlb"},{"label":"Movies","value":"movies"},{"label":"Music","value":"music"},{"label":"Nation","value":"nation"},{"label":"Nation & World","value":"nation-world"},{"label":"Nation & World Politics","value":"nation-politics"},{"label":"NBA","value":"nba"},{"label":"NCAA Tournament","value":"ncaa-tournament"},{"label":"News","value":"news"},{"label":"NFL","value":"nfl"},{"label":"Nightlife","value":"nightlife"},{"label":"Northwest","value":"northwest"},{"label":"Northwest Voices","value":"northwest-voices"},{"label":"Obituaries","value":"obituaries"},{"label":"Oddities","value":"oddities"},{"label":"Olympics","value":"olympics"},{"label":"Opinion","value":"opinion"},{"label":"Other Sports","value":"other-sports"},{"label":"Outdoors","value":"outdoors"},{"label":"Pac-12","value":"pac-12"},{"label":"Pacific NW Magazine","value":"pacific-nw-magazine"},{"label":"Pets","value":"pets"},{"label":"Photo & Video","value":"photo-video"},{"label":"Photography","value":"photography"},{"label":"Project Homeless","value":"homeless"},{"label":"Puget Sound","value":"puget-sound"},{"label":"Real Estate","value":"real-estate"},{"label":"Reign","value":"reign"},{"label":"Retail","value":"retail"},{"label":"Science","value":"science"},{"label":"Seahawks","value":"seahawks"},{"label":"Seattle University","value":"seattle-university"},{"label":"Snow Sports","value":"snow-sports"},{"label":"Soccer","value":"soccer"},{"label":"Sounders","value":"sounders"},{"label":"Special Reports","value":"special-reports"},{"label":"Special Sections","value":"special-sections"},{"label":"Sports","value":"sports"},{"label":"Starbucks","value":"starbucks"},{"label":"Storm","value":"storm"},{"label":"Technology","value":"technology"},{"label":"Theater","value":"theater"},{"label":"Times Watchdog","value":"times-watchdog"},{"label":"Traffic Lab","value":"transportation"},{"label":"Travel","value":"travel"},{"label":"TV\/Streaming","value":"tv"},{"label":"Video","value":"video"},{"label":"Video Games","value":"video-games"},{"label":"Visual Arts","value":"visual-arts"},{"label":"Weather","value":"weather"},{"label":"Wellness","value":"wellness"},{"label":"WNBA","value":"wnba"},{"label":"World","value":"world"}]},{"id":"jbdbno","type":"declined-payment","dateCreated":1502314271094,"enabled":1,"priority":3,"slot":"overlay","headline":"We\u2019re unable to process your payment.","message":"Update your information to prevent your subscription from being cancelled.","url":"https:\/\/secure.seattletimes.com\/accountcenter\/autopay","buttonText":"Update payment","pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"}],"frequency":""},{"id":"gae1qu","type":"credit-card-expiring","dateCreated":1502314216718,"enabled":1,"priority":3,"slot":"overlay","message":"Your subscription will be suspended unless you update your credit card.","buttonText":"Update payment","url":"https:\/\/secure.seattletimes.com\/accountcenter\/managesubscriptions","pageTypes":[{"value":"story","label":"Story"}],"userTypes":[{"value":"subscriber","label":"Subscriber"}],"deviceTypes":[{"value":"mobile","label":"Mobile"},{"value":"tablet","label":"Tablet"},{"value":"desktop","label":"Desktop"}],"frequency":86400}],"newsletters":{"subscriptionEndpoint":"https:\/\/secure.seattletimes.com\/api\/newsletter-signup","dataExtensionIdExtra":"F8EF9EFF-502A-4BD4-AFE0-9C0B701EA6A3","userDataEndpoint":"https:\/\/secure.seattletimes.com\/api\/newsletter-user","emailsNewsroom":{"10349041":{"id":10349041,"title":"Breaking News","name":"breaking-news","permalink":"https:\/\/www.seattletimes.com\/newsletters\/breaking-news\/","callToAction":"Sign up for Breaking News Alerts","description":"Be among the first to know about coronavirus updates and other breaking news.","newsletterType":"Alert","buttonText":"Sign up","frequency":"Delivered as needed.","listId":2117,"dataExtensionId":"053B79F0-EC2B-4625-BA83-CF49F48A9408","serviceProvider":"marketingcloud","excerpt":"Be among the first to know about coronavirus updates and other breaking news. As soon as something happens, in our community or out in the world, you\u2019ll get an email.","signupTitle":"Sign up for Breaking News Alerts","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/BreakingNews_StaticPhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/SeattleCoronavirus_I90_merge-780x500.jpg"},"10812646":{"id":10812646,"title":"Don&#8217;t Miss","name":"dont-miss","permalink":"https:\/\/www.seattletimes.com\/newsletters\/dont-miss\/","callToAction":"Sign up for Don't Miss","description":"Delivered periodically, these email alerts cover developing stories and follow-ups on breaking news, focusing on local events and national stories with a Northwest connection.","newsletterType":"Alert","buttonText":"Sign up","frequency":"Delivered as needed.","listId":3060,"dataExtensionId":"099E22DB-B3CB-4EFE-AD7D-45EC743F9B85","serviceProvider":"marketingcloud","excerpt":"Keep up with developing stories with Don\u2019t Miss alerts, designed for those who want to know what happens next. Like Breaking Alerts, only for non-breaking stories and news.","signupTitle":"Sign up for Don't Miss","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2018\/04\/DontMiss-Alert_Landing-Page.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2018\/04\/News-Alert_Landing-Page_big-780x500.jpg"},"10349060":{"id":10349060,"title":"Eats & Drinks","name":"eats-drinks","permalink":"https:\/\/www.seattletimes.com\/newsletters\/eats-drinks\/","callToAction":"Sign up for Eats & Drinks","description":"The latest restaurant news, happy-hour hangouts and more. Delivered to your inbox Thursdays.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered Thursdays.","listId":1961,"dataExtensionId":"066C4A93-0DC8-4776-B1AF-B63A5F673D12","serviceProvider":"marketingcloud","excerpt":"Eat, drink and be happy with this custom-curated newsletter full of epicurean delights. The Seattle Times\u2019 food and drink staff serve up the week\u2019s best items and deliver them to your inbox every Thursday.","signupTitle":"Sign up for Eats &amp; Drinks","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/EatsDrinks_StaticPhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/EatsDrinks_TopImg_2000-780x500.jpg"},"10349079":{"id":10349079,"title":"Education Lab","name":"education-lab","permalink":"https:\/\/www.seattletimes.com\/newsletters\/education-lab\/","callToAction":"Sign up for Education Lab","description":"An easy way to stay connected to education. Delivered to your inbox Thursdays.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered Thursdays.","listId":2095,"dataExtensionId":"B708F3DE-B396-4403-AEE3-720BC31B42BE","serviceProvider":"marketingcloud","excerpt":"Education Lab is an ongoing journalism initiative dedicated to exploring solutions for improving public education in Washington state. This weekly newsletter showcases Ed Lab features, as well as the week\u2019s education-related content and news.","signupTitle":"Sign up for Education Lab","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/Ed-Lab-Retina-WhitePhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/EducationLab_TopImg_2000-780x500.jpg"},"10728545":{"id":10728545,"title":"Evening Brief","name":"evening-brief","permalink":"https:\/\/www.seattletimes.com\/newsletters\/evening-brief\/","callToAction":"Sign up for Evening Brief","description":"Delivered weeknights, this email newsletter gives you a quick recap of the day's top stories and need-to-know news, as well as intriguing photos and topics to spark conversation as you wind down from your day.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered weekday evenings.","listId":3004,"dataExtensionId":"9708A948-A963-4A59-A0BC-BFA38E9E9087","serviceProvider":"marketingcloud","excerpt":"Delivered weeknights, this email newsletter gives you a quick recap of the day's top stories and need-to-know news, as well as intriguing photos and topics to spark conversation as you wind down from your day.","signupTitle":"Sign up for Evening Brief","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2018\/03\/Retina-WhitePhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2018\/03\/EveningBrief-Header-image-780x500.jpg"},"10349065":{"id":10349065,"title":"Fan Fix","name":"fan-fix","permalink":"https:\/\/www.seattletimes.com\/newsletters\/fan-fix\/","callToAction":"Sign up for Fan Fix","description":"Your dose of local sports news. Delivered Monday through Friday.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered Monday through Friday.","listId":2544,"dataExtensionId":"8739B97E-1448-4AE1-9FDF-EE0AC5BA3DCD","serviceProvider":"marketingcloud","excerpt":"Delivered weekdays, Fan Fix covers all things sports, with an emphasis on local teams and athletes. From the preps to the pros, it's essential reading for local sports fans.","signupTitle":"Sign up for Fan Fix","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/iPhone_Landing-Page_FanFix.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/Top-image-21136-CROP-780x500.jpg"},"10349021":{"id":10349021,"title":"Morning Brief","name":"morning-brief","permalink":"https:\/\/www.seattletimes.com\/newsletters\/morning-brief\/","callToAction":"Sign up for Morning Brief","description":"Delivered weekday mornings, this email provides a quick overview of top stories and need-to-know news, including the latest on the novel coronavirus.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered weekday mornings.","listId":2116,"dataExtensionId":"CBCC013B-4181-4475-B06E-C288599392FD","serviceProvider":"marketingcloud","excerpt":"Delivered bright and early weekday mornings, this newsletter provides a quick overview of top stories and need-to-know news, along with intriguing photos and water-cooler-worthy items you might otherwise miss.","signupTitle":"Sign up for Morning Brief","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/MorningBrief_StaticPhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2017\/04\/MorningBrief2_TopImg_2000-780x500.jpg"},"11962250":{"id":11962250,"title":"Sunday Morning","name":"sunday-morning","permalink":"https:\/\/www.seattletimes.com\/newsletters\/sunday-morning\/","callToAction":"Sign up for Sunday Morning","description":"Kick back and downshift into Sunday-morning mode with thoughtful reads and fun diversions.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered every Sunday morning.","listId":4362,"dataExtensionId":"A15FDE0E-350A-42BC-81BC-AB3968CF377B","serviceProvider":"marketingcloud","excerpt":"Kick back and downshift into Sunday-morning mode with thoughtful reads and fun diversions.","signupTitle":"Sign up for Sunday Morning","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2019\/09\/Sunday-Morning-WhitePhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2019\/09\/SundayMorningSignup_CROP-780x500.jpg"},"11251488":{"id":11251488,"title":"Top of the Times","name":"top-of-the-times","permalink":"https:\/\/www.seattletimes.com\/newsletters\/top-of-the-times\/","callToAction":"Sign up for Top of the Times","description":"Delivered on Saturday mornings, this email features a collection of the week's best reads.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered on Saturdays.","listId":1798,"dataExtensionId":"07BBCDCC-02F0-451C-9366-CCFD4E0B5DEB","serviceProvider":"marketingcloud","excerpt":"Stay on top of the week's news with this Saturday newsletter, highlighting the most important and interesting stories from each Seattle Times section.","signupTitle":"Sign up for Top of the Times","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2019\/02\/iPhone_Landing-Page_3TopOfT.gif","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2019\/02\/209103_traffic_04_2000x1071-780x500.jpg"},"11815630":{"id":11815630,"title":"Viewpoints","name":"viewpoints","permalink":"https:\/\/www.seattletimes.com\/newsletters\/viewpoints\/","callToAction":"Sign up for Viewpoints","description":"Delivered on Tuesday mornings, this email brings you the best in Opinion, from editorials to letters to the editor, and a preview of what\u2019s coming up that week.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered on Tuesdays.","listId":4281,"dataExtensionId":"7789379C-59A7-45F9-9D7C-138AAB1A2319","serviceProvider":"marketingcloud","excerpt":"Delivered on Tuesday mornings, this email brings you the best in Opinion, from editorials to letters to the editor, and a preview of what lies ahead.","signupTitle":"Sign up for Viewpoints","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2019\/07\/Retina-WhitePhone-Viewpoints.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2019\/07\/208408_Elex_BallotBox_CROP-780x500.jpg"},"12769021":{"id":12769021,"title":"Voices for a Free Press","name":"voices-for-a-free-press","permalink":"https:\/\/www.seattletimes.com\/newsletters\/voices-for-a-free-press\/","callToAction":"Sign up for Voices for a Free Press","description":"This weekly newsletter delivers thoughtful commentary, sound analysis and provocative opinions on the state of our free press system, the backbone of a strong democracy.","newsletterType":"Newsletter","buttonText":"Sign up","frequency":"Delivered every week.","listId":5042,"dataExtensionId":"F2012870-CF4A-4EF7-BD51-5B2CA095459E","serviceProvider":"marketingcloud","excerpt":"This weekly newsletter delivers thoughtful commentary, sound analysis and provocative opinions on the state of our free press system, the backbone of a strong democracy.","signupTitle":"Sign up for Voices for a Free Press","signupDescription":"Enter your email address to get on the list.","deviceImage":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2020\/05\/VoicesFreePress-WhitePhone.png","image":"https:\/\/static.seattletimes.com\/wp-content\/uploads\/2020\/05\/VoicesFreePress-NewsPaperStack-780x500.png"}},"emailsCompany":[{"title":"Company Updates","excerpt":"Information on new site features, services and promotions from the Seattle Times Company.","listId":580,"dataExtensionId":"","serviceProvider":"marketingcloud","userLevel":1},{"title":"Print Replica Notifications","excerpt":"Receive a daily email when the replica of today&#039;s newspaper is ready to be viewed.","listId":1015,"dataExtensionId":"80FCE1FE-2E8D-4194-B211-A32F066773CF","serviceProvider":"marketingcloud","userLevel":3},{"title":"Subscriber rewards","excerpt":"Coupons and deals exclusively for our subscribers.","listId":310,"dataExtensionId":"","serviceProvider":"marketingcloud","userLevel":3}]},"settings":{"ssoEnv":"secure.","adBlockMessageTimeout":6000,"nonBlockingMessagesDelay":3000,"newslettersUrl":"https:\/\/www.seattletimes.com\/newsletters"}};
         SEATIMESCO.paywall = SEATIMESCO.paywall || {"contentMetered":false,"pageExcluded":false,"configs":[{"target":"all","config":"https:\/\/www.seattletimes.com\/paywallconfig\/stdotcom\/"},{"target":"privateMode=on","config":"https:\/\/www.seattletimes.com\/paywallconfig\/mmtest\/"},{"target":"paywall2=on","config":"https:\/\/www.seattletimes.com\/paywallconfig\/paywall2\/"},{"target":"STSegment=paywall2","config":"https:\/\/www.seattletimes.com\/paywallconfig\/incognito\/"},{"target":"STSegment=formers","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"STSegment=propensity","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"_matherSegments=MATHER_P3_HIGHPROPENSITYGROUPB_20190712","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"_matherSegments=MATHER_P3_MIDPROPENSITYGROUPB_20190712","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"_matherSegments=MATHER_P3_LOWPROPENSITYGROUPB_20190712","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"STSegment=mmtest","config":"https:\/\/www.seattletimes.com\/paywallconfig\/mmtest\/"},{"target":"STSegment=incognito","config":"https:\/\/www.seattletimes.com\/paywallconfig\/incognito\/"},{"target":"_matherSegments=MATHER_P3_LOWPROPENSITYGROUPA_20190712","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"_matherSegments=MATHER_P3_MIDPROPENSITYGROUPA_20190712","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"_matherSegments=MATHER_P3_HIGHPROPENSITYGROUPA_20190712","config":"https:\/\/www.seattletimes.com\/paywallconfig\/formers\/"},{"target":"STSegment=Paywallat2","config":"https:\/\/www.seattletimes.com\/paywallconfig\/paywall2\/"},{"target":"_matherSegments=MATHER_U9_INSTANTA_20200219","config":"https:\/\/www.seattletimes.com\/paywallconfig\/stdotcom\/"},{"target":"_matherSegments=MATHER_U9_INSTANTB_20200219","config":"https:\/\/www.seattletimes.com\/paywallconfig\/stdotcom\/"}]}; 
        window.SEATIMESCO.browser = window.SEATIMESCO.browser || {};
        window.SEATIMESCO.browser.privacy = window.SEATIMESCO.browser.privacy || {};
        window.SEATIMESCO.browser.privacy.detectionEnabled = true;
        window.SEATIMESCO.browser.privacy.doNotTrack = 0;

        window.SEATIMESCO.browser.adBlock = window.SEATIMESCO.browser.adBlock || {};
        window.SEATIMESCO.browser.adBlock.detectionEnabled = true;
        window.SEATIMESCO.browser.adBlock.detectionTimeout = 300;
        ;
/* ]]> */
</script>
<script type='text/javascript' src='https://www.seattletimes.com/wp-content/themes/st_refresh/js/bundle.min.js?ver=1590084529'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var recirculationData = null;
/* ]]> */
</script>
<script type='text/javascript' async="async" src='https://www.seattletimes.com/wp-content/plugins/st-recirculation/dist/st-recirculation-bundle.js?ver=1587485469'></script>
<script type='text/javascript' async="async" src='https://www.seattletimes.com/wp-content/plugins/st-user-messaging/dist/st-user-messaging-main-bundle.js?ver=1590084529'></script>
<script type='text/javascript' src='https://www.seattletimes.com/wp-content/themes/st_refresh/js/site-wide/dist/st-sitewide-bundle.js?ver=1590084529' async='async'></script>
<!--[if lt IE 10]>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {

  if ( helpers.getCookie( 'st_browser_upgrade_message_seen' ) == false && helpers.getCookie('st_browser_upgrade_message_seen') != 'true' ) {
    let browserUpdateDiv = document.createElement('div');
    browserUpdateDiv.className = "no-support-message";
    browserUpdateDiv.innerHTML = "Your browser appears to be outdated and can't take advantage of many features on the site. Please <a href=\"http://outdatedbrowser.com/en\">consider upgrading your browser</a> to receive our intended user experience."
    document.body.insertBefore(browserUpdateDiv, document.body.childNodes[0]);

    helpers.writeCookie('st_browser_upgrade_message_seen', 'true', (30 * 24 * 60 * 60 * 1000), '/', '.seattletimes.com' );
  }
});
</script>
<![endif]-->

  


  <script type="application/ld+json">
    {
      "@context" : "https://schema.org",
      "@type": "WebSite",
      "url" : "https://www.seattletimes.com",
      "potentialAction": {
        "@type" : "SearchAction",
		"target" : "https://www.seattletimes.com/search?query={search_term_string}",
        "query-input" : "required name=search_term_string"
      }
    }
  </script>
  
</div>



<script type='text/javascript'>

  // Chartbeat
  // http://support.chartbeat.com/docs/#code

  if ( _sf_async_config == undefined ) {
    // should be defined from the header-headcontent.php file, this is to cover any instances where it isn't
    let _sf_async_config = _sf_async_config || {};
  }

  let userType = '';

  let decodedCookie = decodeURIComponent(document.cookie);
  let cachedCookies = decodedCookie.split(';');

  for ( let i=0; i<cachedCookies.length; i++ ) {
    let splitCookie = cachedCookies[i].split('=');
    let cookieName = splitCookie[0].replace(/^\s+|\s+jQuery/g, '');
    let cookieData = splitCookie[1];

    if (cookieName === 'st_subscriberdata') {
      const cookieResults = cookieData;

      if (Number(cookieResults) === Number(-1) || Number(cookieResults) === Number(-2) ) {
        userType = "lgdin";
      } else if (Number(cookieResults) === Number(0) || Array.isArray(JSON.parse(cookieResults))) {
        userType = "paid";
      } else {
        userType = "anon";
      }
    }
  }

  userType = (userType === '' ? 'anon' : userType);

  _sf_async_config.sections = null;
  _sf_async_config.authors = null;
  _sf_async_config.title = null;

  /** CONFIGURATION START **/
  if(dataLayer[0]){
    _sf_async_config.sections = dataLayer[0].section_tier1 !== undefined ? dataLayer[0].section_tier1 : _sf_async_config.sections;
    _sf_async_config.authors = dataLayer[0].author !== undefined ? dataLayer[0].author : _sf_async_config.authors;
    _sf_async_config.title = dataLayer[0].title !== undefined ? dataLayer[0].title : _sf_async_config.title;
  }
  const _cbq = window._cbq = (window._cbq || []);
  _cbq.push(['_acct', userType]);
  /** CONFIGURATION END **/

  (function(){
    function loadChartbeat() {
      window._sf_endpt=(new Date()).getTime();
      let e = document.createElement("script");
      e.setAttribute("language", "javascript");
      e.setAttribute("type", "text/javascript");
      e.setAttribute('src', '//static.chartbeat.com/js/chartbeat.js');
      document.body.appendChild(e);
    }
    let oldonload = window.onload;
    window.onload = (typeof window.onload != "function") ?
       loadChartbeat : function() { oldonload(); loadChartbeat(); };
  })();
</script>


</body>
</html>

<!--
Performance optimized by W3 Total Cache. Learn more: https://www.w3-edge.com/products/

Object Caching 208/215 objects using memcached

Served from: www.seattletimes.com @ 2020-05-23 15:34:07 by W3 Total Cache
-->