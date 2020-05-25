<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>
Sino-NK | Sino-NK is a research website for Sinologists and Koreanists.</title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="shortcut icon" href="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/themes/sinonk/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" media="all" href="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/themes/sinonk/style.css" />
<link rel="pingback" href="https://sinonk.com/xmlrpc.php" />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="Sino-NK &raquo; Feed" href="https://sinonk.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="Sino-NK &raquo; Comments Feed" href="https://sinonk.com/comments/feed/" />
<!-- This site uses the Google Analytics by ExactMetrics plugin v6.0.2 - Using Analytics tracking - https://www.exactmetrics.com/ -->
<script type="text/javascript" data-cfasync="false">
	var em_version         = '6.0.2';
	var em_track_user      = true;
	var em_no_track_reason = '';
	
	var disableStr = 'ga-disable-UA-56743558-1';

	/* Function to detect opted out users */
	function __gaTrackerIsOptedOut() {
		return document.cookie.indexOf(disableStr + '=true') > -1;
	}

	/* Disable tracking if the opt-out cookie exists. */
	if ( __gaTrackerIsOptedOut() ) {
		window[disableStr] = true;
	}

	/* Opt-out function */
	function __gaTrackerOptout() {
	  document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
	  window[disableStr] = true;
	}

	if ( 'undefined' === typeof gaOptout ) {
		function gaOptout() {
			__gaTrackerOptout();
		}
	}
	
	if ( em_track_user ) {
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','__gaTracker');

window.ga = __gaTracker;		__gaTracker('create', 'UA-56743558-1', 'auto');
		__gaTracker('set', 'forceSSL', true);
		__gaTracker('set', 'anonymizeIp', true);
		__gaTracker('send','pageview');
		__gaTracker( function() { window.ga = __gaTracker; } );
	} else {
		console.log( "" );
		(function() {
			/* https://developers.google.com/analytics/devguides/collection/analyticsjs/ */
			var noopfn = function() {
				return null;
			};
			var noopnullfn = function() {
				return null;
			};
			var Tracker = function() {
				return null;
			};
			var p = Tracker.prototype;
			p.get = noopfn;
			p.set = noopfn;
			p.send = noopfn;
			var __gaTracker = function() {
				var len = arguments.length;
				if ( len === 0 ) {
					return;
				}
				var f = arguments[len-1];
				if ( typeof f !== 'object' || f === null || typeof f.hitCallback !== 'function' ) {
					console.log( 'Not running function __gaTracker(' + arguments[0] + " ....) because you are not being tracked. " + em_no_track_reason );
					return;
				}
				try {
					f.hitCallback();
				} catch (ex) {

				}
			};
			__gaTracker.create = function() {
				return new Tracker();
			};
			__gaTracker.getByName = noopnullfn;
			__gaTracker.getAll = function() {
				return [];
			};
			__gaTracker.remove = noopfn;
			window['__gaTracker'] = __gaTracker;
			window.ga = __gaTracker;		})();
		}
</script>
<!-- / Google Analytics by ExactMetrics -->
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/sinonk.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.4.1"}};
			/*! This file is auto-generated */
			!function(e,a,t){var r,n,o,i,p=a.createElement("canvas"),s=p.getContext&&p.getContext("2d");function c(e,t){var a=String.fromCharCode;s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,e),0,0);var r=p.toDataURL();return s.clearRect(0,0,p.width,p.height),s.fillText(a.apply(this,t),0,0),r===p.toDataURL()}function l(e){if(!s||!s.fillText)return!1;switch(s.textBaseline="top",s.font="600 32px Arial",e){case"flag":return!c([127987,65039,8205,9895,65039],[127987,65039,8203,9895,65039])&&(!c([55356,56826,55356,56819],[55356,56826,8203,55356,56819])&&!c([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]));case"emoji":return!c([55357,56424,55356,57342,8205,55358,56605,8205,55357,56424,55356,57340],[55357,56424,55356,57342,8203,55358,56605,8203,55357,56424,55356,57340])}return!1}function d(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(i=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},o=0;o<i.length;o++)t.supports[i[o]]=l(i[o]),t.supports.everything=t.supports.everything&&t.supports[i[o]],"flag"!==i[o]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[i[o]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(r=t.source||{}).concatemoji?d(r.concatemoji):r.wpemoji&&r.twemoji&&(d(r.twemoji),d(r.wpemoji)))}(window,document,window._wpemojiSettings);
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
	<link rel='stylesheet' id='mci-footnotes-css-public-css'  href='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/footnotes/class/../css/public.css?ver=5.4.1' type='text/css' media='all' />
<link rel='stylesheet' id='wp-block-library-css'  href='https://c0.wp.com/c/5.4.1/wp-includes/css/dist/block-library/style.min.css' type='text/css' media='all' />
<style id='wp-block-library-inline-css' type='text/css'>
.has-text-align-justify{text-align:justify;}
</style>
<link rel='stylesheet' id='cbl-css-css'  href='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/custom-bullet-lists/cbl-styles.css?ver=5.4.1' type='text/css' media='all' />
<link rel='stylesheet' id='rotatingtweets-css'  href='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/rotatingtweets/css/style.css?ver=5.4.1' type='text/css' media='all' />
<link rel='stylesheet' id='googlefonts-css'  href='https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400italic,700&subset=latin-ext,latin' type='text/css' media='all' />
<link rel='stylesheet' id='wp-pagenavi-css'  href='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/wp-pagenavi/pagenavi-css.css?ver=2.70' type='text/css' media='all' />
<link rel='stylesheet' id='tablepress-default-css'  href='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/tablepress/css/default.min.css?ver=1.11' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack_css-css'  href='https://c0.wp.com/p/jetpack/8.5/css/jetpack.css' type='text/css' media='all' />
<script type='text/javascript' src='https://c0.wp.com/c/5.4.1/wp-includes/js/jquery/jquery.js'></script>
<script type='text/javascript' src='https://c0.wp.com/c/5.4.1/wp-includes/js/jquery/jquery-migrate.min.js'></script>
<script type='text/javascript' src='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/footnotes/class/../js/jquery.tools.min.js?ver=5.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var exactmetrics_frontend = {"js_events_tracking":"true","download_extensions":"zip,mp3,mpeg,pdf,doc,ppt,xls,jpeg,png,gif,tiff","inbound_paths":"[{\"path\":\"\\\/go\\\/\",\"label\":\"affiliate\"},{\"path\":\"\\\/recommend\\\/\",\"label\":\"affiliate\"}]","home_url":"https:\/\/sinonk.com","hash_tracking":"false"};
/* ]]> */
</script>
<script type='text/javascript' src='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/plugins/google-analytics-dashboard-for-wp/assets/js/frontend.min.js?ver=6.0.2'></script>
<script type='text/javascript' src='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/themes/sinonk/js/jquery.cycle.all.js?ver=5.4.1'></script>
<script type='text/javascript' src='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/themes/sinonk/js/superfish.js?ver=5.4.1'></script>
<script type='text/javascript' src='https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/themes/sinonk/js/custom.js?ver=5.4.1'></script>
<link rel='https://api.w.org/' href='https://sinonk.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://sinonk.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://sinonk.com/wp-includes/wlwmanifest.xml" /> 
<link rel='shortlink' href='https://wp.me/3Yril' />
<style type='text/css' media='screen'>
	body{ font-family:"Libre Baskerville", arial, sans-serif;}
</style>
<!-- fonts delivered by Wordpress Google Fonts, a plugin by Adrian3.com --><style data-context="foundation-flickity-css">/*! Flickity v2.0.2
http://flickity.metafizzy.co
---------------------------------------------- */.flickity-enabled{position:relative}.flickity-enabled:focus{outline:0}.flickity-viewport{overflow:hidden;position:relative;height:100%}.flickity-slider{position:absolute;width:100%;height:100%}.flickity-enabled.is-draggable{-webkit-tap-highlight-color:transparent;tap-highlight-color:transparent;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.flickity-enabled.is-draggable .flickity-viewport{cursor:move;cursor:-webkit-grab;cursor:grab}.flickity-enabled.is-draggable .flickity-viewport.is-pointer-down{cursor:-webkit-grabbing;cursor:grabbing}.flickity-prev-next-button{position:absolute;top:50%;width:44px;height:44px;border:none;border-radius:50%;background:#fff;background:hsla(0,0%,100%,.75);cursor:pointer;-webkit-transform:translateY(-50%);transform:translateY(-50%)}.flickity-prev-next-button:hover{background:#fff}.flickity-prev-next-button:focus{outline:0;box-shadow:0 0 0 5px #09f}.flickity-prev-next-button:active{opacity:.6}.flickity-prev-next-button.previous{left:10px}.flickity-prev-next-button.next{right:10px}.flickity-rtl .flickity-prev-next-button.previous{left:auto;right:10px}.flickity-rtl .flickity-prev-next-button.next{right:auto;left:10px}.flickity-prev-next-button:disabled{opacity:.3;cursor:auto}.flickity-prev-next-button svg{position:absolute;left:20%;top:20%;width:60%;height:60%}.flickity-prev-next-button .arrow{fill:#333}.flickity-page-dots{position:absolute;width:100%;bottom:-25px;padding:0;margin:0;list-style:none;text-align:center;line-height:1}.flickity-rtl .flickity-page-dots{direction:rtl}.flickity-page-dots .dot{display:inline-block;width:10px;height:10px;margin:0 8px;background:#333;border-radius:50%;opacity:.25;cursor:pointer}.flickity-page-dots .dot.is-selected{opacity:1}</style><style data-context="foundation-slideout-css">.slideout-menu{position:fixed;left:0;top:0;bottom:0;right:auto;z-index:0;width:256px;overflow-y:auto;-webkit-overflow-scrolling:touch;display:none}.slideout-menu.pushit-right{left:auto;right:0}.slideout-panel{position:relative;z-index:1;will-change:transform}.slideout-open,.slideout-open .slideout-panel,.slideout-open body{overflow:hidden}.slideout-open .slideout-menu{display:block}.pushit{display:none}</style>
<link rel='dns-prefetch' href='//v0.wordpress.com'/>
<link rel='dns-prefetch' href='//i0.wp.com'/>
<link rel='dns-prefetch' href='//i1.wp.com'/>
<link rel='dns-prefetch' href='//i2.wp.com'/>
<link rel='dns-prefetch' href='//jetpack.wordpress.com'/>
<link rel='dns-prefetch' href='//s0.wp.com'/>
<link rel='dns-prefetch' href='//s1.wp.com'/>
<link rel='dns-prefetch' href='//s2.wp.com'/>
<link rel='dns-prefetch' href='//public-api.wordpress.com'/>
<link rel='dns-prefetch' href='//0.gravatar.com'/>
<link rel='dns-prefetch' href='//1.gravatar.com'/>
<link rel='dns-prefetch' href='//2.gravatar.com'/>
<link rel='dns-prefetch' href='//c0.wp.com'/>

<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="website" />
<meta property="og:title" content="Sino-NK" />
<meta property="og:description" content="Sino-NK is a research website for Sinologists and Koreanists." />
<meta property="og:url" content="https://sinonk.com/" />
<meta property="og:site_name" content="Sino-NK" />
<meta property="og:image" content="https://i1.wp.com/sinonk.com/wp-content/uploads/2015/11/featured-print-img-small-web.png?fit=209%2C210&amp;ssl=1" />
<meta property="og:image:width" content="209" />
<meta property="og:image:height" content="210" />
<meta property="og:locale" content="en_US" />
<meta name="twitter:site" content="@Sino_NK" />

<!-- End Jetpack Open Graph Tags -->
<link rel="icon" href="https://i1.wp.com/sinonk.com/wp-content/uploads/2015/11/featured-print-img-small-web.png?fit=32%2C32&#038;ssl=1" sizes="32x32" />
<link rel="icon" href="https://i1.wp.com/sinonk.com/wp-content/uploads/2015/11/featured-print-img-small-web.png?fit=192%2C192&#038;ssl=1" sizes="192x192" />
<link rel="apple-touch-icon" href="https://i1.wp.com/sinonk.com/wp-content/uploads/2015/11/featured-print-img-small-web.png?fit=180%2C180&#038;ssl=1" />
<meta name="msapplication-TileImage" content="https://i1.wp.com/sinonk.com/wp-content/uploads/2015/11/featured-print-img-small-web.png?fit=209%2C210&#038;ssl=1" />
<style>.ios7.web-app-mode.has-fixed header{ background-color: rgba(51,51,51,.88);}</style>		<style type="text/css" id="wp-custom-css">
			



		</style>
				<style type="text/css" media="screen">
            .footnote_container_prepare > p {
	line-height: .98 !important;
}.footnote_tooltip { display: none; padding: 12px; font-size: 13px; background-color: #d3d3d3; border-width: 3px; border-style: solid; border-color: #000000; border-radius: 1px; -webkit-box-shadow: 2px 2px 11px #666666; -moz-box-shadow: 2px 2px 11px #666666; box-shadow: 2px 2px 11px #666666;}        </style>
		<script type="text/javascript">
	var templateDir = "https://sinonk.com/wp-content/themes/sinonk";
</script>
</head>
<body class="home blog">
<div id="top-header">
  <div class="container clearfix">
    <ul id="top-menu" class="nav"><li id="menu-item-9317" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-9317"><a href="https://sinonk.com/" aria-current="page">Home</a></li>
<li id="menu-item-9318" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9318"><a href="https://sinonk.com/about-us/">About Us</a>
<ul class="sub-menu">
	<li id="menu-item-9356" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9356"><a href="https://sinonk.com/staff/">Staff</a></li>
	<li id="menu-item-16205" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16205"><a href="https://sinonk.com/contributor-guidelines/">Contributor Guidelines</a></li>
</ul>
</li>
<li id="menu-item-9442" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9442"><a href="https://sinonk.com/featured/">Featured</a>
<ul class="sub-menu">
	<li id="menu-item-10948" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-10948"><a href="https://sinonk.com/category/essays/">Essays</a></li>
	<li id="menu-item-9325" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9325"><a href="https://sinonk.com/category/interviews-2/">Interviews</a></li>
	<li id="menu-item-9326" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9326"><a title="Reviews" href="https://sinonk.com/category/reviews/">Reviews</a></li>
	<li id="menu-item-11839" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-11839"><a href="https://sinonk.com/category/essays/symposia/">Symposia</a></li>
</ul>
</li>
<li id="menu-item-9421" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9421"><a href="https://sinonk.com/research-room/">Research Room</a>
<ul class="sub-menu">
	<li id="menu-item-9630" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9630"><a href="https://sinonk.com/category/events/">Events</a></li>
	<li id="menu-item-9443" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9443"><a href="https://sinonk.com/category/resources/">Resources</a></li>
	<li id="menu-item-9763" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9763"><a href="https://sinonk.com/category/external/">External</a></li>
	<li id="menu-item-12826" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-12826"><a href="https://sinonk.com/category/ttp/">TTP</a></li>
	<li id="menu-item-21419" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-21419"><a href="https://sinonk.com/category/research-room/reports/">Reports</a></li>
	<li id="menu-item-14562" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-14562"><a href="https://sinonk.com/category/dossiers/">Dossiers</a></li>
</ul>
</li>
<li id="menu-item-9371" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-9371"><a href="https://sinonk.com/category/blog/">Jangmadang</a>
<ul class="sub-menu">
	<li id="menu-item-12139" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12139"><a href="https://sinonk.com/shigak/">#Shigak | #시각</a></li>
	<li id="menu-item-16715" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16715"><a href="https://sinonk.com/tongsin/">Tongsin | 통신</a></li>
</ul>
</li>
</ul>    <div id="search-form">
      <form role="search" method="get" id="searchform" action="https://sinonk.com/" >
    <input type="text" placeholder="Search this site..." value="" name="s" id="searchinput" />
    <input type="submit" id="searchsubmit" value="Search" />
    </form>    </div>
  </div>
</div>
<div id="header-area">
  <div class="container clearfix">
    <div id="logo">
      <h1> <a href="http://sinonk.com">
        Sino-NK        </a></h1>
    </div>
    <div id="socialLink"> Follow
            <a class="facebook" target="_blank" href="https://www.facebook.com/pages/Sino-NK/221448221274992">Facebook</a>
                  <a class="twitter" target="_blank" href="https://twitter.com/Sino_NK">Twitter</a>
          </div>
  </div>
</div>
<div id="content-area">
<div class="container  clearfix">
<div id="content" class=" clearfix"><div id="left-area">
  <div class="homeslider-container">
  <div class="homeslider" id="featured">
        <ul class="slides">
      <img src="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/themes/sinonk/images/homeSlideplaceholder.png"/>
            <li class="slide">
      	<div class="slideIn">
        <img width="575" height="300" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?resize=575%2C300&amp;ssl=1" class="attachment-homeslider size-homeslider wp-post-image" alt="" data-attachment-id="21613" data-permalink="https://sinonk.com/2020/04/27/chinese-doctors-and-north-korea-reviewing-the-pattern/resized_250499-6a-nkorea-42p-color_93-24505_t800/" data-orig-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?fit=800%2C549&amp;ssl=1" data-orig-size="800,549" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="resized_250499-6a-nkorea-42p-color_93-24505_t800" data-image-description="" data-medium-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?fit=300%2C206&amp;ssl=1" data-large-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?fit=800%2C549&amp;ssl=1" />                <div class="featured-description">
          <h2 class="featured-title"><a href="https://sinonk.com/2020/04/27/chinese-doctors-and-north-korea-reviewing-the-pattern/">Chinese Doctors and North Korea: Reviewing the Pattern</a></h2>
          <div class="featured-author">By <a href="https://sinonk.com/author/adamcathcart/" title="Posts by Adam Cathcart" class="author url fn" rel="author">Adam Cathcart</a></div>
                     </div>
      </div>
      </li>
            <li class="slide">
      	<div class="slideIn">
        <img width="575" height="300" src="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?resize=575%2C300&amp;ssl=1" class="attachment-homeslider size-homeslider wp-post-image" alt="" data-attachment-id="21571" data-permalink="https://sinonk.com/2020/04/06/yongusil-99-the-dprk-nuclear-crisis-and-moscows-pivot-toward-beijing/800px-andrei_karlov_2017_stamp_of_russia/" data-orig-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?fit=800%2C579&amp;ssl=1" data-orig-size="800,579" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-Andrei_Karlov_2017_stamp_of_Russia" data-image-description="" data-medium-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?fit=300%2C217&amp;ssl=1" data-large-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?fit=800%2C579&amp;ssl=1" />                <div class="featured-description">
          <h2 class="featured-title"><a href="https://sinonk.com/2020/04/06/yongusil-99-the-dprk-nuclear-crisis-and-moscows-pivot-toward-beijing/">Yongusil 99: The DPRK Nuclear Crisis and Moscow&#8217;s Pivot Toward Beijing</a></h2>
          <div class="featured-author">By <a href="https://sinonk.com/author/sinonkblog/" title="Posts by Sino-NK" class="author url fn" rel="author">Sino-NK</a></div>
                     </div>
      </div>
      </li>
            <li class="slide">
      	<div class="slideIn">
        <img width="575" height="300" src="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?resize=575%2C300&amp;ssl=1" class="attachment-homeslider size-homeslider wp-post-image" alt="" data-attachment-id="21569" data-permalink="https://sinonk.com/2020/03/19/covid-19-in-north-korea-a-mirror-into-the-soul-of-the-south/origin_%e1%84%8f%e1%85%a9%e1%84%85%e1%85%a9%e1%84%82%e1%85%a119%e1%84%83%e1%85%a2%e1%84%87%e1%85%b5%e1%84%86%e1%85%b5%e1%84%8b%e1%85%ad%e1%86%bc%e1%84%89%e1%85%b5%e1%86%af%e1%84%89%e1%85%a9%e1%84%83/" data-orig-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?fit=768%2C659&amp;ssl=1" data-orig-size="768,659" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="origin_코로나19대비미용실소독하는직원들…노동신문보도" data-image-description="" data-medium-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?fit=300%2C257&amp;ssl=1" data-large-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?fit=768%2C659&amp;ssl=1" />                <div class="featured-description">
          <h2 class="featured-title"><a href="https://sinonk.com/2020/03/19/covid-19-in-north-korea-a-mirror-into-the-soul-of-the-south/">COVID-19 in North Korea: A Mirror into the Soul of the South</a></h2>
          <div class="featured-author">By <a href="https://sinonk.com/author/robert-lauler/" title="Posts by Robert Lauler" class="author url fn" rel="author">Robert Lauler</a></div>
                     </div>
      </div>
      </li>
            <li class="slide">
      	<div class="slideIn">
        <img width="436" height="300" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?resize=436%2C300&amp;ssl=1" class="attachment-homeslider size-homeslider wp-post-image" alt="" data-attachment-id="21552" data-permalink="https://sinonk.com/2020/03/10/change-and-continuity-in-north-korean-foreign-policy-at-the-dawn-of-the-millennium/poster_for_the_unification_of_korea_4611090418/" data-orig-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?fit=436%2C599&amp;ssl=1" data-orig-size="436,599" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Poster_for_the_Unification_of_Korea_4611090418" data-image-description="" data-medium-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?fit=218%2C300&amp;ssl=1" data-large-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?fit=436%2C599&amp;ssl=1" />                <div class="featured-description">
          <h2 class="featured-title"><a href="https://sinonk.com/2020/03/10/change-and-continuity-in-north-korean-foreign-policy-at-the-dawn-of-the-millennium/">Change and Continuity in North Korean Foreign Policy at the Dawn of the Millennium</a></h2>
          <div class="featured-author">By <a href="https://sinonk.com/author/yujinlimm/" title="Posts by Yujin Lim" class="author url fn" rel="author">Yujin Lim</a></div>
                     </div>
      </div>
      </li>
            <li class="slide">
      	<div class="slideIn">
        <img width="575" height="300" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?resize=575%2C300&amp;ssl=1" class="attachment-homeslider size-homeslider wp-post-image" alt="" data-attachment-id="21494" data-permalink="https://sinonk.com/2019/11/25/six-hours-to-midnight-gsomia-and-the-us-indo-pacific-strategy/800px-cjcs_hosts_rok_japanese_counterparts_for_trilateral_discussions_171029-n-pb383-1145/" data-orig-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?fit=799%2C571&amp;ssl=1" data-orig-size="799,571" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;Public Domain&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-CJCS_Hosts_ROK,_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145" data-image-description="&lt;p&gt;The chiefs of the Japanese, South Korean and US chiefs of staff, along with then-commander of US Pacific Command (and current ambassador to the ROK) Harry Harris) gather for a trilateral security summit in 2017 | Source: Wikimedia Commons&lt;/p&gt;
" data-medium-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?fit=300%2C214&amp;ssl=1" data-large-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?fit=799%2C571&amp;ssl=1" />                <div class="featured-description">
          <h2 class="featured-title"><a href="https://sinonk.com/2019/11/25/six-hours-to-midnight-gsomia-and-the-us-indo-pacific-strategy/">Six Hours to Midnight: GSOMIA and the US Indo-Pacific Strategy</a></h2>
          <div class="featured-author">By <a href="https://sinonk.com/author/anthony-rinna/" title="Posts by Anthony Rinna" class="author url fn" rel="author">Anthony Rinna</a></div>
                     </div>
      </div>
      </li>
          </ul>
        <div id="controllers_wrapper">
      <div id="home_controllers" class="clearfix"></div>
      <ul class="home-direction-nav">
        <li><a href="#" id="prev">Previous</a></li>
        <li><a href="#" id="next">Next</a></li>
      </ul>
    </div>
  </div>
</div>
  <div class="spacer"></div>
  <div id="entries">
      <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2020/04/27/chinese-doctors-and-north-korea-reviewing-the-pattern/">
	<img width="150" height="150" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?resize=144%2C144&amp;ssl=1 144w, https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?zoom=2&amp;resize=150%2C150 300w, https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21613" data-permalink="https://sinonk.com/2020/04/27/chinese-doctors-and-north-korea-reviewing-the-pattern/resized_250499-6a-nkorea-42p-color_93-24505_t800/" data-orig-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?fit=800%2C549&amp;ssl=1" data-orig-size="800,549" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="resized_250499-6a-nkorea-42p-color_93-24505_t800" data-image-description="" data-medium-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?fit=300%2C206&amp;ssl=1" data-large-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/04/resized_250499-6a-nkorea-42p-color_93-24505_t800.jpg?fit=800%2C549&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2020/04/27/chinese-doctors-and-north-korea-reviewing-the-pattern/">
      Chinese Doctors and North Korea: Reviewing the Pattern      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/adamcathcart/" title="Posts by Adam Cathcart" class="author url fn" rel="author">Adam Cathcart</a> | April 27, 2020</p>
      <p>A Reuters report on Chinese doctors treating North Korean leader Kim Jong-un spurs Adam Cathcart to deeper investigation of party-to-party medical relations.</p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2020/04/06/yongusil-99-the-dprk-nuclear-crisis-and-moscows-pivot-toward-beijing/">
	<img width="150" height="150" src="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?resize=150%2C150&amp;ssl=1 150w, https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?resize=144%2C144&amp;ssl=1 144w, https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?zoom=2&amp;resize=150%2C150 300w, https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21571" data-permalink="https://sinonk.com/2020/04/06/yongusil-99-the-dprk-nuclear-crisis-and-moscows-pivot-toward-beijing/800px-andrei_karlov_2017_stamp_of_russia/" data-orig-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?fit=800%2C579&amp;ssl=1" data-orig-size="800,579" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-Andrei_Karlov_2017_stamp_of_Russia" data-image-description="" data-medium-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?fit=300%2C217&amp;ssl=1" data-large-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/800px-Andrei_Karlov_2017_stamp_of_Russia.jpg?fit=800%2C579&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2020/04/06/yongusil-99-the-dprk-nuclear-crisis-and-moscows-pivot-toward-beijing/">
      Yongusil 99: The DPRK Nuclear Crisis and Moscow&#8217;s Pivot Toward Beijing      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/sinonkblog/" title="Posts by Sino-NK" class="author url fn" rel="author">Sino-NK</a> | April 06, 2020</p>
      <p>Struggling to stay relevant at the Korean security crisis&#8217;s crowded negotiation table, the Russian Federation is undoubtedly among the least influential players in efforts to get the DPRK to disarm. Even within Russian foreign policy itself, the Korean Peninsula is not as important for Moscow as other sub-regions along the Russian periphery. This may seem [&hellip;]</p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2020/03/19/covid-19-in-north-korea-a-mirror-into-the-soul-of-the-south/">
	<img width="150" height="150" src="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?resize=150%2C150&amp;ssl=1 150w, https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?resize=144%2C144&amp;ssl=1 144w, https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?zoom=2&amp;resize=150%2C150 300w, https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21569" data-permalink="https://sinonk.com/2020/03/19/covid-19-in-north-korea-a-mirror-into-the-soul-of-the-south/origin_%e1%84%8f%e1%85%a9%e1%84%85%e1%85%a9%e1%84%82%e1%85%a119%e1%84%83%e1%85%a2%e1%84%87%e1%85%b5%e1%84%86%e1%85%b5%e1%84%8b%e1%85%ad%e1%86%bc%e1%84%89%e1%85%b5%e1%86%af%e1%84%89%e1%85%a9%e1%84%83/" data-orig-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?fit=768%2C659&amp;ssl=1" data-orig-size="768,659" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="origin_코로나19대비미용실소독하는직원들…노동신문보도" data-image-description="" data-medium-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?fit=300%2C257&amp;ssl=1" data-large-file="https://i2.wp.com/sinonk.com/wp-content/uploads/2020/03/origin_코로나19대비미용실소독하는직원들…노동신문보도.jpg?fit=768%2C659&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2020/03/19/covid-19-in-north-korea-a-mirror-into-the-soul-of-the-south/">
      COVID-19 in North Korea: A Mirror into the Soul of the South      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/robert-lauler/" title="Posts by Robert Lauler" class="author url fn" rel="author">Robert Lauler</a> | March 19, 2020</p>
      <p>An outbreak of COVID-19 in North Korea may, indeed, become the ending point of greater cooperation between the two Koreas for the time being, but the two Koreas were arguably never really that close in the first place. Robert Lauler explains.</p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2020/03/10/change-and-continuity-in-north-korean-foreign-policy-at-the-dawn-of-the-millennium/">
	<img width="150" height="150" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?resize=144%2C144&amp;ssl=1 144w, https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?zoom=2&amp;resize=150%2C150 300w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21552" data-permalink="https://sinonk.com/2020/03/10/change-and-continuity-in-north-korean-foreign-policy-at-the-dawn-of-the-millennium/poster_for_the_unification_of_korea_4611090418/" data-orig-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?fit=436%2C599&amp;ssl=1" data-orig-size="436,599" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="Poster_for_the_Unification_of_Korea_4611090418" data-image-description="" data-medium-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?fit=218%2C300&amp;ssl=1" data-large-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2020/03/Poster_for_the_Unification_of_Korea_4611090418.jpg?fit=436%2C599&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2020/03/10/change-and-continuity-in-north-korean-foreign-policy-at-the-dawn-of-the-millennium/">
      Change and Continuity in North Korean Foreign Policy at the Dawn of the Millennium      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/yujinlimm/" title="Posts by Yujin Lim" class="author url fn" rel="author">Yujin Lim</a> | March 10, 2020</p>
      <p>Sino-NK&#8217;s Yujin Lim bridges the language barrier to provide insight into the view from Seoul over North Korean foreign policy at the turn of the millennium. </p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2019/11/25/six-hours-to-midnight-gsomia-and-the-us-indo-pacific-strategy/">
	<img width="150" height="150" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?resize=150%2C150&amp;ssl=1 150w, https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?resize=144%2C144&amp;ssl=1 144w, https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?zoom=2&amp;resize=150%2C150 300w, https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21494" data-permalink="https://sinonk.com/2019/11/25/six-hours-to-midnight-gsomia-and-the-us-indo-pacific-strategy/800px-cjcs_hosts_rok_japanese_counterparts_for_trilateral_discussions_171029-n-pb383-1145/" data-orig-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?fit=799%2C571&amp;ssl=1" data-orig-size="799,571" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;Public Domain&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-CJCS_Hosts_ROK,_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145" data-image-description="&lt;p&gt;The chiefs of the Japanese, South Korean and US chiefs of staff, along with then-commander of US Pacific Command (and current ambassador to the ROK) Harry Harris) gather for a trilateral security summit in 2017 | Source: Wikimedia Commons&lt;/p&gt;
" data-medium-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?fit=300%2C214&amp;ssl=1" data-large-file="https://i0.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-CJCS_Hosts_ROK_Japanese_Counterparts_for_Trilateral_Discussions_171029-N-PB383-1145.jpg?fit=799%2C571&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2019/11/25/six-hours-to-midnight-gsomia-and-the-us-indo-pacific-strategy/">
      Six Hours to Midnight: GSOMIA and the US Indo-Pacific Strategy      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/anthony-rinna/" title="Posts by Anthony Rinna" class="author url fn" rel="author">Anthony Rinna</a> | November 25, 2019</p>
      <p>South Korea&#8217;s narrowly-avoided decision to terminate GSOMIA underscores how the ROK&#8217;s defense priorities in Northeast Asia affect the US&#8217;s Indo-Pacific strategy as a whole.</p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2019/11/18/live-from-korea-live-from-anywhere-a-review-of-k-pop-live-fans-idols-and-multimedia-performance/">
	<img width="150" height="150" src="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?resize=144%2C144&amp;ssl=1 144w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?zoom=2&amp;resize=150%2C150 300w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21484" data-permalink="https://sinonk.com/2019/11/18/live-from-korea-live-from-anywhere-a-review-of-k-pop-live-fans-idols-and-multimedia-performance/800px-army_at_bts_love_yourself_speak_yourself_concert_at_wembley_stadium_june_2019_02/" data-orig-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?fit=800%2C447&amp;ssl=1" data-orig-size="800,447" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium,_June_2019_02" data-image-description="" data-medium-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?fit=300%2C168&amp;ssl=1" data-large-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-ARMY_at_BTS_Love_Yourself_Speak_Yourself_concert_at_Wembley_Stadium_June_2019_02.jpg?fit=800%2C447&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2019/11/18/live-from-korea-live-from-anywhere-a-review-of-k-pop-live-fans-idols-and-multimedia-performance/">
      Live from Korea, live from anywhere: a review of &#8220;K-pop Live: Fans, Idols, and Multimedia Performance&#8221;      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/wonseok-lee/" title="Posts by Wonseok Lee" class="author url fn" rel="author">Wonseok Lee</a> | November 18, 2019</p>
      <p>Musician and scholar Wonseok Lee, in his debut publication for Sino-NK, offers a review of Suk-young Kim&#8217;s &#8220;K-Pop Live: Fans, Idols and Media Performance&#8221;.</p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2019/11/04/understanding-north-korea-foreign-relations-of-north-korea-in-2000/">
	<img width="150" height="150" src="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?resize=144%2C144&amp;ssl=1 144w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?zoom=2&amp;resize=150%2C150 300w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21479" data-permalink="https://sinonk.com/2019/11/04/understanding-north-korea-foreign-relations-of-north-korea-in-2000/800px-william_cohen_jo_myong_rok_kim_ok_pentagon_in_washington/" data-orig-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?fit=800%2C519&amp;ssl=1" data-orig-size="800,519" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington" data-image-description="" data-medium-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?fit=300%2C195&amp;ssl=1" data-large-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/11/800px-William_Cohen_Jo_Myong_Rok_Kim_Ok_Pentagon_in_Washington.jpg?fit=800%2C519&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2019/11/04/understanding-north-korea-foreign-relations-of-north-korea-in-2000/">
      Understanding North Korea: Foreign Relations of North Korea in 2000      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/yujinlimm/" title="Posts by Yujin Lim" class="author url fn" rel="author">Yujin Lim</a> | November 04, 2019</p>
      <p>In this translation from the original Korean, analyst Yujin Lim offers a glimpse of how Seoul perceived Pyongyang&#8217;s program of diplomatic outreach in the year 2000, offering observers a chance to peer into the origins of contemporary North Korean foreign policy.</p>
   
        </div>
    <div class="clear"></div>
  </div>
    <div class="post entry clearfix latest">
    
            <div class="thumb"> <a rel="bookmark" href="https://sinonk.com/2019/09/30/yongusil-98-moscow-and-the-dilemma-of-regional-development-versus-north-korea-sanctions/">
	<img width="150" height="150" src="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?resize=150%2C150&amp;ssl=1" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" srcset="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?resize=150%2C150&amp;ssl=1 150w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?resize=144%2C144&amp;ssl=1 144w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?zoom=2&amp;resize=150%2C150 300w, https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?zoom=3&amp;resize=150%2C150 450w" sizes="(max-width: 150px) 100vw, 150px" data-attachment-id="21430" data-permalink="https://sinonk.com/2019/09/30/yongusil-98-moscow-and-the-dilemma-of-regional-development-versus-north-korea-sanctions/800px-kim_jong-un_and_vladimir_putin_2019-04-25_08-2/" data-orig-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?fit=800%2C494&amp;ssl=1" data-orig-size="800,494" data-comments-opened="1" data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}" data-image-title="800px-Kim_Jong-un_and_Vladimir_Putin_(2019-04-25)_08" data-image-description="" data-medium-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?fit=300%2C185&amp;ssl=1" data-large-file="https://i1.wp.com/sinonk.com/wp-content/uploads/2019/06/800px-Kim_Jong-un_and_Vladimir_Putin_2019-04-25_08-1.jpg?fit=800%2C494&amp;ssl=1" />		      <span class="overlay"></span></a> </div>
		<div class="postFloat">
    <h3 class="title"><a rel="bookmark" href="https://sinonk.com/2019/09/30/yongusil-98-moscow-and-the-dilemma-of-regional-development-versus-north-korea-sanctions/">
      Yongusil 98: Moscow and the Dilemma of Regional Development versus North Korea Sanctions      </a></h3>
    	<p class="meta-info">By <a href="https://sinonk.com/author/anthony-rinna/" title="Posts by Anthony Rinna" class="author url fn" rel="author">Anthony Rinna</a> | September 30, 2019</p>
      <p>Russia&#8217;s North Korea policy involves a trade-off: refusal to support UN sanctions hurts Russia internationally, but supporting sanctions damages growth prospects in the country&#8217;s easternmost regions. Anthony Rinna covers this dilemma in Asian Studies International Review.</p>
   
        </div>
    <div class="clear"></div>
  </div>
        <div class="pnavi">
    <div class='wp-pagenavi' role='navigation'>
<span aria-current='page' class='current'>1</span><a class="page larger" title="Page 2" href="https://sinonk.com/page/2/">2</a><a class="page larger" title="Page 3" href="https://sinonk.com/page/3/">3</a><a class="nextpostslink" rel="next" href="https://sinonk.com/page/2/">»</a><a class="last" href="https://sinonk.com/page/109/">Last »</a>
</div>  </div>
  </div>
</div>
<div id="sidebar">
    <div id="widgetArea">
    <div id="custom_cat_posts-2" class="widget-container custom_cat_posts"><div class="custom-cat-header"><a href="https://sinonk.com/category/blog/"><img src="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/uploads/2013/09/jangmadang-sidebar.png"/></a></div><ul class='custom-cat-posts'>
				<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2019/01/21/north-korean-citizens-in-changbai-social-insurance-residency-rights-and-chinese-informants/" rel="bookmark" title="Permanent link to North Korean Citizens in Changbai: Social Insurance, Residency Rights, and Chinese Informants" class="crpw-title">North Korean Citizens in Changbai: Social Insurance, Residency Rights, and Chinese Informants</a></p>
					                        <div class="crpw-date"><a href="https://sinonk.com/author/adamcathcart/" title="Posts by Adam Cathcart" rel="author">Adam Cathcart</a> | January 21, 2019</div>
                    				</li>
							<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2019/01/14/sez-revival-tour-kim-jong-un-in-dandong/" rel="bookmark" title="Permanent link to SEZ Revival Tour? Kim Jong-un in Dandong" class="crpw-title">SEZ Revival Tour? Kim Jong-un in Dandong</a></p>
					                        <div class="crpw-date"><a href="https://sinonk.com/author/adamcathcart/" title="Posts by Adam Cathcart" rel="author">Adam Cathcart</a> | January 14, 2019</div>
                    				</li>
							<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2018/07/23/from-new-york-to-dandong-maximum-pressure/" rel="bookmark" title="Permanent link to From New York to Dandong: Maximum Pressure" class="crpw-title">From New York to Dandong: Maximum Pressure</a></p>
					                        <div class="crpw-date"><a href="https://sinonk.com/author/adamcathcart/" title="Posts by Adam Cathcart" rel="author">Adam Cathcart</a> | July 23, 2018</div>
                    				</li>
			</ul>
</div><div id="custom_cat_posts-3" class="widget-container custom_cat_posts"><div class="custom-cat-header"><a href="https://sinonk.com/research-room/"><img src="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/uploads/2013/09/research-room-sidebar.png"/></a></div><ul class='custom-cat-posts'>
				<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2019/09/25/yongusil-97-on-the-academic-misconduct-of-charles-armstrong-and-sino-nks-2013-roundtable/" rel="bookmark" title="Permanent link to Yongusil 97: On the Academic Misconduct of Charles Armstrong, and Sino-NK&#8217;s 2013 Roundtable" class="crpw-title">Yongusil 97: On the Academic Misconduct of Charles Armstrong, and Sino-NK&#8217;s 2013 Roundtable</a></p>
					                        <div class="crpw-date"><a href="https://sinonk.com/author/sinonkblog/" title="Posts by Sino-NK" rel="author">Sino-NK</a> | September 25, 2019</div>
                    				</li>
							<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2019/07/01/yongusil-96-russia-south-korea-and-the-new-northern-policy/" rel="bookmark" title="Permanent link to Yongusil 96: Russia, South Korea and the New Northern Policy" class="crpw-title">Yongusil 96: Russia, South Korea and the New Northern Policy</a></p>
					                        <div class="crpw-date"><a href="https://sinonk.com/author/anthony-rinna/" title="Posts by Anthony Rinna" rel="author">Anthony Rinna</a> | July 1, 2019</div>
                    				</li>
							<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2019/05/14/new-values-and-old-orders-where-do-north-koreans-fit-in-the-new-south-korea/" rel="bookmark" title="Permanent link to New Values and Old Orders: Where do North Koreans Fit in the New South Korea?" class="crpw-title">New Values and Old Orders: Where do North Koreans Fit in the New South Korea?</a></p>
					                        <div class="crpw-date"><a href="https://sinonk.com/author/sinonkblog/" title="Posts by Sino-NK" rel="author">Sino-NK</a> | May 14, 2019</div>
                    				</li>
			</ul>
</div><div id="custom_cat_posts-14" class="widget-container custom_cat_posts"><div class="custom-cat-header"><a href="https://sinonk.com/category/ttp/"><img src="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/uploads/2016/12/TTP_img.jpg"/></a></div><ul class='custom-cat-posts'>
				<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2016/12/26/the-tumen-triangle-project-focus-on-the-rajin-sonbong-economic-and-trade-zone/" rel="bookmark" title="Permanent link to The Tumen Triangle Project: Focus on the Rajin-Sonbong Economic and Trade Zone" class="crpw-title">The Tumen Triangle Project: Focus on the Rajin-Sonbong Economic and Trade Zone</a></p>
									</li>
							<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2015/01/08/the-tumen-triangle-documentation-project-goes-to-china/" rel="bookmark" title="Permanent link to The Tumen Triangle Documentation Project Goes to China: AKS Special Edition" class="crpw-title">The Tumen Triangle Documentation Project Goes to China: AKS Special Edition</a></p>
									</li>
							<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2014/02/14/the-tumen-triangle-documentation-project-issue-2/" rel="bookmark" title="Permanent link to Back to the Tumen Triangle Documentation Project: Issue 2" class="crpw-title">Back to the Tumen Triangle Documentation Project: Issue 2</a></p>
									</li>
			</ul>
</div><div id="custom_cat_posts-15" class="widget-container custom_cat_posts"><div class="custom-cat-header"><a href="https://sinonk.com/category/reports/"><img src="https://142vlc2zko2sl44x107eat15-wpengine.netdna-ssl.com/wp-content/uploads/2019/05/specialreports.jpg"/></a></div><ul class='custom-cat-posts'>
				<li class="crpw-item clearfix">
					<p class="custom-cat-post-title"><a  href="https://sinonk.com/2019/05/14/new-values-and-old-orders-where-do-north-koreans-fit-in-the-new-south-korea/" rel="bookmark" title="Permanent link to New Values and Old Orders: Where do North Koreans Fit in the New South Korea?" class="crpw-title">New Values and Old Orders: Where do North Koreans Fit in the New South Korea?</a></p>
									</li>
			</ul>
</div><div id="twitter_timeline-2" class="widget-container widget_twitter_timeline"><h3 class="widget-title">Sino-NK Tweets</h3><a class="twitter-timeline" data-theme="light" data-border-color="#e8e8e8" data-tweet-limit="2" data-lang="EN" data-partner="jetpack" data-chrome="nofooter transparent" href="https://twitter.com/Sino_NK" href="https://twitter.com/Sino_NK">My Tweets</a></div>  </div>
  </div>
<div class="clear"></div><div id="home-bottoms" class="clearfix">
        <div class="home-bottom one_third last">
    <div id="blog_subscription-4" class="widget-container-home widget_blog_subscription jetpack_subscription_widget"><h3 class="widget-title-home-bottom">Subscribe</h3>
            <form action="#" method="post" accept-charset="utf-8" id="subscribe-blog-blog_subscription-4">
				                    <p id="subscribe-email">
                        <label id="jetpack-subscribe-label"
                               class="screen-reader-text"
                               for="subscribe-field-blog_subscription-4">
							Email Address                        </label>
                        <input type="email" name="email" required="required" class="required"
                               value=""
                               id="subscribe-field-blog_subscription-4"
                               placeholder="Email Address"/>
                    </p>

                    <p id="subscribe-submit">
                        <input type="hidden" name="action" value="subscribe"/>
                        <input type="hidden" name="source" value="https://sinonk.com/"/>
                        <input type="hidden" name="sub-type" value="widget"/>
                        <input type="hidden" name="redirect_fragment" value="blog_subscription-4"/>
						                        <button type="submit"
	                        		                    	                        name="jetpack_subscriptions_widget"
	                    >
	                        Subscribe                        </button>
                    </p>
				            </form>
		
</div>  </div>
  </div>
</div>
</div>
</div>
<div id="footer">
  <div id="footer-top">
    <div class="container clearfix">
 <div id="footer-widgets" class="clearfix">
    	<div class="footer-widget">
  		<div id="text-5" class="footer-widget-bx widget_text"><h4 class="widgettitle">Follow SINO-NK</h4>			<div class="textwidget"> <a target="" href="https://www.facebook.com/pages/Sino-NK/221448221274992" rel="noopener noreferrer"><img style="padding-right:8px;" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2013/09/facebook.png?ssl=1" data-recalc-dims="1"></a>&nbsp; <a target="_blank" href="https://twitter.com/Sino_NK" rel="noopener noreferrer"><img style="padding-right:8px;" src="https://i0.wp.com/sinonk.com/wp-content/uploads/2013/09/twitter.png?ssl=1" data-recalc-dims="1"></a></div>
		</div><div id="text-3" class="footer-widget-bx widget_text">			<div class="textwidget"></br></br><a href="https://sinonk.com/"/><img style="bottom: 12px;
left: 0;
position: absolute;" src="https://i2.wp.com/sinonk.com/wp-content/uploads/2013/09/footer-logo.png?ssl=1" data-recalc-dims="1"/></a></div>
		</div>  	</div>
    
    	<div class="footer-widget">
  		<div id="text-8" class="footer-widget-bx widget_text">			<div class="textwidget"><div id="text-5" class="footer-widget-bx widget_text"><h4 class="widgettitle"><a href="https://sinonk.com/about-us/">About Us</a>
</h4></div>
<ul>
<li><a href="staff/">Staff</a></li>
<li><a href="https://sinonk.com/contributor-guidelines/">Contributor Guidelines</a></li>
<div style="height:27px;"></div>
</ul></div>
		</div><div id="text-9" class="footer-widget-bx widget_text">			<div class="textwidget"><div id="text-5" class="footer-widget-bx widget_text"><h4 class="widgettitle"><a href="/featured/">Featured</a>
</h4></div>
<ul>
<li><a href="featured-essays/">Essays</a></li>
<li><a href="category/interviews-2/">Interviews</a></li>
<li><a href="category/reviews/">Reviews</a></li>
<li><a href="category/symposia/">Symposia</a></li>
</ul></div>
		</div>  	</div>
    
    	<div class="footer-widget">
  		<div id="text-7" class="footer-widget-bx widget_text">			<div class="textwidget"><div id="text-5" class="footer-widget-bx widget_text"><h4 class="widgettitle"><a href="https://sinonk.com/category/blog/"><strong>Jangmadang</strong></a></div>
<ul>
<li><a href="http://wp.me/P3Yril-39J">#Shigak | #시각</a></li>
<li><a href="https://sinonk.com/tongsin/">Tongsin | 통신</a></li>
</ul></div>
		</div><div id="custom_html-2" class="widget_text footer-widget-bx widget_custom_html"><div class="textwidget custom-html-widget"><div id="text-5" class="footer-widget-bx widget_text"><h4 class="widgettitle"><a href="/research-room/">Research Room</a>
</h4></div>
<ul>
<li><a href="category/events/">Events</a></li>
<li><a href="category/resources/">Resources</a></li>
<li><a href="category/external/">External</a></li>
<li><a href="category/ttp/">TTP</a></li>
</ul></div></div>  	</div>
    
    	<div class="footer-widget last">
  		<div id="text-4" class="footer-widget-bx widget_text"><h4 class="widgettitle">What is Sino-NK?</h4>			<div class="textwidget">Sino-NK is a scholarly collective of young Sinologists and Koreanists dedicated to documenting and analyzing the borderland dynamics, transnational ties, and history of Northeast Asia. Work published on Sino-NK is regularly cited in journalistic outlets and our analysts have been featured in a range of academic publications. Sino-NK endeavors to better understand North Korea’s relations with the world and to chart a path forward for digital (and) academic analysis. <a href="https://sinonk.com/about-us/">Read more</a</div>
		</div>  	</div>
  </div>
      </div>
  </div>
  <div id="footer-bottom">
    <div class="container clearfix">
      <p id="copyright">
                Copyright &copy; 2012-2019
        Sino-NK        | All Rights Reserved
              </p>
    </div>
  </div>
</div>
<!-- Powered by WPtouch: 4.3.37 --><script>
    jQuery(document).ready(function () {
		jQuery.post('https://sinonk.com?ga_action=googleanalytics_get_script', {action: 'googleanalytics_get_script'}, function(response) {
			var s = document.createElement("script");
			s.type = "text/javascript";
			s.innerHTML = response;
			jQuery("head").append(s);
		});
    });
</script>        <script type="text/javascript">
          var pfHeaderImgUrl = '';
          var pfHeaderTagline = '';
          var pfdisableClickToDel = '0';
          var pfImagesSize = 'remove-images';
          var pfImageDisplayStyle = 'none';
          var pfEncodeImages = '0';
          var pfDisableEmail = '0';
          var pfDisablePDF = '0';
          var pfDisablePrint = '0';
          var pfCustomCSS = '';
          var pfPlatform = 'Wordpress';
        </script>
        <script async src='https://cdn.printfriendly.com/printfriendly.js'></script>
      <script type='text/javascript' src='https://c0.wp.com/p/jetpack/8.5/_inc/build/photon/photon.min.js'></script>
<script type='text/javascript' src='https://c0.wp.com/p/jetpack/8.5/_inc/build/twitter-timeline.min.js'></script>
<script type='text/javascript' src='https://c0.wp.com/c/5.4.1/wp-includes/js/wp-embed.min.js'></script>
<script type='text/javascript' src='https://stats.wp.com/e-202021.js' async='async' defer='defer'></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:8.5',blog:'58733613',post:'0',tz:'-4',srv:'sinonk.com'} ]);
	_stq.push([ 'clickTrackerInit', '58733613', '0' ]);
</script>
</body></html>