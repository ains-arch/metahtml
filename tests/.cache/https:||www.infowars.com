<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"0fc1bd6d66",applicationID:"202412212"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e("handle"),a=e(4),f=e(5),c=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",d=l+"ixn-";a(p,function(e,n){s[n]=i(l+n,!0,"api")}),s.addPageAction=i(l+"addPageAction",!0),s.setCurrentRouteName=i(l+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i="function"==typeof n;return o(d+"tracer",[u.now(),e,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],t),e}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){"first-paint"===e.name?c("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&c("timing",["fcp",Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length>0&&c("lcp",[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t>1e12?Date.now()-t:u.now()-t,l=!0,c("timing",["fi",t,{type:e.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e("handle"),u=e("loader"),s=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:["paint"]}),f.observe({entryTypes:["largest-contentful-paint"]})}catch(p){}}if("addEventListener"in document){var l=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r="",o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i<0?0:i);++r<i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f="nr@context",c=e("gos"),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e("ee").get("handle");n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function i(){"complete"===d.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e("handle"),u=e(4),s=e("ee"),p=e(3),l=window,d=l.document,m="addEventListener",v="attachEvent",g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m]("DOMContentLoaded",o,!1),l[m]("load",r,!1)):(d[v]("onreadystatechange",i),l[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=e(6)},{}],"wrap-function":[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){l([u,"",[r,a,i],f])}s(n+"start",[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+"err",[r,a,p],f),p}finally{s(n+"end",[r,a,c],f)}}return r(e)?e:(n||(n=""),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit("internal-error",n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<meta name="robots" content="NOODP">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="fb:admins" content="100000730726880" />
<link rel="manifest" href="/manifest.json"/>
<link rel="android-touch-icon" href="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/mipmap-xhdpi/ic_launcher.png" />
  <meta property="og:site_name" content="" />
  <meta property="og:type" content="website" />
    <meta property="og:description" content="Alex Jones&#039; Infowars: There&#039;s a war on for your mind!" />
  <meta property="og:image" content="/wp-content/themes/infowars-sitegoals/images/logo.png" />
  

<meta name="p:domain_verify" content="17524d28613d659f78532053a49ecd5b"/>
<link rel="profile" href="//gmpg.org/xfn/11">
<link rel="pingback" href="https://www.infowars.com/xmlrpc.php">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.1/css/lightbox.css">
<style type="text/css">
  @font-face {
    font-family: 'flexslider-icon';
    src:url('/wp-content/themes/infowars-sitegoals/fonts/flexslider-icon.eot');
    src:url('/wp-content/themes/infowars-sitegoals/fonts/flexslider-icon.eot?#iefix') format('embedded-opentype'),
      url('/wp-content/themes/infowars-sitegoals/fonts/flexslider-icon.woff') format('woff'),
      url('/wp-content/themes/infowars-sitegoals/fonts/flexslider-icon.ttf') format('truetype'),
      url('/wp-content/themes/infowars-sitegoals/fonts/flexslider-icon.svg#flexslider-icon') format('svg');
    font-weight: normal;
    font-style: normal;
  }
</style>
<style type="text/css">
  .big-ad, .big-ad img {
    width: 100%;
  }
</style>
<!-- BEGIN GDPR COOKIE CONSENT -->
<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>
<script src="/js/gdpr-cookie-consent.js"></script>
<!-- END GDPR COOKIE CONSENT -->
<title>Alex Jones&#039; Infowars: There&#039;s a war on for your mind!</title>
<link rel='dns-prefetch' href='//cdnjs.cloudflare.com' />
<link rel='dns-prefetch' href='//s.w.org' />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/11\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/www.infowars.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.8"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55358,56760,9792,65039],[55358,56760,8203,9792,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
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
<link rel='stylesheet' id='contact-form-7-css'  href='https://www.infowars.com/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.1.4' type='text/css' media='all' />
<link rel='stylesheet' id='printomatic-css-css'  href='https://www.infowars.com/wp-content/plugins/print-o-matic/css/style.css?ver=1.2' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-lightbox-featherlight-css'  href='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/featherlight/featherlight.min.css?ver=2.0.5' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-lightbox-featherlight-gallery-css'  href='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/featherlight/featherlight.gallery.min.css?ver=2.0.5' type='text/css' media='all' />
<link rel='stylesheet' id='wp-email-css'  href='https://www.infowars.com/wp-content/plugins/wp-email/email-css.css?ver=2.67.6' type='text/css' media='all' />
<link rel='stylesheet' id='wp-polls-css'  href='https://www.infowars.com/wp-content/plugins/wp-polls/polls-css.css?ver=2.73.8' type='text/css' media='all' />
<style id='wp-polls-inline-css' type='text/css'>
.wp-polls .pollbar {
	margin: 1px;
	font-size: 8px;
	line-height: 10px;
	height: 10px;
	background-image: url('https://www.infowars.com/wp-content/plugins/wp-polls/images/default_gradient/pollbg.gif');
	border: 1px solid #c8c8c8;
}

</style>
<link rel='stylesheet' id='infowars-sitegoals-style-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/style.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='pure-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/pure-min.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='main-css-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/main.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='pure-grid-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/grid.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='fancybox-css-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/fancybox/jquery.fancybox-1.3.4.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='flexslider-css-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/flexslider/flexslider.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='infowars-popin-video-css-css'  href='https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/popin-video.css?ver=4.9.8' type='text/css' media='all' />
<link rel='stylesheet' id='slb_core-css'  href='https://www.infowars.com/wp-content/plugins/simple-lightbox/client/css/app.css?ver=2.7.0' type='text/css' media='all' />
<script type='text/javascript' src='https://www.infowars.com/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/featherlight/featherlight.min.js?ver=2.0.5'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/featherlight/featherlight.gallery.min.js?ver=2.0.5'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/infinitescroll/infinite-scroll.pkgd.min.js?ver=4.9.8'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var rlArgs = {"script":"featherlight","selector":"lightbox","customEvents":"","activeGalleries":"1","openSpeed":"250","closeSpeed":"250","closeOnClick":"background","closeOnEsc":"1","galleryFadeIn":"100","galleryFadeOut":"300","woocommerce_gallery":"0","ajaxurl":"https:\/\/www.infowars.com\/wp-admin\/admin-ajax.php","nonce":"37e46bdd61"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/responsive-lightbox/js/front.js?ver=2.0.5'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/jquery.sticky-kit.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/fancybox/jquery.fancybox-1.3.4.pack.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/main.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/flexslider/jquery.flexslider.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/iframetracker/jquery.iframetracker.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/shorten/jquery.shorten.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/expander/jquery.expander.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.6/slick.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/trunk8/trunk8.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/vendor/akamai/amp.premier/amp.premier.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/popin-video.js?ver=4.9.8'></script>
<link rel='https://api.w.org/' href='https://www.infowars.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.infowars.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.infowars.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.9.8" />
<!-- Start Alexa Certify Javascript -->
<script type="text/javascript">
_atrk_opts = { atrk_acct:"GQZnj1aEsk00EH", domain:"infowars.com",dynamic: true};
(function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
</script>
<noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=GQZnj1aEsk00EH" style="display:none" height="1" width="1" alt="" /></noscript>
<!-- End Alexa Certify Javascript -->

<style>
.twitter-tweet{display:block!important;}
@media print {.nc_socialPanel{display:none!important;}}
</style>
<link rel="alternate" type="application/rss+xml" title="RSS feed" href="https://www.infowars.com/feed/custom_feed_rss" />
      <meta name="onesignal" content="wordpress-plugin"/>
        <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async></script>    <script>

      window.OneSignal = window.OneSignal || [];

      OneSignal.push( function() {
        OneSignal.SERVICE_WORKER_UPDATER_PATH = "OneSignalSDKUpdaterWorker.js.php";
        OneSignal.SERVICE_WORKER_PATH = "OneSignalSDKWorker.js.php";
        OneSignal.SERVICE_WORKER_PARAM = { scope: '/' };

        OneSignal.setDefaultNotificationUrl("https://www.infowars.com");
        var oneSignal_options = {};
        window._oneSignalInitOptions = oneSignal_options;

        oneSignal_options['wordpress'] = true;
oneSignal_options['appId'] = 'c3a4181a-7ebe-466c-9491-fe83976b1f2b';
oneSignal_options['autoRegister'] = true;
oneSignal_options['welcomeNotification'] = { };
oneSignal_options['welcomeNotification']['disable'] = true;
oneSignal_options['path'] = "https://www.infowars.com/wp-content/plugins/onesignal-free-web-push-notifications/sdk_files/";
oneSignal_options['promptOptions'] = { };
oneSignal_options['promptOptions']['siteName'] = 'https://infowars.com';
              OneSignal.init(window._oneSignalInitOptions);
                    });

      function documentInitOneSignal() {
        var oneSignal_elements = document.getElementsByClassName("OneSignal-prompt");

        var oneSignalLinkClickHandler = function(event) { OneSignal.push(['registerForPushNotifications']); event.preventDefault(); };        for(var i = 0; i < oneSignal_elements.length; i++)
          oneSignal_elements[i].addEventListener('click', oneSignalLinkClickHandler, false);
      }

      if (document.readyState === 'complete') {
           documentInitOneSignal();
      }
      else {
           window.addEventListener("load", function(event){
               documentInitOneSignal();
          });
      }
    </script>

<style>button#responsive-menu-button,#responsive-menu-container{display: none;-webkit-text-size-adjust: 100%}@media screen and (max-width: 768px){#responsive-menu-container{display: block;position: fixed;top: 0;bottom: 0;z-index: 99998;padding-bottom: 5px;margin-bottom: -5px;outline: 1px solid transparent;overflow-y: auto;overflow-x: hidden}#responsive-menu-container .responsive-menu-search-box{width: 100%;padding: 0 2%;border-radius: 2px;height: 50px;-webkit-appearance: none}#responsive-menu-container.push-left,#responsive-menu-container.slide-left{transform: translateX(-100%);-ms-transform: translateX(-100%);-webkit-transform: translateX(-100%);-moz-transform: translateX(-100%)}.responsive-menu-open #responsive-menu-container.push-left,.responsive-menu-open #responsive-menu-container.slide-left{transform: translateX(0);-ms-transform: translateX(0);-webkit-transform: translateX(0);-moz-transform: translateX(0)}#responsive-menu-container.push-top,#responsive-menu-container.slide-top{transform: translateY(-100%);-ms-transform: translateY(-100%);-webkit-transform: translateY(-100%);-moz-transform: translateY(-100%)}.responsive-menu-open #responsive-menu-container.push-top,.responsive-menu-open #responsive-menu-container.slide-top{transform: translateY(0);-ms-transform: translateY(0);-webkit-transform: translateY(0);-moz-transform: translateY(0)}#responsive-menu-container.push-right,#responsive-menu-container.slide-right{transform: translateX(100%);-ms-transform: translateX(100%);-webkit-transform: translateX(100%);-moz-transform: translateX(100%)}.responsive-menu-open #responsive-menu-container.push-right,.responsive-menu-open #responsive-menu-container.slide-right{transform: translateX(0);-ms-transform: translateX(0);-webkit-transform: translateX(0);-moz-transform: translateX(0)}#responsive-menu-container.push-bottom,#responsive-menu-container.slide-bottom{transform: translateY(100%);-ms-transform: translateY(100%);-webkit-transform: translateY(100%);-moz-transform: translateY(100%)}.responsive-menu-open #responsive-menu-container.push-bottom,.responsive-menu-open #responsive-menu-container.slide-bottom{transform: translateY(0);-ms-transform: translateY(0);-webkit-transform: translateY(0);-moz-transform: translateY(0)}#responsive-menu-container,#responsive-menu-container:before,#responsive-menu-container:after,#responsive-menu-container *,#responsive-menu-container *:before,#responsive-menu-container *:after{box-sizing: border-box;margin: 0;padding: 0}#responsive-menu-container #responsive-menu-search-box,#responsive-menu-container #responsive-menu-additional-content,#responsive-menu-container #responsive-menu-title{padding: 25px 5%}#responsive-menu-container #responsive-menu,#responsive-menu-container #responsive-menu ul{width: 100%}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu{display: none}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu.responsive-menu-submenu-open{display: block}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu-depth-1 a.responsive-menu-item-link{padding-left: 10%}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu-depth-2 a.responsive-menu-item-link{padding-left: 15%}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu-depth-3 a.responsive-menu-item-link{padding-left: 20%}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu-depth-4 a.responsive-menu-item-link{padding-left: 25%}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu-depth-5 a.responsive-menu-item-link{padding-left: 30%}#responsive-menu-container li.responsive-menu-item{width: 100%;list-style: none}#responsive-menu-container li.responsive-menu-item a{width: 100%;display: block;text-decoration: none;padding: 0 5%;position: relative}#responsive-menu-container li.responsive-menu-item a .fa{margin-right: 15px}#responsive-menu-container li.responsive-menu-item a .responsive-menu-subarrow{position: absolute;top: 0;bottom: 0;text-align: center;overflow: hidden}#responsive-menu-container li.responsive-menu-item a .responsive-menu-subarrow.fa{margin-right: 0}button#responsive-menu-button .responsive-menu-button-icon-inactive{display: none}button#responsive-menu-button{z-index: 99999;display: none;overflow: hidden;outline: none}button#responsive-menu-button img{max-width: 100%}.responsive-menu-label{display: inline-block;font-weight: 600;margin: 0 5px;vertical-align: middle}.responsive-menu-label .responsive-menu-button-text-open{display: none}.responsive-menu-accessible{display: inline-block}.responsive-menu-accessible .responsive-menu-box{display: inline-block;vertical-align: middle}.responsive-menu-label.responsive-menu-label-top,.responsive-menu-label.responsive-menu-label-bottom{display: block;margin: 0 auto}button#responsive-menu-button{padding: 0 0;display: inline-block;cursor: pointer;transition-property: opacity, filter;transition-duration: 0.15s;transition-timing-function: linear;font: inherit;color: inherit;text-transform: none;background-color: transparent;border: 0;margin: 0;overflow: visible}.responsive-menu-box{width: 30px;height: 25px;display: inline-block;position: relative}.responsive-menu-inner{display: block;top: 50%;margin-top: -2.5px}.responsive-menu-inner,.responsive-menu-inner::before,.responsive-menu-inner::after{width: 30px;height: 5px;background-color: #ffffff;border-radius: 4px;position: absolute;transition-property: transform;transition-duration: 0.15s;transition-timing-function: ease}.responsive-menu-open .responsive-menu-inner,.responsive-menu-open .responsive-menu-inner::before,.responsive-menu-open .responsive-menu-inner::after{background-color: #ffffff}button#responsive-menu-button:hover .responsive-menu-inner,button#responsive-menu-button:hover .responsive-menu-inner::before,button#responsive-menu-button:hover .responsive-menu-inner::after,button#responsive-menu-button:hover .responsive-menu-open .responsive-menu-inner,button#responsive-menu-button:hover .responsive-menu-open .responsive-menu-inner::before,button#responsive-menu-button:hover .responsive-menu-open .responsive-menu-inner::after,button#responsive-menu-button:focus .responsive-menu-inner,button#responsive-menu-button:focus .responsive-menu-inner::before,button#responsive-menu-button:focus .responsive-menu-inner::after,button#responsive-menu-button:focus .responsive-menu-open .responsive-menu-inner,button#responsive-menu-button:focus .responsive-menu-open .responsive-menu-inner::before,button#responsive-menu-button:focus .responsive-menu-open .responsive-menu-inner::after{background-color: #ffffff}.responsive-menu-inner::before,.responsive-menu-inner::after{content: "";display: block}.responsive-menu-inner::before{top: -10px}.responsive-menu-inner::after{bottom: -10px}.responsive-menu-boring .responsive-menu-inner,.responsive-menu-boring .responsive-menu-inner::before,.responsive-menu-boring .responsive-menu-inner::after{transition-property: none}.responsive-menu-boring.is-active .responsive-menu-inner{transform: rotate(45deg)}.responsive-menu-boring.is-active .responsive-menu-inner::before{top: 0;opacity: 0}.responsive-menu-boring.is-active .responsive-menu-inner::after{bottom: 0;transform: rotate(-90deg)}button#responsive-menu-button{width: 30px;height: 30px;position: absolute;top: 10px;right: 5%}button#responsive-menu-button .responsive-menu-box{color: #ffffff}.responsive-menu-open button#responsive-menu-button .responsive-menu-box{color: #ffffff}.responsive-menu-label{color: #ffffff;font-size: 13px;line-height: 13px}button#responsive-menu-button{display: inline-block;transition: transform 0.5s, background-color 1s}#responsive-menu-container{width: 75%;left: 0;transition: transform 0.5s;text-align: left;background: #43494c}#responsive-menu-container #responsive-menu-wrapper{background: #43494c}#responsive-menu-container #responsive-menu-additional-content{color: #ffffff}#responsive-menu-container .responsive-menu-search-box{background: #ffffff;border: 2px solid #dadada;color: #333333}#responsive-menu-container .responsive-menu-search-box:-ms-input-placeholder{color: #c7c7cd}#responsive-menu-container .responsive-menu-search-box::-webkit-input-placeholder{color: #c7c7cd}#responsive-menu-container .responsive-menu-search-box:-moz-placeholder{color: #c7c7cd;opacity: 1}#responsive-menu-container .responsive-menu-search-box::-moz-placeholder{color: #c7c7cd;opacity: 1}#responsive-menu-container .responsive-menu-item-link,#responsive-menu-container #responsive-menu-title,#responsive-menu-container .responsive-menu-subarrow{transition: background-color 1s, border-color 1s, color 1s}#responsive-menu-container #responsive-menu-title{background-color: #43494c;color: #ffffff;font-size: 18px;text-align: left}#responsive-menu-container #responsive-menu-title a{color: #ffffff;font-size: 18px;text-decoration: none}#responsive-menu-container #responsive-menu-title a:hover{color: #ffffff}#responsive-menu-container #responsive-menu-title:hover{background-color: #43494c;color: #ffffff}#responsive-menu-container #responsive-menu-title:hover a{color: #ffffff}#responsive-menu-container #responsive-menu-title #responsive-menu-title-image{display: inline-block;vertical-align: middle;max-width: 100%;margin-bottom: 15px}#responsive-menu-container #responsive-menu-title #responsive-menu-title-image img{max-width: 100%}#responsive-menu-container #responsive-menu > li.responsive-menu-item:first-child > a{border-top: 1px solid #3c3c3c}#responsive-menu-container #responsive-menu li.responsive-menu-item .responsive-menu-item-link{font-size: 18px}#responsive-menu-container #responsive-menu li.responsive-menu-item a{line-height: 44px;border-bottom: 1px solid #3c3c3c;color: #ffffff;background-color: #43494c;height: 44px}#responsive-menu-container #responsive-menu li.responsive-menu-item a:hover{color: #ffffff;background-color: #3c3c3c;border-color: #3c3c3c}#responsive-menu-container #responsive-menu li.responsive-menu-item a:hover .responsive-menu-subarrow{color: #ffffff;border-color: #3c3c3c;background-color: #3c3c3c}#responsive-menu-container #responsive-menu li.responsive-menu-item a:hover .responsive-menu-subarrow.responsive-menu-subarrow-active{color: #ffffff;border-color: #3f3f3f;background-color: #3f3f3f}#responsive-menu-container #responsive-menu li.responsive-menu-item a .responsive-menu-subarrow{right: 0;height: 44px;line-height: 44px;width: 44px;color: #ffffff;border-left: 1px solid #3c3c3c;background-color: #43494c}#responsive-menu-container #responsive-menu li.responsive-menu-item a .responsive-menu-subarrow.responsive-menu-subarrow-active{color: #ffffff;border-color: #212121;background-color: #212121}#responsive-menu-container #responsive-menu li.responsive-menu-item a .responsive-menu-subarrow.responsive-menu-subarrow-active:hover{color: #ffffff;border-color: #3f3f3f;background-color: #3f3f3f}#responsive-menu-container #responsive-menu li.responsive-menu-item a .responsive-menu-subarrow:hover{color: #ffffff;border-color: #3c3c3c;background-color: #3c3c3c}#responsive-menu-container #responsive-menu li.responsive-menu-current-item > .responsive-menu-item-link{background-color: #43494c;color: #ffffff;border-color: #212121}#responsive-menu-container #responsive-menu li.responsive-menu-current-item > .responsive-menu-item-link:hover{background-color: #43494c;color: #ffffff;border-color: #3f3f3f}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item .responsive-menu-item-link{font-size: 18px}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a{height: 44px;line-height: 44px;border-bottom: 1px solid #3c3c3c;color: #ffffff;background-color: #43494c}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a:hover{color: #ffffff;background-color: #3c3c3c;border-color: #3c3c3c}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a:hover .responsive-menu-subarrow{color: #ffffff;border-color: #3c3c3c;background-color: #3c3c3c}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a:hover .responsive-menu-subarrow.responsive-menu-subarrow-active{color: #ffffff;border-color: #3f3f3f;background-color: #3f3f3f}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a .responsive-menu-subarrow{right: 0;height: 44px;line-height: 44px;width: 44px;color: #ffffff;border-left: 1px solid #3c3c3c;background-color: #43494c}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a .responsive-menu-subarrow.responsive-menu-subarrow-active{color: #ffffff;border-color: #212121;background-color: #212121}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a .responsive-menu-subarrow.responsive-menu-subarrow-active:hover{color: #ffffff;border-color: #3f3f3f;background-color: #3f3f3f}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-item a .responsive-menu-subarrow:hover{color: #ffffff;border-color: #3c3c3c;background-color: #3c3c3c}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-current-item > .responsive-menu-item-link{background-color: #43494c;color: #ffffff;border-color: #212121}#responsive-menu-container #responsive-menu ul.responsive-menu-submenu li.responsive-menu-current-item > .responsive-menu-item-link:hover{background-color: #43494c;color: #ffffff;border-color: #3f3f3f}}</style>
<!-- NEW AD SYSTEM -->
        
<!-- END NEW AD SYSTEM -->

<!-- START SEO -->

  <script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "Organization",
		"url": "http://www.infowars.com",
		"logo": "http://hw.infowars.com/wp-content/images/logo.jpg"
	}
</script>
<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Alex Jones' Infowars",
		"url": "http://www.infowars.com",
		"sameAs": [
			"https://www.facebook.com/AlexanderEmerickJones",
			"https://twitter.com/realalexjones",
			"https://plus.google.com/+infowars",
			"https://www.youtube.com/user/TheAlexJonesChannel"
		]
	}
</script>
<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "Organization",
		"url": "http://www.infowars.com",
		"contactPoints": [
			{ "@type": "ContactPoint", "telephone": "+1-888-253-3139" , "contactType": "customer support" },
			{ "@type": "ContactPoint", "telephone": "+1-888-253-3139" , "contactType": "technical support" }
		]
	}
</script>

<!-- END SEO -->

<!-- Analytics -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-6888464-2', 'auto');
  ga('send', 'pageview');

</script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-6888464-2"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());

gtag('config', 'UA-6888464-2', { 'optimize_id': 'GTM-W2VNH5Q'});
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.6.2/jquery.colorbox.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<!-- Quantcast Tag -->
<!-- Go to www.addthis.com/dashboard to customize your tools -->

<script type="text/javascript">
  var _qevents = _qevents || [];

  (function() {
    var elem = document.createElement('script');
    elem.src = (document.location.protocol == "https:" ? "https://secure" : "http://edge") + ".quantserve.com/quant.js";
    elem.async = true;
    elem.type = "text/javascript";
    var scpt = document.getElementsByTagName('script')[0];
    scpt.parentNode.insertBefore(elem, scpt);
  })();

  _qevents.push({
    qacct:"p-mcrPr0aT_TQ1D"
  });
</script>

	<style type="text/css">
	.comment-count {
		opacity: 0;
		display: block;
	}
	</style>

<style type="text/css">
article p b {
  font-weight: bold;
}
article p i {
  font-style: italic;
}
article p script + br:first-of-type {
  display: none;
}
.play-button-ao {
	width: 50px;
	height: 50px;
	cursor: pointer;
	background: url('https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/play.png') no-repeat center center;
}
.play-button-ao.AudioPlay {
	background: url('https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/play.png') no-repeat center center;
}
.play-button-ao.AudioPause {
	background: url('https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/pause.png') no-repeat center center;
}
.p-only-small {
	display: none;
}
@media (max-width: 766px) {
	.p-only-small {
		display: inline-block;
	}
}
figure.wp-caption, figure figcaption {
  margin-bottom: 0!important;
}
</style>
<script type="text/javascript">
	jQuery(document).ready(function () {
		var stream_url = 'https://streams.infowars.com/alexjonesshow-aac?type=http&nocache=1792';
		var stream = null;
		jQuery('.play-button-ao').click(function (event) {
			if (stream == null) {
				stream = new Audio(stream_url); // floating element
			}
			if (!stream.paused) {
				stream.pause(); // promise
				jQuery(this).addClass('AudioPlay');
                jQuery(this).removeClass('AudioPause');
			}
			else {
				stream.play(); // promise
				jQuery(this).addClass('AudioPause');
                jQuery(this).removeClass('AudioPlay');
			}
		});
	});
</script>
<noscript><div style="display:none;"><img src="//pixel.quantserve.com/pixel/p-mcrPr0aT_TQ1D.gif" border="0" height="1" width="1" alt="Quantcast"/></div></noscript>
<!-- End Quantcast tag -->
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '712275745921248');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=712275745921248&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

<!-- Hotjar Tracking Code for infowars.com -->
<script>
  (function(h,o,t,j,a,r){
      h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
      h._hjSettings={hjid:1149050,hjsv:6};
      a=o.getElementsByTagName('head')[0];
      r=o.createElement('script');r.async=1;
      r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
      a.appendChild(r);
  })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
</script>

<!-- Start Facebook Post Embed Code -->
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml      : true,
      version    : 'v3.0'
    });
  }; 
  (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
</script>
<!-- End Facebook Post Embed Code -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.css">
<link rel="stylesheet" href="https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/print.css" type="text/css" media="print" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.6/slick.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.6/slick-theme.css" type="text/css">
<script src="//use.typekit.net/smg7rbp.js"></script>
<script>try{Typekit.load();}catch(e){}</script>
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
</head>
<body class="home blog group-blog responsive-menu-slide-left">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<script type="text/javascript">

  const IFWAds = {
    init: async () => {
      try {
        const response = await fetch('https://api.directus.libertycdn.com/_/items/infowars_ads');
        const json = await response.json();
        const ads = json.data;

        jQuery(document).ready(() => {
          ads.forEach(async (ad) => {
            if (ad.enabled) {
              const region = `#${ad.region}`;
              try {
                const response = await fetch(`https://api.directus.libertycdn.com/_/files/${ad.product_image}`);
                const json = await response.json();
                const image = json.data;

                if (image.data) {
                  IFWAds.inject(region, {
                    link: ad.tracking_link,
                    image: image.data.full_url
                  }, false);
                }
              }
              catch {
                console.error(e);
              }
            }
          });
        });
      }
      catch (e) {
        console.error(e);
      }
    },
    inject: async (selector, ad, before) => {
      (function ($, selector, ad, before) {
        var $el = $(selector);
        var template = `<div class="ad"><a href="${ad.link}" target="_blank"><img src="${ad.image}"/></a></div>`;

        if ($el.length > 0) {
          if (before) {
            $el.prepend(template);
          }
          else {
            $el.append(template);
          }
        }
      })(jQuery, selector, ad, before);
    }
  };

  IFWAds.init();

</script>


<style type="text/css">
.leaderboard-ad {
  width: 100%;
  /*height: 450px;*/
  line-height: 0;
  overflow: hidden;
  position: fixed;
  top: 0;
  left: 0;
  text-align: center; 
  z-index: -1;
  background-color: #000;
}
.leaderboard-ad .wrap {
  position: relative;
  width: 1366px;
  margin: 0 auto;
  left: 0;
  right: 0;
}
.leaderboard-ad .video-wrap {
  position: absolute;
  top: 13%;
  width: 42%;
  left: 51%;
  transform: translateX(-50%);
}
.leaderboard-ad .video-wrap .video-js {
  width: 100% !important;
}
.leaderboard-ad .video-controls {
  position: absolute;
  bottom: 5px;
  right: 5px;
}
.leaderboard-ad .video-controls .video-control {
  font-size: 42pt;
  color: #fff;
  opacity: 0.7;
  display: inline-block;
}
.leaderboard-ad .video-controls .video-control:hover {
  cursor: pointer;
  opacity: 1;
}
.leaderboard-ad video, .leaderboard-ad img {
  width: 100%;
}
.leaderboard-ad a.button {
  color: #fff;
  padding: 5px 25px;
  border-radius: 12px;
  box-shadow: none;
  background-color: #000;
  border: 1px solid #fff;
}
.header-wrap {
  /* margin-top: 450px; */
}
#header-container, .site-content {
  z-index: 9999;
}
@media (max-width: 1366px) {
  .leaderboard-ad {
    height: auto;
  }
  .leaderboard-ad .wrap {
    width: 100%;
  }
}
@media (max-width: 375px) {
  .leaderboard-ad .video-wrap .video-controls {
    display: none;
  }
}
</style>

<div class="leaderboard-ad" style="display: none;">
  <!-- <div class="leaderboard-ad wrap">
    <a href="/show" target="_blank"><img src="https://images.infowarsmedia.com/images/253f4d8c-0519-4002-9cd6-be848a25af92.jpg"/></a>
    <div class="video-wrap">
      <video src="https://media.infowars.com/videos/dff66370-ff3a-4eae-837d-1094378aec05.mp4" onclick="this.paused ? this.play() : this.pause()" autoplay muted looped></video>
    </div>
  </div> -->
</div>

<script type="text/javascript">
  (function () {

    document.addEventListener('DOMContentLoaded', async () => {
      const headerWrap = document.querySelector('.header-wrap');
      const leaderboardAd = document.querySelector('.leaderboard-ad');
      const wpadminbar = document.querySelector('#wpadminbar');

      try {
        const response = await fetch('https://api.directus.libertycdn.com/_/items/billboard_video_ads?filter[enabled][eq]=1');
        const json = await response.json();
	const ad = json.data[Math.floor(Math.random() * json.data.length)];

        if (ad.enabled) {
          const response = await fetch(`https://api.directus.libertycdn.com/_/files/${ad.background_image}`);
          const json = await response.json();
          const image = json.data;

          const leaderboardAdWrap = document.createElement('div');
          leaderboardAdWrap.className = 'leaderboard-ad wrap';

          const a = document.createElement('a');
          a.target = '_blank';
          a.href = ad.destination_link;
          leaderboardAdWrap.appendChild(a);

          const img = document.createElement('img');
          img.src = image.data.full_url;
          a.appendChild(img);

          const videoWrap = document.createElement('div');
          videoWrap.className = 'video-wrap';
          leaderboardAdWrap.appendChild(videoWrap);

          const videoInnerWrap = document.createElement('div');
          videoInnerWrap.style.position = 'relative';
          videoInnerWrap.className = 'video-inner-wrap';
          videoInnerWrap.style.width = '100%';
          videoWrap.appendChild(videoInnerWrap);
          
	  if (ad.html_snippet.length > 0) {
            const htmlSnippet = document.createElement('div');
            htmlSnippet.innerHTML = ad.html_snippet;
            videoInnerWrap.appendChild(htmlSnippet);
          }
          else {
            const video = document.createElement('video');
            video.className = 'video-js';
            video.autoplay = true;
            video.muted = true;
            video.loop = true;
            video.controls = true;

            const videoSource = document.createElement('source');
            videoSource.src = ad.video_link;
            videoSource.type = ad.video_type;
            video.appendChild(videoSource);
            
            video.onclick = (event) => {
              const target = event.target;

              if (target.paused) {
                target.play();
              }
              else {
                target.pause();
              }
            };

            videoInnerWrap.appendChild(video);
          }

          leaderboardAd.appendChild(leaderboardAdWrap);
          leaderboardAd.style.display = 'block';

          window.onresize = (event) => {
            let height = leaderboardAdWrap.clientHeight;

            if (wpadminbar) {
              height -= wpadminbar.clientHeight;
            }

            if (height > 0) {
              headerWrap.style.marginTop = `${height}px`;
            }
          };

          img.onload = () => {
            window.dispatchEvent(new Event('resize'));
          };

          window.onscroll = () => {
            if (document.scrollingElement.scrollTop > videoWrap.offsetTop + videoWrap.clientHeight) {
              if (!video.muted) {
                video.muted = true;
              }
            }
          };
        }
      }
      catch (e) {
        console.error(e);
      }

    }, false);

  })();
</script>


<header class="header-wrap">
<div id="page" class="hfeed site">
  <a class="skip-link screen-reader-text" href="#content">Skip to content</a>
  <div class="container" id="header-container">
    <div id="header">
    <div id="grad-left" class="gradient"></div>
    <div id="grad-right" class="gradient"></div>
    <div id="grad-bottom"></div>
      <div id="masthead-top">
        <div id="masthead-logo">
        <a href="/">
          <img id="main-logo" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/logo.png" alt="Alex Jones' InfoWars" title="Alex Jones' InfoWars" />
          <img id="mobile-logo" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/mlogo.png" alt="Alex Jones' InfoWars" title="Alex Jones' InfoWars" />
        </a>
        </div>
        </div>
        <div id="masthead-show">
          <div class="player-wrapper">
            <div id="player-info">
              <div class="headline">The</div>
              <div class="title"><span class="mobile-headline">The </span>Alex Jones <span class="alt">Radio Show</span></div>
              <div class="player">
                <div class="AudioPlay play play-button-ao"></div><div style="display: inline-block;margin-right: 10px;">Listen now</div><div style="display: inline-block;"><a target="_blank" href="/show" class="p-only-small" style="color: #fff;">Watch Now</a></div>
              </div>
            </div>
            <div id="akamai-audio-player" style="display:none!important;"></div>
            <img class="icon" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/alex.png">
          </div>
        <div id="social-media-share">
         <!-- <a target="_blank" href="https://www.facebook.com/AlexanderEmerickJones"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/facebook.jpg"></a> -->
         <!-- <a target="_blank" href="https://www.youtube.com/user/TheAlexJonesChannel"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/youtube.jpg"></a> -->
         <!-- <a target="_blank" href="https://twitter.com/#!/realalexjones"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/twitter.jpg"></a> -->
         <!-- <a target="_blank" href="https://www.pinterest.com/infowarspins"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/pinterest.jpg"></a> -->
	 <!-- <a target="_blank" href="https://open.spotify.com/show/1p9Lu8zRecoOyTWAQBdJC0"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/spotify.jpg"></a> -->
	 <a target="_blank" href="https://banned.video"><img src="https://images.infowarsmedia.com/images/5d9df1e0a2e4130013029a2d"/></a>
	 <a target="_blank" href="https://t.me/infowarslive"><img src="https://images.infowarsmedia.com/images/5cfe776d3976ca0017f67b37"/></a>
         <a target="_blank" href="https://www.minds.com/Infowars"><img src="https://images.infowarsmedia.com/images/5cfe85d40f10a70017704c87"/></a>
         <a target="_blank" href="https://gab.com/RealAlexJones"><img src="https://images.infowarsmedia.com/images/5cfe8621a8a80e00170d8957"/></a>
         <a target="_blank" href="https://www.newswars.com"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/newswars-20x20.jpg"></a>
         <a target="_blank" href="https://europe.infowars.com"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/infowars-europe-20x20.jpg"></a>
         <a target="_blank" href="https://www.prisonplanet.com"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/prisonplanet-20x20.jpg"></a>
         <a target="_blank" href="https://infowars.com/feed/custom_feed_rss"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/rss-20x20.jpg"></a>
         <a target="_blank" href="https://www.infowarsstore.com/"><img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/icons/cart-20x20.jpg"></a>
          </div>
      </div>
      </div>
    </div>
    <div class="container" id="masthead-navigation">
      <div id="navigation">
        <div class="inner-wrapper">
          <div class="menu-navigation-header-container"><ul id="menu-navigation-header" class="menu"><li id="menu-item-217431" class="first-nav menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-217431"><a href="/"><i class="fa fa-icon"></i></a></li>
<li id="menu-item-216918" class="alex-jones-radio-show-link menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-216918"><a title="Alex Jones Radio Show" href="/watch-alex-jones-show">Radio Show</a>
<ul class="sub-menu">
	<li id="menu-item-216949" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216949"><a href="https://www.infowars.com/watch-alex-jones-show/">Watch</a></li>
	<li id="menu-item-216919" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216919"><a href="https://www.infowars.com/about-alex-jones/">About Alex Jones</a></li>
	<li id="menu-item-216934" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216934"><a href="https://www.infowars.com/listen-to-the-radio-show-archive/">Radio Show Archive</a></li>
</ul>
</li>
<li id="menu-item-216953" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-216953"><a href="https://www.infowars.com/news/">News</a>
<ul class="sub-menu">
	<li id="menu-item-216933" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216933"><a href="/category/featured-stories/">Featured Stories</a></li>
	<li id="menu-item-216938" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216938"><a href="https://www.infowars.com/category/special-reports/">Special Reports</a></li>
	<li id="menu-item-216922" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216922"><a href="https://www.infowars.com/category/us-news/">U.S. News</a></li>
	<li id="menu-item-216929" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216929"><a href="https://www.infowars.com/category/world-news/">World News</a></li>
	<li id="menu-item-216921" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216921"><a href="https://www.infowars.com/category/economy/">Economy</a></li>
	<li id="menu-item-291901" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-291901"><a href="https://www.infowars.com/category/government/">Government</a></li>
	<li id="menu-item-216928" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216928"><a href="https://www.infowars.com/category/world-at-war/">World at War</a></li>
	<li id="menu-item-217396" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-217396"><a href="https://www.infowars.com/category/health/">Health</a></li>
	<li id="menu-item-216926" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216926"><a href="https://www.infowars.com/category/science-technology/">Science &#038; Technology</a></li>
	<li id="menu-item-291902" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-291902"><a href="https://www.infowars.com/category/globalism/">Globalism</a></li>
	<li id="menu-item-216924" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-216924"><a href="https://www.infowars.com/category/hot-news/">Hot News</a></li>
</ul>
</li>
<li id="menu-item-708166" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-708166"><a href="https://banned.video">Videos</a>
<ul class="sub-menu">
	<li id="menu-item-551317" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-551317"><a href="https://www.infowars.com/videos/">Alex Jones</a></li>
	<li id="menu-item-551318" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-551318"><a href="https://www.infowars.com/david-knight-show/">The David Knight Show</a></li>
	<li id="menu-item-551319" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-551319"><a href="https://www.infowars.com/war-room/">War Room</a></li>
	<li id="menu-item-654893" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-654893"><a href="https://www.infowars.com/videos/?channel=5d7a86b1f30956001545dd71">Paul Joseph Watson</a></li>
	<li id="menu-item-551315" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-551315"><a href="https://www.infowars.com/special-reports">Special Reports</a></li>
	<li id="menu-item-551407" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-551407"><a href="https://www.infowars.com/video-archive">Infowars Archive</a></li>
	<li id="menu-item-679325" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-679325"><a href="https://banned.video">banned.video</a></li>
</ul>
</li>
<li id="menu-item-216932" class="bold menu-item menu-item-type-custom menu-item-object-custom menu-item-216932"><a target="_blank" href="https://www.infowarsstore.com/?ims=kpfxf&#038;utm_campaign=Top+Of+Page&#038;utm_source=Infowars&#038;utm_medium=Magento&#038;utm_content=Top+Of+Page">Store</a></li>
<li id="menu-item-216956" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216956"><a href="https://www.infowars.com/breaking-news/">Breaking News</a></li>
<li id="menu-item-216957" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-216957"><a href="https://www.infowars.com/contact/">Contact</a>
<ul class="sub-menu">
	<li id="menu-item-467689" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-467689"><a href="https://www.infowars.com/media-inquiries/">Media Inquiries</a></li>
	<li id="menu-item-257826" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-257826"><a href="https://www.infowars.com/affiliates/">Affiliates</a></li>
	<li id="menu-item-656276" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-656276"><a href="https://www.infowars.com/advertise">Advertise</a></li>
	<li id="menu-item-266306" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-266306"><a href="https://www.infowars.com/contributors/">Contributors</a></li>
	<li id="menu-item-397438" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-397438"><a href="https://www.infowars.com/2017-guide-to-infowars-social-media-v1/">Social Media</a></li>
</ul>
</li>
</ul></div>          <div class="subscribe subscribe__container subscribe--alternate">
            <div class="subscribe__wrap">
              <div class="subscribe__button"><a href="/newsletter-sign-up">Newsletter</a></div>
            </div>
          </div>
          <div class="subscribe subscribe__container subscribe--alternate subscribe-banned-show-btn">
            <div class="subscribe__wrap">
              <div class="subscribe__button"><a href="https://www.infowars.com/how-to-get-the-banned-infowars-podcasts-on-your-mobile-device/">Subscribe to The Banned Show</a></div>
            </div>
          </div>
          <!--<div id="search-container">
            <div class="inner-search">
                <form id="header-search">
                  <div class="input-space">
                    <input name="search-query" id="search-query" type="text"/>
                  </div>
                  <button type="submit" id="submit-form" class="btn btn-success">
                    <i class="fa fa-search"></i>
                  </button>
                </form>
            </div>
          </div>-->
        </div>
      </div>
      <div id="mobile-navigation">
        <div class="inner-wrapper">
          <div class="menu-mobile-navigation-header-container"><ul id="menu-mobile-navigation-header" class="menu"><li id="menu-item-312751" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-312751"><a href="/watch-alex-jones-show">Watch Live</a></li>
<li id="menu-item-312752" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-312752"><a href="/breaking-news">Breaking</a></li>
<li id="menu-item-312756" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-312756"><a target="_blank" href="http://www.infowarsstore.com">Store</a></li>
</ul></div>        </div>
      </div>
    </div>
  </header>
  <div id="content" class="site-content">
<style>
	@media screen and (max-width: 440px) {
		.mobile-hide-special {
			display: none;
		}
	}
</style>
<script type="text/javascript">

	// (function ($) {

	// 	function __sx(e,t,n){if(n){var r=new Date;r.setTime(r.getTime()+24*n*60*60*1e3);var i="; expires="+r.toGMTString()}else var i="";document.cookie=e+"="+t+i+"; path=/"}function __gx(e){for(var t=e+"=",n=document.cookie.split(";"),r=0;r<n.length;r++){for(var i=n[r];" "==i.charAt(0);)i=i.substring(1,i.length);if(0==i.indexOf(t))return i.substring(t.length,i.length)}return null}function __erx(e){createCookie(e,"",-1)}

	// 	var __id = 'ifw_267da6ae5bf032290de';

	// 	function getParameterByName(name, url) {
	// 		if (!url) url = window.location.href;
	// 		name = name.replace(/[\[\]]/g, '\\$&');
	// 		var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
	// 			results = regex.exec(url);
	// 		if (!results) return null;
	// 		if (!results[2]) return '';
	// 		return decodeURIComponent(results[2].replace(/\+/g, ' '));
	// 	}

	// 	var content = getParameterByName('content');
	// 	if (content !== 'index' && content !== 'vod') {
	// 		window.location = '/?content=vod';
	// 	}

	// })(jQuery);
</script>

<link rel="stylesheet" type="text/css" media="screen" href="https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/lity.min.css"/>
<script type="text/javascript" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/lity.min.js"></script>

<link rel="stylesheet" type="text/css" media="screen" href="https://www.infowars.com/wp-content/themes/infowars-sitegoals/css/jquery.mCustomScrollbar.min.css"/>
<script type="text/javascript" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/jquery.mCustomScrollbar.js"></script>

<style type="text/css">
	.lity {
		z-index: 99999;
	}
	.lity-content .lity-content-footer {
		padding: 15px;
		text-align: center;
	}
	.lity-content .lity-content-footer a,
	.lity-content .lity-content-footer a:active {
		color: #000;
		font-size: 14pt;
		text-decoration: none;
	}
	.lity-content .lity-content-footer a .fa-download {
		margin-right: 10px;
	}
	.lity-content .lity-content-footer span {
		font-weight: bold;
		font-family: 'Lato', sans-serif;
	}
	.videos-container {
		margin-bottom: 25px;
	}
	.videos-container h1 {
		color: #000;
		display: inline-block;
	}
	.videos-container .videos {
		overflow-x: hidden;
		white-space: nowrap;
	}
	.videos-container .videos .video {
		width: 230px;		
		margin-right: 15px;
		margin-bottom: 15px;
		text-align: center;
		white-space: normal;
		display: inline-block;
		vertical-align: top;
	}
	.videos-container .videos .video img {
		width: 100%;
	}
	.videos-container .videos .video__thumbnail {
		color: #fff;
		font-size: 42pt;
		min-height: 129px;
		position: relative;
		vertical-align: middle;
		background-color: #494949;
	}
	.videos-container .videos .video__thumbnail:hover {
		opacity: 0.5;
	}
	.videos-container .videos .video__thumbnail i {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		text-shadow: 0px 0px 1px #000;
    	color: #eee;
		opacity: 1;
	}
	.videos-container .videos .video__thumbnail img {
		position: absolute;
		top: 0;
		left: 0;
	}
	.videos-container .videos .video__title {
		color: #000;
		font-weight: bold;
		font-size: 12pt;
		font-family: 'Oswald';
	}
	.video-container {
		margin-bottom: 10px;
		position: relative;
		padding-bottom: 56%;
		padding-top: 35px;
		height: 0;
		overflow: hidden;
	}
	.video-container iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
</style>
<script src="/ads.js" type="text/javascript"></script>
<script type="text/javascript">
	(function ($) {
		var TPL = {
			video: function (video) {
				if (!video.posterFileName) {
					video.posterFileName = `${video.posterName}.jpg`;
				}
				return `<div class="video">
					<a href="/watch/?video=${video.id}">
						<div class="video__thumbnail">
							<img src="${video.posterThumbnailUrl}" onerror="this.style.display = 'none';"/>
							<i class="fa fa-play-circle"></i>
						</div>
						<div class="video__title">
							${video.title}
						</div>
					</a>
				</div>`;
			}
		};
		$(document).ready(function () {
			var API_URL = decodeURIComponent("https:\/\/api.infowarsmedia.com");
			var CHANNEL_ID = "5b885d33e6646a0015a6fa2d";
			fetch(`${API_URL}/api/channel/${CHANNEL_ID}/videos?limit=5&includeLive=false`)
			.then(response => response.json())
			.then(data => {
				if (data.videos) {
					data.videos.forEach(video => {
						$('.videos-container .videos').append(TPL.video(video));
					});
					$('.videos-container .videos').mCustomScrollbar({
						axis: 'x',
						theme: 'dark'
					});
				}
			});
		});
	})(jQuery);
</script>
<script type="text/javascript" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/lity.events.js"></script>

<!-- Europewars Redirect & -->
<div id="primary" class="content-area pure-g home-page">
	<main id="main" class="content pure-u-1 pure-u-sm-1 pure-u-lg-3-4 pure-u-xl-3-4" role="main">
		
				<div class="pure-g section-featured-videos">
			<div class="left pure-u-1 pure-u-sm-1 pure-u-m-1 pure-u-lg-3-4 pure-u-xl-3-4">
				<div class="header">
					<h1>Watch Live</h1>
				</div>
									<div class="ifw-player expanded">
						<!--<a href="#"><img src="https://images.infowarsmedia.com/images/5eb083d3ed5d5800164478b8"/></a>-->
						<script type="text/javascript">
						/*(function ($) {
							$('.ifw-player a').click(function (event) {
								event.preventDefault();
								$('.play.play-button-ao.AudioPlay').trigger('click');
							});
		})(jQuery);*/
					</script>
					<div style="margin-bottom: 10px; position: relative; padding-bottom: 56%; padding-top: 35px; height: 0; overflow: hidden;"><iframe style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src="https://www.infowars.com/player/network.html" allowfullscreen="" frameborder="0"></iframe></div>
					</div>
					<style type="text/css">
					    .toggle-streams {
						margin-bottom: 10px;
					    }
					    .toggle-streams a.buy-now {
						max-width: 100%!important;
					    }
					    .toggle-streams a.buy-now:active,
					    .toggle-streams a.buy-now:focus {
						color: #fff!important;
					    }
					</style>
					<div class="toggle-streams">
						<a href="#" class="buy-now">Infowars Network Live Feed</a>
					</div>
					<script type="text/javascript">
					    (() => {

						const toggleStreamsButton = document.querySelector('.toggle-streams a.buy-now');

						const player = document.querySelector('.section-featured-videos .ifw-player');

						const getEmbedCode = (id) => {
						    return `<div style="margin-bottom: 10px; position: relative; padding-bottom: 56%; padding-top: 35px; height: 0; overflow: hidden;"><iframe style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src="https://api.banned.video/embed/${id}?autoplay=true&muted=true" allowfullscreen="" frameborder="0"></iframe></div>`
						};

						let stream_id = 1;

						toggleStreamsButton.addEventListener('click', (event) => {
							event.preventDefault();
							const target = event.currentTarget;

							console.log(stream_id);

							if (stream_id === 1) {
								target.innerHTML = 'Alex Jones Show';
						    		player.innerHTML = getEmbedCode('5c59c724f7c188001c3d8e2f');
								stream_id = 2;
							}
							else {
								target.innerHTML = 'Infowars Network Live Feed';
						    		player.innerHTML = getEmbedCode('5b92a1e6568f22455f55be2b');
								stream_id = 1;
							}
						});

					    })();
					</script>
							</div>
			<div class="right pure-u-1 pure-u-sm-1 pure-u-m-1 pure-u-lg-1-4 pure-u-xl-1-4">
				<div class="header">
					<h1>Featured</h1>
				</div>
				<div class="featured-videos"></div>
			</div>
			<div class="pure-u-1">
				<a target="_blank" id="underVideoAd" href=""><img src=""/></a>
				<script type="text/javascript">
					(() => {
						const ads = [
						{
							link: 'https://banned.video/?ims=zhecy&utm_campaign=watch+banned+videos+dark&utm_source=infowars+top+banner&utm_medium=infowars+top+banner&utm_content=watch+banned+videos+dark',
							image: 'https://images.infowarsmedia.com/images/5e18a9d3ba4abd00181e4ba8'
						},

						{
							link: 'https://www.infowarsstore.com/infowars-face-mask?ims=fizox&utm_campaign=FSS-NewMask-UnderVideo&utm_source=Infowars.com&utm_medium=Banner&utm_content=FSS-NewMask-UnderVideo',
							image: 'https://images.infowarsmedia.com/images/5ea0b0e18570580019f7fc45'
		},
		{
			link: 'https://www.infowarsstore.com/gear/top-selling-apparel?ims=xdjqq&utm_campaign=FSS-New5G-May20UnderVid&utm_source=Infowars.com&utm_medium=Banner+&utm_content=FSS-New5G-May20UnderVid',
			image: 'https://images.infowarsmedia.com/images/5eac4b0fef04b400944fca6c'
		}
						
							/*link: 'https://www.infowarsstore.com/gear/top-selling-apparel?ims=ynhde&utm_campaign=FSS-IWCrewShirtMar2020&utm_source=infowars+top+banner&utm_medium=infowars+top+banner&utm_content=FSS-IWCrew',
							image: 'https://images.infowarsmedia.com/images/5e7cf24d88c31b00a94947fa'
		},
		{
			link: 'https://www.infowarsstore.com/gear/top-selling-apparel?ims=ootpg&utm_campaign=FSS-NewSpaceForce2020&utm_source=infowars+top+banner&utm_medium=infowars+top+banner&utm_content=FSS-NewSpaceForce',
			image: 'https://images.infowarsmedia.com/images/5e7cf280f31e420080cb7000'
		},
		{
			link: 'https://www.infowarsstore.com/gear/top-selling-apparel?ims=jkbam&utm_campaign=FSS-PaulRevereMar2020&utm_source=infowars+top+banner&utm_medium=infowars+top+banner&utm_content=FSS-PaulReverPride',
				image: 'https://images.infowarsmedia.com/images/5e7cf2e6e2141a007bf1def5'
		}
							 */];
						
						const targetElement = document.querySelector('#underVideoAd');
						const targetImage = targetElement.querySelector('img');
						const ad = ads[Math.floor(Math.random() * ads.length)];

						targetElement.href = ad.link;
						targetImage.src = ad.image;
					})();
				</script>
			</div>
			<div class="pure-u-1">
				<hr class="divider"></hr>
			</div>
		</div>
		<style type="text/css">
			.section-featured-videos {
				margin-bottom: 15px;
			}
			.section-featured-videos .header {
				background-color: #e00;
				margin-bottom: 5px;
				padding: 0 10px;
			}
			.section-featured-videos .header h1 {
				color: #fff;
				margin-bottom: 0;
			}
			.section-featured-videos hr.divider {
				margin-top: 20px;
				margin-bottom: 5px;
			}
			.section-featured-videos .video {
				padding-left: 15px;
			}
			.section-featured-videos .video a {
				color: #000;
			}
			.section-featured-videos .video {
				margin-bottom: 10px;
			}
			.section-featured-videos .video .title {
				font-size: 12pt;
				line-height: 1.2em;
				font-family: 'Oswald', sans-serif;
			}
			@media (max-width: 600px) {
				.section-featured-videos .left .header {
					padding: 10px;
					font-size: 14pt;
				}
				.section-featured-videos .right {
					display: none;
				}
			}
		</style>
		<script type="text/javascript">
			(async () => {
				try {
					const response = await fetch('https://api.banned.video/graphql', {
						method: 'POST',
						headers: { 'Content-Type': 'application/json' },
						body: JSON.stringify({ query: 'query InfowarsGetActiveHomeLayout { getActiveConfig { _id featuredVideos { _id title largeImage } } }' })
					});

					const json = await response.json();
					const data = json.data;

					const featuredVideos = data.getActiveConfig.featuredVideos;

					const featuredVideosElement = document.querySelector('.section-featured-videos .featured-videos');

					for (let i = 0; i < 2; ++i) {
						const video = featuredVideos[i];
						const link = `https://banned.video/watch?id=${video._id}`;
						featuredVideosElement.innerHTML += `<div class="video">
							<div class="image">
								<a target="_blank" href="${link}"><img src="${video.largeImage}"/></a>
							</div>
							<div class="title">
								<a target="_blank" href="${link}">${video.title}</a>
							</div>
						</div>`;
					}
				}
				catch (error) {
					console.error(error);
				}
			})();
		</script>
		
						<section class="slider">
			<div id="home-flexslider" class="flexslider">
	          <ul class="slides">
	          	          				  	            <li>
					<a href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/sunsetmeditate23986.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/sunsetmeditate23986.jpg 800w, https://assets.infowars.com/2020/05/sunsetmeditate23986-768x403.jpg 768w, https://assets.infowars.com/2020/05/sunsetmeditate23986-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/" rel="bookmark" title="Permanent Link to On The Eve Of Destruction, The Planet Awakens">
								    								    	<div class="title-ddd">On The Eve Of Destruction, The Planet Awakens</div>
								 				                	</a>
			                </h3>
																										        															        						        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/#vuukle-comments" data-article-id="733777" rel="bookmark" title="Permanent Link to On The Eve Of Destruction, The Planet Awakens"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/twittersubmission24986.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/twittersubmission24986.jpg 800w, https://assets.infowars.com/2020/05/twittersubmission24986-768x403.jpg 768w, https://assets.infowars.com/2020/05/twittersubmission24986-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/" rel="bookmark" title="Permanent Link to Fauci Backtracks As Cuomo Doubles-Down">
								    								    	<div class="title-ddd">Fauci Backtracks As Cuomo Doubles-Down</div>
								 				                	</a>
			                </h3>
																										        															        						        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/#vuukle-comments" data-article-id="733768" rel="bookmark" title="Permanent Link to Fauci Backtracks As Cuomo Doubles-Down"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/titanic2340920.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/titanic2340920.jpg 800w, https://assets.infowars.com/2020/05/titanic2340920-768x403.jpg 768w, https://assets.infowars.com/2020/05/titanic2340920-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/" rel="bookmark" title="Permanent Link to Trump Says He May Do Nothing While The Election Is Stolen">
								    								    	<div class="title-ddd">Trump Says He May Do Nothing While The Election Is Stolen</div>
								 				                	</a>
			                </h3>
																										        															        						        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/#vuukle-comments" data-article-id="733756" rel="bookmark" title="Permanent Link to Trump Says He May Do Nothing While The Election Is Stolen"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/watch-texans-rally-at-state-capitol-in-protest-of-contact-tracing/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/texasrally324986.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/texasrally324986.jpg 800w, https://assets.infowars.com/2020/05/texasrally324986-768x403.jpg 768w, https://assets.infowars.com/2020/05/texasrally324986-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/watch-texans-rally-at-state-capitol-in-protest-of-contact-tracing/" rel="bookmark" title="Permanent Link to Watch: Texans Rally At State Capitol In Protest Of Contact Tracing">
								    								    	<div class="title-ddd">Watch: Texans Rally At State Capitol In Protest Of Contact Tracing</div>
								 				                	</a>
			                </h3>
																										        															        						        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/watch-texans-rally-at-state-capitol-in-protest-of-contact-tracing/#vuukle-comments" data-article-id="733746" rel="bookmark" title="Permanent Link to Watch: Texans Rally At State Capitol In Protest Of Contact Tracing"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/bill-maher-regrets-trumps-impeachment-turned-out-to-be-a-horrible-thing/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/billmaher23986t.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/billmaher23986t.jpg 800w, https://assets.infowars.com/2020/05/billmaher23986t-768x403.jpg 768w, https://assets.infowars.com/2020/05/billmaher23986t-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/bill-maher-regrets-trumps-impeachment-turned-out-to-be-a-horrible-thing/" rel="bookmark" title="Permanent Link to Bill Maher Regrets Trump&#8217;s Impeachment: &#8216;Turned Out To Be A Horrible Thing&#8217;">
								    								    	<div class="title-ddd">Bill Maher Regrets Trump&#8217;s Impeachment: &#8216;Turned Out To Be A Horrible Thing&#8217;</div>
								 				                	</a>
			                </h3>
																										        															        															        						        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/bill-maher-regrets-trumps-impeachment-turned-out-to-be-a-horrible-thing/#vuukle-comments" data-article-id="733741" rel="bookmark" title="Permanent Link to Bill Maher Regrets Trump&#8217;s Impeachment: &#8216;Turned Out To Be A Horrible Thing&#8217;"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/joe-biden-throws-in-the-towel/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/03/GettyImages-1206811778.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/03/GettyImages-1206811778.jpg 800w, https://assets.infowars.com/2020/03/GettyImages-1206811778-768x403.jpg 768w, https://assets.infowars.com/2020/03/GettyImages-1206811778-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/joe-biden-throws-in-the-towel/" rel="bookmark" title="Permanent Link to Joe Biden Throws In The Towel">
								    								    	<div class="title-ddd">Joe Biden Throws In The Towel</div>
								 				                	</a>
			                </h3>
																										        						<a href="https://www.infowars.com/category/special-reports/"><span class="white-cat large"><i class="fa fa-bookmark"></i>Special Reports</span></a>
		        								        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/joe-biden-throws-in-the-towel/#vuukle-comments" data-article-id="733736" rel="bookmark" title="Permanent Link to Joe Biden Throws In The Towel"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/michigan-ag-i-will-not-twiddle-my-thumbs-as-trump-risks-health-safety-of-residents/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/trump398236.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/trump398236.jpg 800w, https://assets.infowars.com/2020/05/trump398236-768x403.jpg 768w, https://assets.infowars.com/2020/05/trump398236-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/michigan-ag-i-will-not-twiddle-my-thumbs-as-trump-risks-health-safety-of-residents/" rel="bookmark" title="Permanent Link to Michigan AG Whines: I Will Not &#8216;Twiddle my Thumbs&#8217; As Trump Risks Health, Safety of Residents">
								    								    	<div class="title-ddd">Michigan AG Whines: I Will Not &#8216;Twiddle my Thumbs&#8217; As Trump Risks Health, Safety of Residents</div>
								 				                	</a>
			                </h3>
																										        															        															        						<a href="https://www.infowars.com/category/us-news/"><span class="white-cat large"><i class="fa fa-bookmark"></i>U.S. News</span></a>
		        								        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/michigan-ag-i-will-not-twiddle-my-thumbs-as-trump-risks-health-safety-of-residents/#vuukle-comments" data-article-id="733719" rel="bookmark" title="Permanent Link to Michigan AG Whines: I Will Not &#8216;Twiddle my Thumbs&#8217; As Trump Risks Health, Safety of Residents"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/fauci-about-face-prolonged-lockdowns-not-the-way-to-go/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/fauci2349865.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/fauci2349865.jpg 800w, https://assets.infowars.com/2020/05/fauci2349865-768x403.jpg 768w, https://assets.infowars.com/2020/05/fauci2349865-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/fauci-about-face-prolonged-lockdowns-not-the-way-to-go/" rel="bookmark" title="Permanent Link to Fauci About-Face: &#8216;Prolonged&#8217; Lockdowns Not The Way To Go">
								    								    	<div class="title-ddd">Fauci About-Face: &#8216;Prolonged&#8217; Lockdowns Not The Way To Go</div>
								 				                	</a>
			                </h3>
																										        															        															        						<a href="https://www.infowars.com/category/us-news/"><span class="white-cat large"><i class="fa fa-bookmark"></i>U.S. News</span></a>
		        								        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/fauci-about-face-prolonged-lockdowns-not-the-way-to-go/#vuukle-comments" data-article-id="733702" rel="bookmark" title="Permanent Link to Fauci About-Face: &#8216;Prolonged&#8217; Lockdowns Not The Way To Go"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/white-house-considers-panel-to-investigate-left-wing-bias-in-silicon-valley/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/04/GettyImages-1210936817.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/04/GettyImages-1210936817.jpg 800w, https://assets.infowars.com/2020/04/GettyImages-1210936817-768x403.jpg 768w, https://assets.infowars.com/2020/04/GettyImages-1210936817-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/white-house-considers-panel-to-investigate-left-wing-bias-in-silicon-valley/" rel="bookmark" title="Permanent Link to White House Considers Panel To Investigate &#8220;Left-Wing Bias&#8221; In Silicon Valley">
								    								    	<div class="title-ddd">White House Considers Panel To Investigate &#8220;Left-Wing Bias&#8221; In Silicon Valley</div>
								 				                	</a>
			                </h3>
																										        															        						<a href="https://www.infowars.com/category/government/"><span class="white-cat large"><i class="fa fa-bookmark"></i>Government</span></a>
		        								        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/white-house-considers-panel-to-investigate-left-wing-bias-in-silicon-valley/#vuukle-comments" data-article-id="733695" rel="bookmark" title="Permanent Link to White House Considers Panel To Investigate &#8220;Left-Wing Bias&#8221; In Silicon Valley"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          				  	            <li>
					<a href="https://www.infowars.com/slippery-slope-to-despotism-paved-with-lockdowns-raids-and-forced-vaccinations/">
					<img width="800" height="420" src="https://assets.infowars.com/2020/05/vaccinedeath23986.jpg" class="attachment-full size-full wp-post-image" alt="" srcset="https://assets.infowars.com/2020/05/vaccinedeath23986.jpg 800w, https://assets.infowars.com/2020/05/vaccinedeath23986-768x403.jpg 768w, https://assets.infowars.com/2020/05/vaccinedeath23986-610x320.jpg 610w" sizes="(max-width: 800px) 100vw, 800px" />					</a>
					<div class="flex-caption">
						<div class="flex-caption-wrapper">
			                <h3>
			                	<a href="https://www.infowars.com/slippery-slope-to-despotism-paved-with-lockdowns-raids-and-forced-vaccinations/" rel="bookmark" title="Permanent Link to Slippery Slope To Despotism: Paved With Lockdowns, Raids, And Forced Vaccinations">
								    								    	<div class="title-ddd">Slippery Slope To Despotism: Paved With Lockdowns, Raids, And Forced Vaccinations</div>
								 				                	</a>
			                </h3>
																										        															        															        						<a href="https://www.infowars.com/category/us-news/"><span class="white-cat large"><i class="fa fa-bookmark"></i>U.S. News</span></a>
		        								        				        				<span class="gallery-comments comment-count">
							  <a class="disqus-comment-count vuukle-comment-count" href="https://www.infowars.com/slippery-slope-to-despotism-paved-with-lockdowns-raids-and-forced-vaccinations/#vuukle-comments" data-article-id="733686" rel="bookmark" title="Permanent Link to Slippery Slope To Despotism: Paved With Lockdowns, Raids, And Forced Vaccinations"></a>
	        				</span>
	        			</div>
	              	</div>
	              <div class="overlay"></div>
	            </li>
	          	          </ul>
			</div>
		</section>

		<section class="gallery tablet-hidden desktop-hidden">
			<div class="pure-g">
				<div class="pure-u-1 pure-u-sm-1 pure-u-lg-2-3 pure-u-xl-2-3">
	        																											<article id="post-733777" class="large post-733777 post type-post status-publish format-standard has-post-thumbnail hentry category-featured-stories category-tile">

								<div class="gallery-img-wrapper">
									<a href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/"><img  class="landscape thumbnail large" width="610" height="320" alt="On The Eve Of Destruction, The Planet Awakens" itemprop="image" src="https://assets.infowars.com/2020/05/sunsetmeditate23986-610x320.jpg" /></a>								</div>
								<div class="overlay">
									<a href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/" rel="bookmark" title="Permanent Link to On The Eve Of Destruction, The Planet Awakens">
																				<h3>On The Eve Of Destruction, The Planet Awakens</h3>									</a>
																														                        															                        				                        												<span class="gallery-comments comment-count">
										<a class="vuukle-comment-count" href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/#vuukle-comments" data-article-id="733777" rel="bookmark" title="Permanent Link to On The Eve Of Destruction, The Planet Awakens"></a>
									</span>
								</div>
							</article>
															</div>
				<div class="pure-u-1 pure-u-sm-1 pure-u-lg-1-3 pure-u-xl-1-3">
	        																											<article id="post-733768" class="small post-733768 post type-post status-publish format-standard has-post-thumbnail hentry category-featured-stories category-tile">
								<div class="gallery-img-wrapper">
									<a href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/"><img  class="landscape thumbnail large" width="610" height="320" alt="Fauci Backtracks As Cuomo Doubles-Down" itemprop="image" src="https://assets.infowars.com/2020/05/twittersubmission24986-610x320.jpg" /></a>								</div>
								<div class="overlay">
									<a href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/" rel="bookmark" title="Permanent Link to Fauci Backtracks As Cuomo Doubles-Down">
																				<h3>Fauci Backtracks As Cuomo Doubles-Down</h3>									</a>
																														                        															                        				                        												<span class="gallery-comments comment-count">
										<a class="vuukle-comment-count" href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/#vuukle-comments" data-article-id="733768" rel="bookmark" title="Permanent Link to Fauci Backtracks As Cuomo Doubles-Down"></a>
									</span>
								</div>
							</article>
																				<article id="post-733756" class="small post-733756 post type-post status-publish format-standard has-post-thumbnail hentry category-featured-stories category-tile">
								<div class="gallery-img-wrapper">
									<a href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/"><img  class="landscape thumbnail large" width="610" height="320" alt="Trump Says He May Do Nothing While The Election Is Stolen" itemprop="image" src="https://assets.infowars.com/2020/05/titanic2340920-610x320.jpg" /></a>								</div>
								<div class="overlay">
									<a href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/" rel="bookmark" title="Permanent Link to Trump Says He May Do Nothing While The Election Is Stolen">
																				<h3>Trump Says He May Do Nothing While The Election Is Stol...</h3>									</a>
																														                        															                        				                        												<span class="gallery-comments comment-count">
										<a class="vuukle-comment-count" href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/#vuukle-comments" data-article-id="733756" rel="bookmark" title="Permanent Link to Trump Says He May Do Nothing While The Election Is Stolen"></a>
									</span>
								</div>
							</article>
															</div>
			</div>
		</section>
		<div id="home-tabs">
			<ul>
				<li><a href="#tabs-1">Featured<span class="mobile-hide-special"> Stories</span></a></li>
				<li><a href="#tabs-2">All News</a></li>
			</ul>
			<br style="clear:both;" />
			<div id="tabs-1">
				<section class="featured-stories home-section">
					<div class="articles-wrap pure-g">

																 					          <!-- <h1>On The Eve Of Destruction, The Planet Awakens</h1> -->
					          					     					          <!-- <h1>Fauci Backtracks As Cuomo Doubles-Down</h1> -->
					          					     					          <!-- <h1>Trump Says He May Do Nothing While The Election Is Stolen</h1> -->
					          					     					          <!-- <h1>Watch: Texans Rally At State Capitol In Protest Of Contact Tracing</h1> -->
					          					     					          <!-- <h1>Bill Maher Regrets Trump&#8217;s Impeachment: &#8216;Turned Out To Be A Horrible Thing&#8217;</h1> -->
					          					     					          <!-- <h1>Joe Biden Throws In The Towel</h1> -->
					          					     					          <!-- <h1>Michigan AG Whines: I Will Not &#8216;Twiddle my Thumbs&#8217; As Trump Risks Health, Safety of Residents</h1> -->
					          					     					          <!-- <h1>Fauci About-Face: &#8216;Prolonged&#8217; Lockdowns Not The Way To Go</h1> -->
					          					     					          <!-- <h1>White House Considers Panel To Investigate &#8220;Left-Wing Bias&#8221; In Silicon Valley</h1> -->
					          					     					          <!-- <h1>Slippery Slope To Despotism: Paved With Lockdowns, Raids, And Forced Vaccinations</h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     					          <!-- <h1></h1> -->
					          					     																																				<!--two, showing image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					     <article>
						     <div class="thumbnail">
						          <a href="https://www.infowars.com/london-reportedly-set-to-cut-huaweis-role-in-development-of-5g-network-in-uk/"><img width="380" height="218" src="https://assets.infowars.com/2019/08/Huawei-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						          						     </div>
						     <div class="article-content">
						     	  						          	<h3><a href="https://www.infowars.com/london-reportedly-set-to-cut-huaweis-role-in-development-of-5g-network-in-uk/">London Reportedly Set to Cut Huawei’s Role in Development of 5G Network in UK</a></h3>
						      	  						          									<h4 class="entry-subtitle">Telecom company essentially a spy operation for Chinese Communist Party</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/world-news/">
											World News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/london-reportedly-set-to-cut-huaweis-role-in-development-of-5g-network-in-uk/#vuukle-comments" data-article-id="733674" rel="bookmark" title="Permanent Link to London Reportedly Set to Cut Huawei’s Role in Development of 5G Network in UK"></a>
								  </span>
						     </div>
					     </article>
					</div>
																																																							
										









																					<!--two, showing image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					     <article>
						     <div class="thumbnail">
						          <a href="https://www.infowars.com/wrays-review-of-fbis-flynn-probe-is-the-fox-guarding-the-hen-house/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/wrayfbi323986-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						          						     </div>
						     <div class="article-content">
						     	  						          	<h3><a href="https://www.infowars.com/wrays-review-of-fbis-flynn-probe-is-the-fox-guarding-the-hen-house/">Wray&#8217;s Review Of FBI&#8217;s Flynn Probe &#8220;Is The Fox Guarding The Hen House&#8221;</a></h3>
						      	  						          									<h4 class="entry-subtitle">How can we trust an unbiased investigation from the very bureau that targeted Flynn in the first place?</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/government/">
											Government										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/wrays-review-of-fbis-flynn-probe-is-the-fox-guarding-the-hen-house/#vuukle-comments" data-article-id="733713" rel="bookmark" title="Permanent Link to Wray&#8217;s Review Of FBI&#8217;s Flynn Probe &#8220;Is The Fox Guarding The Hen House&#8221;"></a>
								  </span>
						     </div>
					     </article>
					</div>
																																																							
										









																					<!--two, showing image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					     <article>
						     <div class="thumbnail">
						          <a href="https://www.infowars.com/google-drive-takes-down-users-personal-copy-of-judy-mikovits-plandemic-after-it-was-flagged-by-the-washington-post-2/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/google-drive-removes-user-file-plandemic-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						          						     </div>
						     <div class="article-content">
						     	  						          	<h3><a href="https://www.infowars.com/google-drive-takes-down-users-personal-copy-of-judy-mikovits-plandemic-after-it-was-flagged-by-the-washington-post-2/">Google Drive takes down user’s personal copy of Judy Mikovits’ Plandemic after it was flagged by The Washington Post</a></h3>
						      	  						          									<h4 class="entry-subtitle">Google is now applying its controversial coronavirus misinformation policies to users' personal files</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/science-technology/">
											Science &amp; Tech										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/google-drive-takes-down-users-personal-copy-of-judy-mikovits-plandemic-after-it-was-flagged-by-the-washington-post-2/#vuukle-comments" data-article-id="733668" rel="bookmark" title="Permanent Link to Google Drive takes down user’s personal copy of Judy Mikovits’ Plandemic after it was flagged by The Washington Post"></a>
								  </span>
						     </div>
					     </article>
					</div>
																																																							
										









																					<!--two, showing image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					     <article>
						     <div class="thumbnail">
						          <a href="https://www.infowars.com/trump-administration-is-considering-first-nuclear-weapons-test-since-1992/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/GettyImages-1195765597-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						          						     </div>
						     <div class="article-content">
						     	  						          	<h3><a href="https://www.infowars.com/trump-administration-is-considering-first-nuclear-weapons-test-since-1992/">Trump administration is &#8216;considering first nuclear weapons test since 1992</a></h3>
						      	  						          									<h4 class="entry-subtitle">Citing threats from Russia and China' - but experts warn it could start an 'unprecedented arms race' and destabilize international relations</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/world-news/">
											World News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/trump-administration-is-considering-first-nuclear-weapons-test-since-1992/#vuukle-comments" data-article-id="733665" rel="bookmark" title="Permanent Link to Trump administration is &#8216;considering first nuclear weapons test since 1992"></a>
								  </span>
						     </div>
					     </article>
					</div>
																																																							
										









																					<!--two, showing image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					     <article>
						     <div class="thumbnail">
						          <a href="https://www.infowars.com/black-conservatives-joe-bidens-you-aint-black-comment-racist-and-dehumanizing/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/GettyImages-1212651943-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						          						     </div>
						     <div class="article-content">
						     	  						          	<h3><a href="https://www.infowars.com/black-conservatives-joe-bidens-you-aint-black-comment-racist-and-dehumanizing/">Black Conservatives: Joe Biden’s ‘You Ain’t Black’ Comment ‘Racist and Dehumanizing’</a></h3>
						      	  						          									<h4 class="entry-subtitle">"The Democrats view black people as trained chimpanzees who should not ask questions."</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/us-news/">
											U.S. News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/black-conservatives-joe-bidens-you-aint-black-comment-racist-and-dehumanizing/#vuukle-comments" data-article-id="733662" rel="bookmark" title="Permanent Link to Black Conservatives: Joe Biden’s ‘You Ain’t Black’ Comment ‘Racist and Dehumanizing’"></a>
								  </span>
						     </div>
					     </article>
					</div>
																																																							
										









																					<!--two, showing image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					     <article>
						     <div class="thumbnail">
						          <a href="https://www.infowars.com/lockdowns-failed-to-alter-the-course-of-pandemic-and-are-now-destroying-millions-of-livelihoods-worldwide-jp-morgan-study-claims/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/GettyImages-1217300048-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						          						     </div>
						     <div class="article-content">
						     	  						          	<h3><a href="https://www.infowars.com/lockdowns-failed-to-alter-the-course-of-pandemic-and-are-now-destroying-millions-of-livelihoods-worldwide-jp-morgan-study-claims/">Lockdowns failed to alter the course of pandemic and are now destroying millions of livelihoods worldwide, JP Morgan study claims</a></h3>
						      	  						          									<h4 class="entry-subtitle">Falling infection rates since lockdowns were lifted suggest that the virus 'likely has its own dynamics'</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/government/">
											Government										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/lockdowns-failed-to-alter-the-course-of-pandemic-and-are-now-destroying-millions-of-livelihoods-worldwide-jp-morgan-study-claims/#vuukle-comments" data-article-id="733659" rel="bookmark" title="Permanent Link to Lockdowns failed to alter the course of pandemic and are now destroying millions of livelihoods worldwide, JP Morgan study claims"></a>
								  </span>
						     </div>
					     </article>
					</div>
																																																							
										









																										<!--two, no image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">

					    <article>
						    <div class="article-content">
						    	  						          						          	<h3><a href="https://www.infowars.com/us-to-launch-massive-covid-vaccine-test-involves-over-100000-volunteers/">US To Launch Massive COVID Vaccine Test, Involves Over 100,000 &#8220;Volunteers&#8221;</a></h3>
						      	  							      									<h4 class="entry-subtitle">"If you don't see a safety problem, you just keep going."</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/science-technology/">
											Science &amp; Tech										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/us-to-launch-massive-covid-vaccine-test-involves-over-100000-volunteers/#vuukle-comments" data-article-id="733656" rel="bookmark" title="Permanent Link to US To Launch Massive COVID Vaccine Test, Involves Over 100,000 &#8220;Volunteers&#8221;"></a>
								  </span>
						     </div>
					     </article>


					</div>
																																																		
										









																										<!--two, no image-->
					<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">

					    <article>
						    <div class="article-content">
						    	  						          						          	<h3><a href="https://www.infowars.com/shocking-moment-mob-of-teenagers-kick-police-officer-and-drag-him-across-the-floor-after-he-challenged-them-for-flouting-lockdown-rules-in-park/">Shocking moment mob of teenagers kick police officer and drag him across the floor after he challenged them for flouting lockdown rules in park</a></h3>
						      	  							      									<h4 class="entry-subtitle">A group of young males were reported to be potentially contravening social distancing guidelines</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/world-news/">
											World News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  	<a class="vuukle-comment-count" href="https://www.infowars.com/shocking-moment-mob-of-teenagers-kick-police-officer-and-drag-him-across-the-floor-after-he-challenged-them-for-flouting-lockdown-rules-in-park/#vuukle-comments" data-article-id="733653" rel="bookmark" title="Permanent Link to Shocking moment mob of teenagers kick police officer and drag him across the floor after he challenged them for flouting lockdown rules in park"></a>
								  </span>
						     </div>
					     </article>


					</div>
																																																		
										









																															<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
															<article>
						    <div class="article-content">
						    	  						          						          	<h3><a href="https://www.infowars.com/watch-racist-joe-biden-makes-black-youtuber-cry-all-night/">Watch: Racist Joe Biden Makes Black YouTuber &#8220;Cry All Night&#8221;</a></h3>
						      	  							      									<h4 class="entry-subtitle">"All this time I've been walking around thinking I'm black"</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/us-news/">
											U.S. News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								    <a class="vuukle-comment-count" href="https://www.infowars.com/watch-racist-joe-biden-makes-black-youtuber-cry-all-night/#vuukle-comments" data-article-id="733638" rel="bookmark" title="Permanent Link to Watch: Racist Joe Biden Makes Black YouTuber &#8220;Cry All Night&#8221;"></a>
								  </span>
						     </div>
					     </article>
																																								
										









																																									<article>
						    <div class="article-content">
						    	  						          						          	<h3><a href="https://www.infowars.com/white-house-press-secretary-stuns-journos-with-interactive-obamagate-presentation-on-how-to-do-their-jobs/">White House Press Secretary Stuns Journos With Interactive &#8216;Obamagate&#8217; Presentation On How To Do Their Jobs</a></h3>
						      	  							      									<h4 class="entry-subtitle">Kayleigh McEnany delivered a scorching presentation to the White House Press Corps</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/us-news/">
											U.S. News										</a>
									</span>
								  </div>
							      <span class="comment-count">
									<a class="vuukle-comment-count" href="https://www.infowars.com/white-house-press-secretary-stuns-journos-with-interactive-obamagate-presentation-on-how-to-do-their-jobs/#vuukle-comments" data-article-id="733624" rel="bookmark" title="Permanent Link to White House Press Secretary Stuns Journos With Interactive &#8216;Obamagate&#8217; Presentation On How To Do Their Jobs"></a>
								  </span>
						     </div>
					     </article>
					     </div>
																																			
										









																																														<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
					    <article>
						     <div class="thumbnail">
						     	  						          <a href="https://www.infowars.com/champion-racer-who-shot-killed-armed-mugger-slams-democrat-politicians/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/5-22-20-firearm-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						     </div>
						     <div class="article-content">
						          						          	<h3><a href="https://www.infowars.com/champion-racer-who-shot-killed-armed-mugger-slams-democrat-politicians/">Champion Racer Who Shot &#038; Killed Armed Mugger Slams Democrat Politicians</a></h3>
						      	  						          									<h4 class="entry-subtitle">'Joe Biden and Beto O'Rourke are totally comfortable with my girlfriend and I laying face down dead '</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/us-news/">
											U.S. News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  <a class="vuukle-comment-count" href="https://www.infowars.com/champion-racer-who-shot-killed-armed-mugger-slams-democrat-politicians/#vuukle-comments" data-article-id="733580" rel="bookmark" title="Permanent Link to Champion Racer Who Shot &#038; Killed Armed Mugger Slams Democrat Politicians"></a>
									</span>
						     </div>
					     </article>


					</div>
																														
										









																																																			<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">

					    <article>
						     <div class="thumbnail">
						     	  						          <a href="https://www.infowars.com/trump-designates-houses-of-worship-as-essential-orders-us-governors-to-reopen-them-now/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/GettyImages-1213157224-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						     </div>
						     <div class="article-content">
						          						          	<h3><a href="https://www.infowars.com/trump-designates-houses-of-worship-as-essential-orders-us-governors-to-reopen-them-now/">Trump Designates Houses of Worship as Essential, Orders US Governors to Reopen Them NOW</a></h3>
						      	  						          									<h4 class="entry-subtitle">'I will override the governors'</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/government/">
											Government										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  <a class="vuukle-comment-count" href="https://www.infowars.com/trump-designates-houses-of-worship-as-essential-orders-us-governors-to-reopen-them-now/#vuukle-comments" data-article-id="733587" rel="bookmark" title="Permanent Link to Trump Designates Houses of Worship as Essential, Orders US Governors to Reopen Them NOW"></a>
								</span>
						     </div>
					     </article>


					</div>
																									
										









																																																								<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
															<article>
						    <div class="article-content">
						    	  						          						          	<h3><a href="https://www.infowars.com/founder-of-clap-for-nhs-movement-wants-it-to-end/">Founder of &#8216;Clap For NHS&#8217; Movement Wants it to End</a></h3>
						      	  							      									<h4 class="entry-subtitle">The cringe may finally be over.</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/hot-news/">
											Hot News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  <a class="vuukle-comment-count" href="https://www.infowars.com/founder-of-clap-for-nhs-movement-wants-it-to-end/#vuukle-comments" data-article-id="733581" rel="bookmark" title="Permanent Link to Founder of &#8216;Clap For NHS&#8217; Movement Wants it to End"></a>
								  </span>
						     </div>
					     </article>
															
										









																																																																		<article>
						    <div class="article-content">
						    	  						          						          	<h3><a href="https://www.infowars.com/creepy-joe-biden-has-always-been-creepy-detained-by-police-for-following-women-in-college/">Creepy Joe Biden Has Always Been Creepy &#8211; Detained By Police For Following Women In College</a></h3>
						      	  							      									<h4 class="entry-subtitle">'I didn't get arrested, but I almost did!'</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/us-news/">
											U.S. News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								    <a class="vuukle-comment-count" href="https://www.infowars.com/creepy-joe-biden-has-always-been-creepy-detained-by-police-for-following-women-in-college/#vuukle-comments" data-article-id="733538" rel="bookmark" title="Permanent Link to Creepy Joe Biden Has Always Been Creepy &#8211; Detained By Police For Following Women In College"></a>
								  </span>
						     </div>
					     </article>
					     </div>
										
										









																																																																							<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">

					    <article>
						    <div class="article-content">
						          						          						     		<h3><a href="https://www.infowars.com/live-trump-reveals-guidelines-on-reopening-churches/" style="color:#d31d1d!important">Watch: Trump Says &#8220;Houses of Worship Are Essential&#8221;</a></h3>
						          							      									<h4 class="entry-subtitle">Orders churches to open immediately</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/hot-news/">
											Hot News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  <a class="vuukle-comment-count" href="https://www.infowars.com/live-trump-reveals-guidelines-on-reopening-churches/#vuukle-comments" data-article-id="733541" rel="bookmark" title="Permanent Link to Watch: Trump Says &#8220;Houses of Worship Are Essential&#8221;"></a>
								  </span>
						     </div>
					     </article>


					</div>
					
										









																																																																							<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">

					    <article>
						    <div class="article-content">
						          						          						          	<h3><a href="https://www.infowars.com/genetic-code-of-every-lifeform-under-attack-by-world-elite/">Genetic Code of Every Lifeform Under Attack by World Elite</a></h3>
						      	  							      									<h4 class="entry-subtitle">“The genetic code is 3.6 billion years old. It’s time for a rewrite”</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/globalism/">
											Globalism										</a>
									</span>
								  </div>
							      <span class="comment-count">
								  <a class="vuukle-comment-count" href="https://www.infowars.com/genetic-code-of-every-lifeform-under-attack-by-world-elite/#vuukle-comments" data-article-id="733478" rel="bookmark" title="Permanent Link to Genetic Code of Every Lifeform Under Attack by World Elite"></a>
								  </span>
						     </div>
					     </article>


					</div>
					
										









																																																																		
																<div class="three-columns">
										<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

					    <article>
						     <div class="thumbnail">
						     	  						          <a href="https://www.infowars.com/ikea-to-employ-social-distance-wardens-to-patrol-shoppers/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/220520ikea-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						     </div>
						     <div class="article-content">
						          						          	<h3><a href="https://www.infowars.com/ikea-to-employ-social-distance-wardens-to-patrol-shoppers/">IKEA to Employ &#8220;Social Distance Wardens&#8221; to Patrol Shoppers</a></h3>
						      	  						          									<h4 class="entry-subtitle">OK, Karen.</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/hot-news/">
											Hot News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								    <a class="vuukle-comment-count" href="https://www.infowars.com/ikea-to-employ-social-distance-wardens-to-patrol-shoppers/#vuukle-comments" data-article-id="733544" rel="bookmark" title="Permanent Link to IKEA to Employ &#8220;Social Distance Wardens&#8221; to Patrol Shoppers"></a>
								  </span>
						     </div>
					     </article>
					</div>
															









																																																																		
															<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

					    <article>
						     <div class="thumbnail">
						     	  						          <a href="https://www.infowars.com/watch-democrat-rep-tells-biden-im-black-and-im-voting-for-trump/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/vernon-jones2345-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						     </div>
						     <div class="article-content">
						          						          	<h3><a href="https://www.infowars.com/watch-democrat-rep-tells-biden-im-black-and-im-voting-for-trump/">Watch: Democrat Rep. Tells Biden, &#8216;I&#8217;m Black, and I&#8217;m Voting For Trump&#8217;</a></h3>
						      	  						          									<h4 class="entry-subtitle">'This is a prime example of how liberal democrats, they love to dictate the way black people should think'</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/government/">
											Government										</a>
									</span>
								  </div>
							      <span class="comment-count">
								    <a class="vuukle-comment-count" href="https://www.infowars.com/watch-democrat-rep-tells-biden-im-black-and-im-voting-for-trump/#vuukle-comments" data-article-id="733504" rel="bookmark" title="Permanent Link to Watch: Democrat Rep. Tells Biden, &#8216;I&#8217;m Black, and I&#8217;m Voting For Trump&#8217;"></a>
								  </span>
						     </div>
					     </article>
					</div>
															









																																																																		
															<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

					    <article>
						     <div class="thumbnail">
						     	  						          <a href="https://www.infowars.com/obamas-ambassador-to-beijing-compares-trump-to-hitler-on-chinese-tv/"><img width="380" height="218" src="https://assets.infowars.com/2018/07/obama-1-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
						     </div>
						     <div class="article-content">
						          						          	<h3><a href="https://www.infowars.com/obamas-ambassador-to-beijing-compares-trump-to-hitler-on-chinese-tv/">Obama&#8217;s Ambassador To Beijing Compares Trump To Hitler On Chinese TV</a></h3>
						      	  						          									<h4 class="entry-subtitle">'Joe McCarthy [and] Adolf Hitler…rallied people up, making people believe things that were really not true'</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/world-news/">
											World News										</a>
									</span>
								  </div>
							      <span class="comment-count">
								    <a class="vuukle-comment-count" href="https://www.infowars.com/obamas-ambassador-to-beijing-compares-trump-to-hitler-on-chinese-tv/#vuukle-comments" data-article-id="733524" rel="bookmark" title="Permanent Link to Obama&#8217;s Ambassador To Beijing Compares Trump To Hitler On Chinese TV"></a>
								  </span>
						     </div>
					     </article>
					</div>
											</div>
						<div class="from-our-store">
							<h1 class="category-title">From Our Store</h1><a href="https://www.infowarsstore.com/" title="Visit Store" class="view-all">Visit Store&nbsp;&nbsp;<i class="fa fa-long-arrow-right"></i></a>
							<hr class="blue-divider">
							<div class="pure-g dynamic-store start">

								<div class="pure-u-1 pure-u-sm pure-u-lg-1-3 pure-u-xl-1-3 store-price">
									<a class="product-title" href=""><h2></h2></a>
									<span class="grey">Your Price: <span class="your-price"></span></span>
									<span class="red">On Sale: <span class="sale-price"></span></span>
								</div>

								<div class="pure-u-1 pure-u-sm-1 pure-u-lg-1-3 pure-u-xl-1-3 archive-store-description">
									<p class="product-description">
									</p>
								</div>

								<div class="pure-u-1 pure-u-sm-1 pure-u-lg-1-3 pure-u-xl-1-3 store-image-buttons">
									<img class="product img-responsive" src="">
									<a class="buy-now-button button product-link" href="https://www.infowarsstore.com/survival-shield-x-2-nascent-iodine.html">Buy Now</a>
									<a class="learn-more-button button product-info" href="https://www.infowarsstore.com/survival-shield-x-2-nascent-iodine.html">Learn More</a>
								</div>
							</div>


						</div>
						<br class="clear" />
															









																																																																		
																					<div class="three-columns border-top">
										<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

					    <article>

						     <div class="article-content">
						     	  						          						          	<h3><a href="https://www.infowars.com/biden-tells-black-show-host-you-aint-black-if-you-prefer-trump/">Biden Tells Black Show Host &#8220;You Ain&#8217;t Black&#8221; if You Prefer Trump</a></h3>
						      	  						          									<h4 class="entry-subtitle">Uncle Joe strikes again.</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/us-news/">
											U.S. News										</a>
									</span>
								  </div>
							      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/biden-tells-black-show-host-you-aint-black-if-you-prefer-trump/#vuukle-comments" data-article-id="733501" rel="bookmark" title="Permanent Link to Biden Tells Black Show Host &#8220;You Ain&#8217;t Black&#8221; if You Prefer Trump"></a></span>
						     </div>
					     </article>
					</div>
										









																																																																		
																				<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

					    <article>

						     <div class="article-content">
						     	  						          						          	<h3><a href="https://www.infowars.com/biden-im-going-to-beat-joe-biden/">Biden: &#8220;I’m Going to Beat Joe Biden&#8221;</a></h3>
						      	  						          									<h4 class="entry-subtitle">It keeps happening!</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/government/">
											Government										</a>
									</span>
								  </div>
							      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/biden-im-going-to-beat-joe-biden/#vuukle-comments" data-article-id="733482" rel="bookmark" title="Permanent Link to Biden: &#8220;I’m Going to Beat Joe Biden&#8221;"></a></span>
						     </div>
					     </article>
					</div>
										









																																																																		
																				<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

					    <article>

						     <div class="article-content">
						     	  						          						          	<h3><a href="https://www.infowars.com/poll-a-quarter-of-americans-are-not-interested-in-coronavirus-vaccine/">Poll: A Quarter Of Americans Are Not Interested In Coronavirus Vaccine</a></h3>
						      	  						          									<h4 class="entry-subtitle">But two thirds are either "very" or "somewhat" interested</h4>
								  							      <div class="category-name">
									<span class="blue-cat"><i class="fa fa-bookmark"></i>
										<a href="https://www.infowars.com/category/science-technology/">
											Science &amp; Tech										</a>
									</span>
								  </div>
							      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/poll-a-quarter-of-americans-are-not-interested-in-coronavirus-vaccine/#vuukle-comments" data-article-id="733455" rel="bookmark" title="Permanent Link to Poll: A Quarter Of Americans Are Not Interested In Coronavirus Vaccine"></a></span>
						     </div>
					     </article>
					</div>
											</div>
										









										</div><!--end articles-wrap-->
				</section>
				<div class="featured-content">
				 </div>
				<div class="load-more-featured">
				 	<a href="" class="load-more featured">Load More Stories</a>
				 </div>
			</div>
			<div id="tabs-2">
				<section class="special-reports home-section">
						<div class="heading-wrap">
							<h1>Special Reports</h1><a href="/category/special-reports/" title="View Archive" class="view-all">view all&nbsp;&nbsp;<i class="fa fa-long-arrow-right"></i></a>
						</div>
						<hr class="blue-divider">
						<div class="articles-wrap pure-g">
																																						<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     							          <a href="https://www.infowars.com/joe-biden-throws-in-the-towel/"><img width="380" height="218" src="https://assets.infowars.com/2020/03/GettyImages-1206811778-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/joe-biden-throws-in-the-towel/">Joe Biden Throws In The Towel</a></h3>
							          										<h4 class="entry-subtitle">Alienating entire black community with racist comments not the way to win election</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/special-reports/">
												Special Reports											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/joe-biden-throws-in-the-towel/#vuukle-comments" data-article-id="733736" rel="bookmark" title="Permanent Link to Joe Biden Throws In The Towel"></a></span>
							     </div>
						     </article>
						</div>
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     							          <a href="https://www.infowars.com/birds-and-bees-will-5g-also-kill-humanity/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/birdbee5G9865-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/birds-and-bees-will-5g-also-kill-humanity/">Birds And Bees: Will 5G Also Kill Humanity?</a></h3>
							          										<h4 class="entry-subtitle">Electromagnetic radiation from 5G towers negatively effecting wildlife behaviors</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/special-reports/">
												Special Reports											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/birds-and-bees-will-5g-also-kill-humanity/#vuukle-comments" data-article-id="733680" rel="bookmark" title="Permanent Link to Birds And Bees: Will 5G Also Kill Humanity?"></a></span>
							     </div>
						     </article>
						</div>
																																																			<div class="three-columns">
															<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">
								    <article>
										<div class="article-content">
									    										<h3><a href="https://www.infowars.com/watch-live-if-microsoft-counts-the-votes-does-the-election-matter/">Charlamagne The God &#038; Other Black Liberals Cuck to Joe Biden &#038; Democrat Party</a></h3>
																					<h4 class="entry-subtitle">Tune in and spread the link to the most banned broadcast on the planet!</h4>
																				<div class="category-name">
											<span class="blue-cat"><i class="fa fa-bookmark"></i>
												<a href="https://www.infowars.com/category/special-reports/">
													Special Reports												</a>
											</span>
										</div>
										<span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/watch-live-if-microsoft-counts-the-votes-does-the-election-matter/#vuukle-comments" data-article-id="733464" rel="bookmark" title="Permanent Link to Charlamagne The God &#038; Other Black Liberals Cuck to Joe Biden &#038; Democrat Party"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">
								    <article>
										<div class="article-content">
									    										<h3><a href="https://www.infowars.com/biden-caught-red-handed-in-unprecedented-corruption/">Biden Caught Red-Handed In Unprecedented Corruption</a></h3>
																					<h4 class="entry-subtitle">Will he be held accountable?</h4>
																				<div class="category-name">
											<span class="blue-cat"><i class="fa fa-bookmark"></i>
												<a href="https://www.infowars.com/category/special-reports/">
													Special Reports												</a>
											</span>
										</div>
										<span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/biden-caught-red-handed-in-unprecedented-corruption/#vuukle-comments" data-article-id="733505" rel="bookmark" title="Permanent Link to Biden Caught Red-Handed In Unprecedented Corruption"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">
								    <article>
										<div class="article-content">
									    										<h3><a href="https://www.infowars.com/watch-live-lockdown-day-66-operation-warp-speeds-government-pricks/">Democrats Go Full Tyranny and Demand President Trump Wear a Mask!</a></h3>
																					<h4 class="entry-subtitle">Tune into the most banned broadcast in the world!</h4>
																				<div class="category-name">
											<span class="blue-cat"><i class="fa fa-bookmark"></i>
												<a href="https://www.infowars.com/category/special-reports/">
													Special Reports												</a>
											</span>
										</div>
										<span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/watch-live-lockdown-day-66-operation-warp-speeds-government-pricks/#vuukle-comments" data-article-id="733202" rel="bookmark" title="Permanent Link to Democrats Go Full Tyranny and Demand President Trump Wear a Mask!"></a></span>
									     </div>
								     </article>
								</div>
																</div>
																										</div>

					</section>
				<section class="us-news home-section">
						<div class="heading-wrap">
							<h1>U.S. News</h1><a href="/category/us-news/" title="View Archive" class="view-all">view all&nbsp;&nbsp;<i class="fa fa-long-arrow-right"></i></a>
						</div>
						<hr class="blue-divider">
						<div class="articles-wrap pure-g">
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     								          <a href="https://www.infowars.com/michigan-ag-i-will-not-twiddle-my-thumbs-as-trump-risks-health-safety-of-residents/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/trump398236-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/michigan-ag-i-will-not-twiddle-my-thumbs-as-trump-risks-health-safety-of-residents/">Michigan AG Whines: I Will Not &#8216;Twiddle my Thumbs&#8217; As Trump Risks Health, Safety of Residents</a></h3>
							          										<h4 class="entry-subtitle">Never mind the fact that POTUS is the most medically monitored individual on the planet</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/us-news/">
												U.S. News											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/michigan-ag-i-will-not-twiddle-my-thumbs-as-trump-risks-health-safety-of-residents/#vuukle-comments" data-article-id="733719" rel="bookmark" title="Permanent Link to Michigan AG Whines: I Will Not &#8216;Twiddle my Thumbs&#8217; As Trump Risks Health, Safety of Residents"></a></span>
							     </div>
						     </article>
						</div>
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     								          <a href="https://www.infowars.com/fauci-about-face-prolonged-lockdowns-not-the-way-to-go/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/fauci2349865-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/fauci-about-face-prolonged-lockdowns-not-the-way-to-go/">Fauci About-Face: &#8216;Prolonged&#8217; Lockdowns Not The Way To Go</a></h3>
							          										<h4 class="entry-subtitle">'Now is the time...to begin reopening the economy,' he says</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/us-news/">
												U.S. News											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/fauci-about-face-prolonged-lockdowns-not-the-way-to-go/#vuukle-comments" data-article-id="733702" rel="bookmark" title="Permanent Link to Fauci About-Face: &#8216;Prolonged&#8217; Lockdowns Not The Way To Go"></a></span>
							     </div>
						     </article>
						</div>
																																																			<div class="three-columns">
															<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/slippery-slope-to-despotism-paved-with-lockdowns-raids-and-forced-vaccinations/">Slippery Slope To Despotism: Paved With Lockdowns, Raids, And Forced Vaccinations</a></h3>
									          												<h4 class="entry-subtitle">Government wants to make it clear that we have no rights</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/us-news/">
														U.S. News													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/slippery-slope-to-despotism-paved-with-lockdowns-raids-and-forced-vaccinations/#vuukle-comments" data-article-id="733686" rel="bookmark" title="Permanent Link to Slippery Slope To Despotism: Paved With Lockdowns, Raids, And Forced Vaccinations"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/black-conservatives-joe-bidens-you-aint-black-comment-racist-and-dehumanizing/">Black Conservatives: Joe Biden’s ‘You Ain’t Black’ Comment ‘Racist and Dehumanizing’</a></h3>
									          												<h4 class="entry-subtitle">"The Democrats view black people as trained chimpanzees who should not ask questions."</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/us-news/">
														U.S. News													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/black-conservatives-joe-bidens-you-aint-black-comment-racist-and-dehumanizing/#vuukle-comments" data-article-id="733662" rel="bookmark" title="Permanent Link to Black Conservatives: Joe Biden’s ‘You Ain’t Black’ Comment ‘Racist and Dehumanizing’"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/watch-racist-joe-biden-makes-black-youtuber-cry-all-night/">Watch: Racist Joe Biden Makes Black YouTuber &#8220;Cry All Night&#8221;</a></h3>
									          												<h4 class="entry-subtitle">"All this time I've been walking around thinking I'm black"</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/us-news/">
														U.S. News													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/watch-racist-joe-biden-makes-black-youtuber-cry-all-night/#vuukle-comments" data-article-id="733638" rel="bookmark" title="Permanent Link to Watch: Racist Joe Biden Makes Black YouTuber &#8220;Cry All Night&#8221;"></a></span>
									     </div>
								     </article>
								</div>
																</div>
																										</div>

					</section>


				<section class="world-news home-section">
						<div class="heading-wrap">
							<h1>World News</h1><a href="/category/world-news/" title="View Archive" class="view-all">view all&nbsp;&nbsp;<i class="fa fa-long-arrow-right"></i></a>
						</div>
						<hr class="blue-divider">
						<div class="articles-wrap pure-g">
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     							          <a href="https://www.infowars.com/london-reportedly-set-to-cut-huaweis-role-in-development-of-5g-network-in-uk/"><img width="380" height="218" src="https://assets.infowars.com/2019/08/Huawei-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/london-reportedly-set-to-cut-huaweis-role-in-development-of-5g-network-in-uk/">London Reportedly Set to Cut Huawei’s Role in Development of 5G Network in UK</a></h3>
							          										<h4 class="entry-subtitle">Telecom company essentially a spy operation for Chinese Communist Party</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/world-news/">
												World News											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/london-reportedly-set-to-cut-huaweis-role-in-development-of-5g-network-in-uk/#vuukle-comments" data-article-id="733674" rel="bookmark" title="Permanent Link to London Reportedly Set to Cut Huawei’s Role in Development of 5G Network in UK"></a></span>
							     </div>
						     </article>
						</div>
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     							          <a href="https://www.infowars.com/trump-administration-is-considering-first-nuclear-weapons-test-since-1992/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/GettyImages-1195765597-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/trump-administration-is-considering-first-nuclear-weapons-test-since-1992/">Trump administration is &#8216;considering first nuclear weapons test since 1992</a></h3>
							          										<h4 class="entry-subtitle">Citing threats from Russia and China' - but experts warn it could start an 'unprecedented arms race' and destabilize international relations</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/world-news/">
												World News											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/trump-administration-is-considering-first-nuclear-weapons-test-since-1992/#vuukle-comments" data-article-id="733665" rel="bookmark" title="Permanent Link to Trump administration is &#8216;considering first nuclear weapons test since 1992"></a></span>
							     </div>
						     </article>
						</div>
																																																			<div class="three-columns">
															<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/shocking-moment-mob-of-teenagers-kick-police-officer-and-drag-him-across-the-floor-after-he-challenged-them-for-flouting-lockdown-rules-in-park/">Shocking moment mob of teenagers kick police officer and drag him across the floor after he challenged them for flouting lockdown rules in park</a></h3>
									          												<h4 class="entry-subtitle">A group of young males were reported to be potentially contravening social distancing guidelines</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/world-news/">
														World News													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/shocking-moment-mob-of-teenagers-kick-police-officer-and-drag-him-across-the-floor-after-he-challenged-them-for-flouting-lockdown-rules-in-park/#vuukle-comments" data-article-id="733653" rel="bookmark" title="Permanent Link to Shocking moment mob of teenagers kick police officer and drag him across the floor after he challenged them for flouting lockdown rules in park"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/japanic-tokyo-tourism-tumbles-99-9-in-april/">Japanic! Tokyo Tourism Tumbles 99.9% In April</a></h3>
									          												<h4 class="entry-subtitle">Japan could lift the state of emergency in Tokyo as early as next week, however</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/world-news/">
														World News													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/japanic-tokyo-tourism-tumbles-99-9-in-april/#vuukle-comments" data-article-id="733537" rel="bookmark" title="Permanent Link to Japanic! Tokyo Tourism Tumbles 99.9% In April"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/obamas-ambassador-to-beijing-compares-trump-to-hitler-on-chinese-tv/">Obama&#8217;s Ambassador To Beijing Compares Trump To Hitler On Chinese TV</a></h3>
									          												<h4 class="entry-subtitle">'Joe McCarthy [and] Adolf Hitler…rallied people up, making people believe things that were really not true'</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/world-news/">
														World News													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/obamas-ambassador-to-beijing-compares-trump-to-hitler-on-chinese-tv/#vuukle-comments" data-article-id="733524" rel="bookmark" title="Permanent Link to Obama&#8217;s Ambassador To Beijing Compares Trump To Hitler On Chinese TV"></a></span>
									     </div>
								     </article>
								</div>
																</div>
																										</div>
					</section>

					<section class="economic-crisis home-section">
						<div class="heading-wrap">
							<h1>Economy</h1><a href="/category/economy/" title="View Archive" class="view-all">view all&nbsp;&nbsp;<i class="fa fa-long-arrow-right"></i></a>
						</div>
						<hr class="blue-divider">
						<div class="articles-wrap pure-g">
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     							          <a href="https://www.infowars.com/central-banks-have-created-a-fake-market-bofa/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/WallStGetty52220-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/central-banks-have-created-a-fake-market-bofa/">&#8220;Central Banks Have Created A Fake Market&#8221;: BofA</a></h3>
							          										<h4 class="entry-subtitle">BofA chief asks why anyone would expect stocks to trade rationally</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/economy/">
												Economy											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/central-banks-have-created-a-fake-market-bofa/#vuukle-comments" data-article-id="733604" rel="bookmark" title="Permanent Link to &#8220;Central Banks Have Created A Fake Market&#8221;: BofA"></a></span>
							     </div>
						     </article>
						</div>
																																				<div class="article pure-u-xs-1-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 ">
						     <article>
							     <div class="thumbnail">
							     							          <a href="https://www.infowars.com/the-worst-unemployment-spike-in-u-s-history-1-out-of-every-4-workers-has-filed-for-unemployment-benefits-in-2020/"><img width="380" height="218" src="https://assets.infowars.com/2020/05/GettyImages-154502639-380x218.jpg" class="attachment-medium size-medium wp-post-image" alt="" /></a>
							     </div>
							     <div class="article-content">
							          <h3><a href="https://www.infowars.com/the-worst-unemployment-spike-in-u-s-history-1-out-of-every-4-workers-has-filed-for-unemployment-benefits-in-2020/">The Worst Unemployment Spike In U.S. History – 1 Out Of Every 4 Workers Has Filed For Unemployment Benefits In 2020</a></h3>
							          										<h4 class="entry-subtitle">What we have experienced so far is just the beginning…</h4>
									  								      <div class="category-name">
										<span class="blue-cat"><i class="fa fa-bookmark"></i>
											<a href="https://www.infowars.com/category/economy/">
												Economy											</a>
										</span>
									  </div>
								      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/the-worst-unemployment-spike-in-u-s-history-1-out-of-every-4-workers-has-filed-for-unemployment-benefits-in-2020/#vuukle-comments" data-article-id="733446" rel="bookmark" title="Permanent Link to The Worst Unemployment Spike In U.S. History – 1 Out Of Every 4 Workers Has Filed For Unemployment Benefits In 2020"></a></span>
							     </div>
						     </article>
						</div>
																																																			<div class="three-columns">
															<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/why-an-economy-cant-work-without-market-prices/">Why An Economy Can&#8217;t Work Without Market Prices</a></h3>
									          												<h4 class="entry-subtitle">Prices determined in the marketplace are absolutely essential to a functioning economic system.  This is no less true if today's property was redistributed unjustly in the past. Market prices today are the path to recovery</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/economy/">
														Economy													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/why-an-economy-cant-work-without-market-prices/#vuukle-comments" data-article-id="733349" rel="bookmark" title="Permanent Link to Why An Economy Can&#8217;t Work Without Market Prices"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/past-pandemics-show-the-lockdowns-not-the-virus-caused-our-economic-chaos/">Past Pandemics Show The Lockdowns—Not the Virus—Caused Our Economic Chaos</a></h3>
									          												<h4 class="entry-subtitle">Past experience shows that although pandemics do weaken economic growth, the current economic disaster is the result of forced "lockdowns," not the virus itself</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/economy/">
														Economy													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/past-pandemics-show-the-lockdowns-not-the-virus-caused-our-economic-chaos/#vuukle-comments" data-article-id="733285" rel="bookmark" title="Permanent Link to Past Pandemics Show The Lockdowns—Not the Virus—Caused Our Economic Chaos"></a></span>
									     </div>
								     </article>
								</div>
																																																					<div class="article pure-u-xs-1-1 pure-u-sm-1-3 pure-u-lg-1-3 pure-u-xl-1-3 ">

								    <article>

									     <div class="article-content">
									     									          <h3><a href="https://www.infowars.com/how-government-intervention-triggers-depressions/">How Government Intervention Triggers Depressions</a></h3>
									          												<h4 class="entry-subtitle">Thanks to past interventions, the economy is now rife with malinvestments and prices that don't reflect real demand. The solution is to allow deflation and other types of painful readjustment. Otherwise true growth will elude us</h4>
											  										      <div class="category-name">
												<span class="blue-cat"><i class="fa fa-bookmark"></i>
													<a href="https://www.infowars.com/category/economy/">
														Economy													</a>
												</span>
											  </div>
										      <span class="comment-count"><a class="vuukle-comment-count" href="https://www.infowars.com/how-government-intervention-triggers-depressions/#vuukle-comments" data-article-id="733280" rel="bookmark" title="Permanent Link to How Government Intervention Triggers Depressions"></a></span>
									     </div>
								     </article>
								</div>
																</div>
																										</div>
					</section>
					<div class="load-more-news">
					 	<a href="" class="load-more featured">Load More Stories</a>
					</div>
			</div>
		</div>
		
	</main><!-- #main -->
	<div class="sidebar pure-u-1 pure-u-sm-1 pure-u-lg-1-4 pure-u-xl-1-4">
		
<div id="secondary" class="widget-area" role="complementary">
	<aside id="php_widget-147" class="widget-odd widget-first widget-1 widget php_widget"><h1 class="widget-title-wp">Search</h1><h1 class="widget-title">Search</h1>
<hr class="divider"/>
<div id="search-container">
        <div class="inner-search">
            <form id="header-search" method="get" action="/">
                <div class="input-space">
                                        <input name="s" id="search-query" placeholder="Search for articles" value="" type="text"/>
                </div>
                <button type="submit" id="submit-form" class="btn btn-success">
                    <i class="fa fa-search"></i>
                </button>
            </form>
        </div>
    </div></aside><aside id="php_widget-144" class="widget-even widget-2 widget php_widget"><h1 class="widget-title-wp">Side Hero Ad</h1><style type="text/css">
    #php_widget-131,
    #php_widget-140 {
        padding: 0px;
        margin: 0px;
    }
    #php_widget-104,
    .today-on-the-show-content { 
        margin-bottom: 0px!important;
    }
    .alignleft,
    .alignright {
        margin-top: 1em!important;
    }
    .alignleft {
        margin-right: 0.5em!important;
    }
    .alignright {
        margin-left: 0.5em!important;
    }
    .article-ad {
        margin-right: 0.5em!important;
        margin-top: 1em!important;
        margin-bottom: 0em!important;
    }
    @media (max-width: 768px) {
        img.hero-ad-special {
            width: 100%;
        }
    }
</style>

<div id="side-hero-ad">
</div>
</aside><aside id="php_widget-104" class="widget-odd widget-3 widget php_widget"><h1 class="widget-title-wp">Today on the Show</h1><!-- Meta: WP_Post Object
(
    [ID] => 52413
    [post_author] => 135538
    [post_date] => 2011-01-30 13:26:25
    [post_date_gmt] => 2011-01-30 19:26:25
    [post_content] => <center><a href="http://xml.nfowars.net/Alex.rss" target="_blank" rel="noopener"><strong>Podcast</strong></a> | <a class="listen-now" href="https://streams.infowars.com/listen.pls?sid=1" target="_blank" rel="noopener"><strong>Listen</strong></a> | <a href="https://www.infowars.com/videos"><strong>On Demand</strong></a> | <a href="https://infowars.com/feed/custom_feed_rss"><strong>Archive</strong></a><br>WEEKDAYS 11–3PM AND SUNDAY 4–6PM<br><strong><a href="https://www.infowars.com/how-to-get-the-banned-infowars-podcasts-on-your-mobile-device/" rel="noopener" target="_blank">How To Get The Banned Infowars Podcasts On Your Smartphone</a></strong> - Find out how to subscribe to our shows!
    [post_title] => Today on the Alex Jones Show
    [post_excerpt] => 
    [post_status] => publish
    [comment_status] => open
    [ping_status] => closed
    [post_password] => 
    [post_name] => today-on-the-alex-jones-show
    [to_ping] => 
    [pinged] => 
    [post_modified] => 2019-05-10 15:51:47
    [post_modified_gmt] => 2019-05-10 20:51:47
    [post_content_filtered] => 
    [post_parent] => 0
    [guid] => http://www.infowars.com/
    [menu_order] => 26
    [post_type] => page
    [post_mime_type] => 
    [comment_count] => 0
    [filter] => raw
    [post_category] => 0
)
--><script type="text/javascript">
var content;
content = jQuery.get('/wp-content/uploads/static/tots.html', function(data){
  content = data;
}).done(function() {
  jQuery('.today-on-the-show-content').html(content);
  jQuery('.today-on-the-show-content .today-shorten').expander({
      slicePoint: 168,
      expandText: 'Read More <i class="fa fa-chevron-down"></i>',
      userCollapseText: 'Read Less <i class="fa fa-chevron-up"></i>'
  });
});
</script>
<div class="widget-spacer"></div>
<div id="today-on-the-show-widget">
  <h1 class="widget-title" style="text-align: center;">Listen to the Alex Jones Show &ndash; Here's How</h1>
  <hr class="divider">
  <div class="sidebarbox">
    <div class="today-on-the-show-content"></div>
    <div style="clear:both;"></div>
  </div>
</div>
</aside><aside id="php_widget-146" class="widget-even widget-4 widget php_widget"><h1 class="widget-title-wp">Watch the Show</h1><style type="text/css">
.video-container {
		margin-bottom: 10px;
		position: relative;
		padding-bottom: 56%;
		padding-top: 35px;
		height: 0;
		overflow: hidden;
	}
	.video-container iframe {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
</style>
<div class="show-widget-embed" style="width:100%">
<div class="show-header">
    <a href="/watch-alex-jones-show/">
        <h1>Watch Live Now</h1>
    </a>
</div>
<div class="video-container">
<iframe src="https://api.infowarsmedia.com/embed/5b92a1e6568f22455f55be2b" frameborder="0" allowfullscreen></iframe>
</div></aside><aside id="php_widget-96" class="widget-odd widget-5 widget php_widget"><h1 class="widget-title-wp">Top Stories</h1><div id="top-stories-widget">
	<h1 class="widget-title">Latest Stories</h1>
	<hr class="divider">

	
	<ul class="stansberry_list">
									<li class="stansberry_item">
					<a href="https://www.infowars.com/on-the-eve-of-destruction-the-planet-awakens/" rel="bookmark" title="Permanent Link to On The Eve Of Destruction, The Planet Awakens">On The Eve Of Destruction, The Planet Awakens</a>
				</li>
							<li class="stansberry_item">
					<a href="https://www.infowars.com/fauci-backtracks-as-cuomo-doubles-down/" rel="bookmark" title="Permanent Link to Fauci Backtracks As Cuomo Doubles-Down">Fauci Backtracks As Cuomo Doubles-Down</a>
				</li>
							<li class="stansberry_item">
					<a href="https://www.infowars.com/trump-says-he-may-do-nothing-while-the-election-is-stolen/" rel="bookmark" title="Permanent Link to Trump Says He May Do Nothing While The Election Is Stolen">Trump Says He May Do Nothing While The Election Is Stolen</a>
				</li>
							<li class="stansberry_item">
					<a href="https://www.infowars.com/watch-texans-rally-at-state-capitol-in-protest-of-contact-tracing/" rel="bookmark" title="Permanent Link to Watch: Texans Rally At State Capitol In Protest Of Contact Tracing">Watch: Texans Rally At State Capitol In Protest Of Contact Tracing</a>
				</li>
							<li class="stansberry_item">
					<a href="https://www.infowars.com/bill-maher-regrets-trumps-impeachment-turned-out-to-be-a-horrible-thing/" rel="bookmark" title="Permanent Link to Bill Maher Regrets Trump&#8217;s Impeachment: &#8216;Turned Out To Be A Horrible Thing&#8217;">Bill Maher Regrets Trump&#8217;s Impeachment: &#8216;Turned Out To Be A Horrible Thing&#8217;</a>
				</li>
							<li class="stansberry_item">
					<a href="https://www.infowars.com/joe-biden-throws-in-the-towel/" rel="bookmark" title="Permanent Link to Joe Biden Throws In The Towel">Joe Biden Throws In The Towel</a>
				</li>
						</ul>

</div></aside><aside id="php_widget-132" class="widget-even widget-6 widget php_widget"><h1 class="widget-title-wp">Signup</h1>
<style type="text/css">
	div#newsletter-side-widget {
		padding: 10px;
	}
	div#newsletter-side-widget h1 {
		text-align: center;
	}
	div#newsletter-side-widget hr.divider,
	div#newsletter-side-widget p.subtext {
		margin-bottom: 10px!important;
	}
	div#newsletter-side-widget ul.stansberry-form {
		padding: 15px 25px;
		background-color: #1c1c1c;
	}
	div#newsletter-side-widget ul.stansberry-form li.stansberry-item input[type="submit"],
	div#newsletter-side-widget ul.stansberry-form li.stansberry-item input[type="text"] {
		width: 100%;
		padding: 15px;
	}
	div#newsletter-side-widget ul.stansberry-form li.stansberry-item input[type="text"] {
		margin-bottom: 5px;
	}
	div#newsletter-side-widget ul.stansberry-form li.stansberry-item input[type="submit"] {
		border: 0px;
		color: #fff;
		font-size: 14pt;
		font-weight: 700;
		box-shadow: none;
		text-shadow: none;
		border-radius: 0px;
		background-color: #d31d1d;
	}
	div#newsletter-side-widget ul.stansberry-form li.stansberry-item input,
	div#newsletter-side-widget p.subtext {
		font-family: 'Oswald'!important;
	}
	div#newsletter-side-widget p.subtext {
		text-align: center;
		line-height: 1.5em;
		font-size: 12pt;
	}
	.wpcf7-response {
		padding: 15px;
		font-size: 16pt;
		line-height: 1.5em;
		opacity: 0;
		text-align: center;
		color: #000;
	}
</style>


<div id="newsletter-side-widget">
	<h1 class="widget-title">Get Informed</h1>
	<hr class="divider">
	<p class="subtext">Get the latest breaking news &amp; specials from Alex Jones and the Infowars crew.</p>
	<ul class="stansberry-form">
		<form action="#" method="post" name="mc-embedded-subscribe-form" target="_blank">
			<li class="stansberry-item"><input type="text" name="EMAIL" placeholder="Email Address"/></li>
			<li class="stansberry-item"><input type="submit" name="subscribe" value="SUBSCRIBE"/></li>
		</form>
	</ul>
	<div class="wpcf7-response"></div>
</div>

<script type="text/javascript">
	
	(async () => {

		const submitButton = document.querySelector('.stansberry-form form input[type="submit"]');
		const wpResponse = document.querySelector('.wpcf7-response');

		submitButton.addEventListener('click', async (event) => {
			event.preventDefault();

			const email_address = document.querySelector('.stansberry-form input[name="EMAIL"]');

			try {
				const fd = new FormData();
				fd.append('email', email_address.value);

				const response = await fetch('/mg/internal.php', {
					method: 'POST',
					body: fd
				});

				const json = await response.json();

				if (response.ok) {
					wpResponse.style.opacity = 1;
					wpResponse.innerHTML = 'Thanks for signing up for the Infowars Newsletter! Your signup request has been sent. Please check your email to confirm.';
				}
			}
			catch (error) {
				console.error(error);
			}
		});

	})();

	/*(function ($) {

		$(document).ready(function () {
			$('.stansberry-form form input[type="submit"]').click(function (event) {
				event.preventDefault();
				event.stopPropagation();

				const jwtToken = "";

				var $form = $('.stansberry-form form');
				var fname = $form.find('input[name="FNAME"]').val();
				var lname = $form.find('input[name="LNAME"]').val();
				var email = $form.find('input[name="EMAIL"]').val();

				var your_name = fname;

				const fd = new FormData();
				fd.append('email', email);
				fd.append('MERGE_NAME', your_name);

				if (lname.length > 0) {
					your_name += ' ' + lname;
				}

				fetch('/mg/internal.php', { 
					method: 'POST',
					body: fd
				})
				.then(response => response.json())
				.then(data => {
					if (response.ok) {
						var $resp = $('.wpcf7-response');
						$resp.html('Thanks for signing up for the Infowars Newsletter! Your signup request has been sent. Please check your email to confirm.');
						$resp.animate({opacity: 1}, 350);
					}
				})
				.catch(e => console.error(e));
			});
		});

	})(jQuery);*/
</script>

</aside><aside id="php_widget-97" class="widget-odd widget-7 widget php_widget"><h1 class="widget-title-wp">From the store</h1><div id="store-widget">
	<h1 class="widget-title">Visit Our Store</h1><a href="http://www.infowarsstore.com/" title="Visit Store" class="view-all">Shop Here<i class="fa fa-long-arrow-right"></i></a>
	<hr class="blue-divider">
	<div class="pure-g dynamic-store start s-widget">

		<div class="pure-u-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 store-description">
			<a class="product-title" target="_blank" href="http://store.infowars.com/Survival-Shield-X-2-2-Pack_p_1323.html"><h2></h2></a>
			<span class="grey">Your Price: <span class="your-price"></span></span>
			<span class="red">On Sale: <span class="sale-price"></span></span>
			<!-- <img alt="Free Shipping" class="free-shipping-img" src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/shipping.png" /> -->
			<p class="product-description"></p>
		</div>

		<div class="pure-u-1 pure-u-sm-1-2 pure-u-lg-1-2 pure-u-xl-1-2 store-image">
			<img class="product img-responsive" src="">
			<a target="_blank" class="buy-now product-link" href="http://store.infowars.com/Survival-Shield-X-2-2-Pack_p_1323.html">Buy Now</a>
			<br />
			<a class="learn-more product-info" href="http://store.infowars.com/Survival-Shield-X-2-2-Pack_p_1323.html">Learn More</a>
		</div>
	</div>
</div></aside><aside id="php_widget-98" class="widget-even widget-8 widget php_widget"><h1 class="widget-title-wp">Watch the news</h1></aside><aside id="php_widget-11" class="widget-odd widget-9 widget php_widget"><h1 class="widget-title-wp">ILLUSTRATION</h1><h1 class="widget-title">Illustration</h1>
<hr class="divider"/>
<div class="political-sidebar">
	<div class="rl-gallery-container rl-loading" id="rl-gallery-container-1" data-gallery_id="514059"> <ul class="rl-gallery rl-basicslider-gallery " id="rl-gallery-1" data-gallery_no="1"> <li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/279187_image.jpg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/279187_image-380x218.jpg" width="380" height="218" /></a></li><li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/279173_image.jpg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/279173_image-380x218.jpg" width="380" height="218" /></a></li><li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/279175_image.jpg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/279175_image-380x218.jpg" width="380" height="218" /></a></li><li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/279177_image.jpg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/279177_image-380x218.jpg" width="380" height="218" /></a></li><li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/279181_image.jpg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/279181_image-380x218.jpg" width="380" height="218" /></a></li><li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/279188_image.jpg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/279188_image-380x218.jpg" width="380" height="218" /></a></li><li class="rl-gallery-item"><a href="https://assets.infowars.com/2020/05/EYkpDQmUcAUnTxv.jpeg" title="" data-rl_title="" class="rl-gallery-link" data-rl_caption="" data-rel="lightbox-gallery-1"><img src="https://assets.infowars.com/2020/05/EYkpDQmUcAUnTxv-380x218.jpeg" width="380" height="218" /></a></li> </ul> </div></div></aside><aside id="php_widget-79" class="widget-even widget-last widget-10 widget php_widget"><h1 class="widget-title-wp">Poll</h1><h1 class="polls-title">POLLS</h1>
<hr class="grey-divider">
<div class="sidebarbox">
      <div>
        <div id="polls-1238" class="wp-polls">
	<form id="polls_form_1238" class="wp-polls-form" action="/index.php" method="post">
		<p style="display: none;"><input type="hidden" id="poll_1238_nonce" name="wp-polls-nonce" value="e08c87a6dd" /></p>
		<p style="display: none;"><input type="hidden" name="poll_id" value="1238" /></p>
		<p style="text-align: left;">Researcher David Icke questions whether coronavirus is real, or a hoax. What do you think?</p><div id="polls-1238-ans" class="wp-polls-ans"><ul class="wp-polls-ul">
		<li><input type="radio" id="poll-answer-4936" name="poll_1238" value="4936" /> <label for="poll-answer-4936">It’s real, just overblown.</label></li>
		<li><input type="radio" id="poll-answer-4937" name="poll_1238" value="4937" /> <label for="poll-answer-4937">It’s real, and it’s bad.</label></li>
		<li><input type="radio" id="poll-answer-4938" name="poll_1238" value="4938" /> <label for="poll-answer-4938">It’s fake, a mass hoax to take rights.</label></li>
		<li><input type="radio" id="poll-answer-4939" name="poll_1238" value="4939" /> <label for="poll-answer-4939">It’s probably fake, but hard to be sure.</label></li>
		<li><input type="radio" id="poll-answer-4940" name="poll_1238" value="4940" /> <label for="poll-answer-4940">I don’t know.</label></li>
		</ul><p style="text-align: center;"><input type="button" name="vote" value="   Vote   " class="Buttons" onclick="poll_vote(1238);" onkeypress="poll_result(1238);" /></p><p style="text-align: center;"><a href="#ViewPollResults" onclick="poll_result(1238); return false;" onkeypress="poll_result(1238); return false;" title="View Results Of This Poll">View Results</a></p></div>
	</form>
</div>
      </div>
    </div><br style="clear:both;" />
<hr class="grey-divider">
 </aside></div><!-- #secondary -->
	</div>
</div><!-- #primary -->


	</div><!-- #content -->
	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="container" id="footer-container">
		
 		<div id="footer">
 			<div class="footer-left">
 				<img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/footer-logo.png">
 				<div class="copyright">
 					&copy; 2020 Infowars.com is a Free Speech Systems, LLC Company.<br />
					All rights reserved. <a href="/digital-millennium-copyright-act/">Digital Millennium Copyright Act Notice</a>.
 				</div>
 			</div>
 			<div class="footer-right">
 				<div class="column three">
 					<div class="menu-navigation-footer1-container"><ul id="menu-navigation-footer1" class="menu"><li id="menu-item-216948" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216948"><a href="/listen-on-the-internet/">Radio</a></li>
<li id="menu-item-216939" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216939"><a href="https://www.infowars.com/watch-alex-jones-show/">Video</a></li>
<li id="menu-item-583653" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-583653"><a href="https://www.newswars.com">NewsWars</a></li>
<li id="menu-item-216940" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216940"><a href="http://prisonplanet.tv/">PPTV</a></li>
<li id="menu-item-679326" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-679326"><a href="https://banned.video">Banned.Video</a></li>
<li id="menu-item-216941" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216941"><a href="https://www.infowarsstore.com/">Store</a></li>
<li id="menu-item-216942" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216942"><a href="https://www.infowarsstore.com/health-and-wellness/infowars-life.html">Infowars Life</a></li>
<li id="menu-item-216936" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216936"><a href="https://www.infowars.com/terms-of-service/">T.O.S.</a></li>
</ul></div> 				</div>
 				<div class="column three">
 					<div class="menu-footer-navigation2-container"><ul id="menu-footer-navigation2" class="menu"><li id="menu-item-216943" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216943"><a href="/listen-to-the-radio-show-archive/">Archive</a></li>
<li id="menu-item-656222" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-656222"><a href="https://www.infowars.com/advertise">Advertise</a></li>
<li id="menu-item-216951" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216951"><a href="https://www.infowars.com/watch-alex-jones-show/">Watch Alex Jones Show</a></li>
<li id="menu-item-216944" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216944"><a href="/listen-to-the-radio-show-archive/">Most Recent</a></li>
<li id="menu-item-216945" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216945"><a href="/digital-millennium-copyright-act/">D.M.C.A.</a></li>
<li id="menu-item-375296" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-375296"><a href="https://www.infowars.com/corrections/">Corrections</a></li>
</ul></div> 				</div>
 				<div class="column three">
 					<div class="menu-footer-navigation3-container"><ul id="menu-footer-navigation3" class="menu"><li id="menu-item-216950" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-216950"><a href="https://www.infowars.com/about-alex-jones-show/">About Alex Jones Show</a></li>
<li id="menu-item-216946" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216946"><a href="/newsletter-sign-up/">Subscribe</a></li>
<li id="menu-item-216947" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-216947"><a href="/contact/">Contact</a></li>
</ul></div> 				</div>
 			</div>
 			<div class="mobile-right">
 				<img src="https://www.infowars.com/wp-content/themes/infowars-sitegoals/images/footer-logo.png">
 				<div class="copyright">
 					&copy; 2020 Infowars.com is a Free Speech Systems, LLC Company.<br />
					All rights reserved. Digital Millennium Copyright Act Notice.
 				</div>
 			</div>
 			<div style="clear:both;"></div>
 		</div>
	</footer><!-- #colophon --><br style="clear:both;" />
</div><!-- #page -->
<script type="text/javascript">
  function replace(divid, content) {
    jQuery(divid).html("");
    jQuery(divid).html(jQuery(content).html());
}
</script>
<script type="text/javascript">
var js = document.createElement('script'); js.type = 'text/javascript'; js.async = true; js.id = 'AddShoppers';
js.src = ('https:' == document.location.protocol ? 'https://shop.pe/widget/' : 'http://cdn.shop.pe/widget/') + 'widget_async.js#57363c36bbddbd30ac6bd74f';
document.getElementsByTagName("head")[0].appendChild(js);
</script>
<button id="responsive-menu-button"
        class="responsive-menu-button responsive-menu-boring
        "
        type="button"
        aria-label="Menu">

    
    <span class="responsive-menu-box">
        <span class="responsive-menu-inner"></span>
    </span>

            <span class="responsive-menu-label responsive-menu-label-bottom">
            <span class="responsive-menu-button-text"></span>
                    </span>
    </button><div id="responsive-menu-container" class="slide-left">
    <div id="responsive-menu-wrapper">
                                        <div id="responsive-menu-title">
                    <a href="/" target="_self">
        
        
                    </a>
        
                    <a href="/" target="_self">
        
        Home

                    </a>
            </div>
                                                <ul id="responsive-menu" class=""><li id="responsive-menu-item-217431" class="first-nav menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item responsive-menu-item responsive-menu-current-item"><a href="/" class="responsive-menu-item-link"><i class="fa fa-icon"></i></a></li><li id="responsive-menu-item-216918" class="alex-jones-radio-show-link menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children responsive-menu-item responsive-menu-item-has-children"><a title="Alex Jones Radio Show" href="/watch-alex-jones-show" class="responsive-menu-item-link">Radio Show<div class="responsive-menu-subarrow">▼</div></a><ul class='responsive-menu-submenu responsive-menu-submenu-depth-1'><li id="responsive-menu-item-216949" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/watch-alex-jones-show/" class="responsive-menu-item-link">Watch</a></li><li id="responsive-menu-item-216919" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/about-alex-jones/" class="responsive-menu-item-link">About Alex Jones</a></li><li id="responsive-menu-item-216934" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/listen-to-the-radio-show-archive/" class="responsive-menu-item-link">Radio Show Archive</a></li></ul></li><li id="responsive-menu-item-216953" class=" menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children responsive-menu-item responsive-menu-item-has-children"><a href="https://www.infowars.com/news/" class="responsive-menu-item-link">News<div class="responsive-menu-subarrow">▼</div></a><ul class='responsive-menu-submenu responsive-menu-submenu-depth-1'><li id="responsive-menu-item-216933" class=" menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a href="/category/featured-stories/" class="responsive-menu-item-link">Featured Stories</a></li><li id="responsive-menu-item-216938" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/special-reports/" class="responsive-menu-item-link">Special Reports</a></li><li id="responsive-menu-item-216922" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/us-news/" class="responsive-menu-item-link">U.S. News</a></li><li id="responsive-menu-item-216929" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/world-news/" class="responsive-menu-item-link">World News</a></li><li id="responsive-menu-item-216921" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/economy/" class="responsive-menu-item-link">Economy</a></li><li id="responsive-menu-item-291901" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/government/" class="responsive-menu-item-link">Government</a></li><li id="responsive-menu-item-216928" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/world-at-war/" class="responsive-menu-item-link">World at War</a></li><li id="responsive-menu-item-217396" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/health/" class="responsive-menu-item-link">Health</a></li><li id="responsive-menu-item-216926" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/science-technology/" class="responsive-menu-item-link">Science &#038; Technology</a></li><li id="responsive-menu-item-291902" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/globalism/" class="responsive-menu-item-link">Globalism</a></li><li id="responsive-menu-item-216924" class=" menu-item menu-item-type-taxonomy menu-item-object-category responsive-menu-item"><a href="https://www.infowars.com/category/hot-news/" class="responsive-menu-item-link">Hot News</a></li></ul></li><li id="responsive-menu-item-708166" class=" menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children responsive-menu-item responsive-menu-item-has-children"><a href="https://banned.video" class="responsive-menu-item-link">Videos<div class="responsive-menu-subarrow">▼</div></a><ul class='responsive-menu-submenu responsive-menu-submenu-depth-1'><li id="responsive-menu-item-551317" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/videos/" class="responsive-menu-item-link">Alex Jones</a></li><li id="responsive-menu-item-551318" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/david-knight-show/" class="responsive-menu-item-link">The David Knight Show</a></li><li id="responsive-menu-item-551319" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/war-room/" class="responsive-menu-item-link">War Room</a></li><li id="responsive-menu-item-654893" class=" menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a href="https://www.infowars.com/videos/?channel=5d7a86b1f30956001545dd71" class="responsive-menu-item-link">Paul Joseph Watson</a></li><li id="responsive-menu-item-551315" class=" menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a href="https://www.infowars.com/special-reports" class="responsive-menu-item-link">Special Reports</a></li><li id="responsive-menu-item-551407" class=" menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a href="https://www.infowars.com/video-archive" class="responsive-menu-item-link">Infowars Archive</a></li><li id="responsive-menu-item-679325" class=" menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a href="https://banned.video" class="responsive-menu-item-link">banned.video</a></li></ul></li><li id="responsive-menu-item-216932" class="bold menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a target="_blank" href="https://www.infowarsstore.com/?ims=kpfxf&#038;utm_campaign=Top+Of+Page&#038;utm_source=Infowars&#038;utm_medium=Magento&#038;utm_content=Top+Of+Page" class="responsive-menu-item-link">Store</a></li><li id="responsive-menu-item-216956" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/breaking-news/" class="responsive-menu-item-link">Breaking News</a></li><li id="responsive-menu-item-216957" class=" menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children responsive-menu-item responsive-menu-item-has-children"><a href="https://www.infowars.com/contact/" class="responsive-menu-item-link">Contact<div class="responsive-menu-subarrow">▼</div></a><ul class='responsive-menu-submenu responsive-menu-submenu-depth-1'><li id="responsive-menu-item-467689" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/media-inquiries/" class="responsive-menu-item-link">Media Inquiries</a></li><li id="responsive-menu-item-257826" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/affiliates/" class="responsive-menu-item-link">Affiliates</a></li><li id="responsive-menu-item-656276" class=" menu-item menu-item-type-custom menu-item-object-custom responsive-menu-item"><a href="https://www.infowars.com/advertise" class="responsive-menu-item-link">Advertise</a></li><li id="responsive-menu-item-266306" class=" menu-item menu-item-type-post_type menu-item-object-page responsive-menu-item"><a href="https://www.infowars.com/contributors/" class="responsive-menu-item-link">Contributors</a></li><li id="responsive-menu-item-397438" class=" menu-item menu-item-type-post_type menu-item-object-post responsive-menu-item"><a href="https://www.infowars.com/2017-guide-to-infowars-social-media-v1/" class="responsive-menu-item-link">Social Media</a></li></ul></li></ul>                                                                    <div id="responsive-menu-additional-content"><!--<form id="menu-search" _lpchecked="1"><div class="input-space">
<input name="search-query" id="search-query" type="text" placeholder="Search"></div>
<button type="submit" id="submit-form" class="btn btn-success">
<i class="fa fa-search"></i>
</button></form>--></div>                        </div>
</div>
<link rel='stylesheet' id='responsive-lightbox-gallery-css'  href='https://www.infowars.com/wp-content/plugins/responsive-lightbox/css/gallery.css?ver=2.0.5' type='text/css' media='all' />
<style id='responsive-lightbox-gallery-inline-css' type='text/css'>

					.rl-gallery .rl-gallery-link {
						border: 0px solid #000000;
					}
					.rl-gallery .rl-gallery-link .rl-gallery-item-title {
						color: #ffffff;
					}
					.rl-gallery .rl-gallery-link .rl-gallery-item-caption {
						color: #cccccc;
					}
					.rl-gallery .rl-gallery-link .rl-gallery-caption,
					.rl-gallery .rl-gallery-link:after {
						background-color: rgba( 0, 0, 0, 0.8 );
					}
					[class^="rl-hover-icon-"] .rl-gallery-link:before,
					[class*=" rl-hover-icon-"] .rl-gallery-link:before {
						color: #ffffff;
						background-color: rgba( 0, 0, 0, 0.8 );
					}
				
</style>
<link rel='stylesheet' id='responsive-lightbox-basicslider-gallery-css'  href='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/slippry/slippry.min.css?ver=2.0.5' type='text/css' media='all' />
<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"https:\/\/www.infowars.com\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"},"cached":"1"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var emailL10n = {"ajax_url":"https:\/\/www.infowars.com\/wp-admin\/admin-ajax.php","max_allowed":"5","text_error":"The Following Error Occurs:","text_name_invalid":"- Your Name is empty\/invalid","text_email_invalid":"- Your Email is empty\/invalid","text_remarks_invalid":"- Your Remarks is invalid","text_friend_names_empty":"- Friend Name(s) is empty","text_friend_name_invalid":"- Friend Name is empty\/invalid: ","text_max_friend_names_allowed":"- Maximum 5 Friend Names allowed","text_friend_emails_empty":"- Friend Email(s) is empty","text_friend_email_invalid":"- Friend Email is invalid: ","text_max_friend_emails_allowed":"- Maximum 5 Friend Emails allowed","text_friends_tally":"- Friend Name(s) count does not tally with Friend Email(s) count","text_image_verify_empty":"- Image Verification is empty"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/wp-email/email-js.js?ver=2.67.6'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var pollsL10n = {"ajax_url":"https:\/\/www.infowars.com\/wp-admin\/admin-ajax.php","text_wait":"Your last request is still being processed. Please wait a while ...","text_valid":"Please choose a valid poll answer.","text_multiple":"Maximum number of choices allowed: ","show_loading":"0","show_fading":"0"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/wp-polls/polls-js.js?ver=2.73.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/navigation.js?ver=20120206'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/themes/infowars-sitegoals/js/skip-link-focus-fix.js?ver=20130115'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-includes/js/wp-embed.min.js?ver=4.9.8'></script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/responsive-lightbox/assets/slippry/slippry.min.js?ver=2.0.5'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var rlArgsBasicSliderGallery2 = "{\"adaptive_height\":1,\"loop\":0,\"captions\":\"overlay\",\"init_single\":1,\"responsive\":1,\"preload\":\"visible\",\"pager\":1,\"controls\":1,\"hide_on_end\":1,\"slide_margin\":0,\"transition\":\"fade\",\"kenburns_zoom\":120,\"speed\":800,\"easing\":\"swing\",\"continuous\":1,\"use_css\":1,\"slideshow\":0,\"slideshow_direction\":\"next\",\"slideshow_hover\":1,\"slideshow_hover_delay\":100,\"slideshow_delay\":500,\"slideshow_pause\":3000}";
/* ]]> */
</script>
<script type='text/javascript' src='https://www.infowars.com/wp-content/plugins/responsive-lightbox/js/front-basicslider.js?ver=2.0.5'></script>
<script type="text/javascript" id="slb_context">/* <![CDATA[ */if ( !!window.jQuery ) {(function($){$(document).ready(function(){if ( !!window.SLB ) { {$.extend(SLB, {"context":["public","user_guest"]});} }})})(jQuery);}/* ]]> */</script>
<script>jQuery(document).ready(function($){var ResponsiveMenu ={trigger: '#responsive-menu-button',animationSpeed: 500,breakpoint: 768,pushButton: 'off',animationType: 'slide',animationSide: 'left',pageWrapper: '',isOpen: false,triggerTypes: 'click',activeClass: 'is-active',container: '#responsive-menu-container',openClass: 'responsive-menu-open',accordion: 'off',activeArrow: '▲',inactiveArrow: '▼',wrapper: '#responsive-menu-wrapper',closeOnBodyClick: 'off',closeOnLinkClick: 'off',itemTriggerSubMenu: 'off',linkElement: '.responsive-menu-item-link',subMenuTransitionTime: 200,openMenu: function(){$(this.trigger).addClass(this.activeClass);$('html').addClass(this.openClass);$('.responsive-menu-button-icon-active').hide();$('.responsive-menu-button-icon-inactive').show();this.setButtonTextOpen();this.setWrapperTranslate();this.isOpen = true},closeMenu: function(){$(this.trigger).removeClass(this.activeClass);$('html').removeClass(this.openClass);$('.responsive-menu-button-icon-inactive').hide();$('.responsive-menu-button-icon-active').show();this.setButtonText();this.clearWrapperTranslate();this.isOpen = false},setButtonText: function(){if($('.responsive-menu-button-text-open').length > 0 && $('.responsive-menu-button-text').length > 0){$('.responsive-menu-button-text-open').hide();$('.responsive-menu-button-text').show()}},setButtonTextOpen: function(){if($('.responsive-menu-button-text').length > 0 && $('.responsive-menu-button-text-open').length > 0){$('.responsive-menu-button-text').hide();$('.responsive-menu-button-text-open').show()}},triggerMenu: function(){this.isOpen ? this.closeMenu() : this.openMenu()},triggerSubArrow: function(subarrow){var sub_menu = $(subarrow).parent().siblings('.responsive-menu-submenu');var self = this;if(this.accordion == 'on'){var top_siblings = sub_menu.parents('.responsive-menu-item-has-children').last().siblings('.responsive-menu-item-has-children');var first_siblings = sub_menu.parents('.responsive-menu-item-has-children').first().siblings('.responsive-menu-item-has-children');top_siblings.children('.responsive-menu-submenu').slideUp(self.subMenuTransitionTime, 'linear').removeClass('responsive-menu-submenu-open');top_siblings.each(function(){$(this).find('.responsive-menu-subarrow').first().html(self.inactiveArrow);$(this).find('.responsive-menu-subarrow').first().removeClass('responsive-menu-subarrow-active')});first_siblings.children('.responsive-menu-submenu').slideUp(self.subMenuTransitionTime, 'linear').removeClass('responsive-menu-submenu-open');first_siblings.each(function(){$(this).find('.responsive-menu-subarrow').first().html(self.inactiveArrow);$(this).find('.responsive-menu-subarrow').first().removeClass('responsive-menu-subarrow-active')})}if(sub_menu.hasClass('responsive-menu-submenu-open')){sub_menu.slideUp(self.subMenuTransitionTime, 'linear').removeClass('responsive-menu-submenu-open');$(subarrow).html(this.inactiveArrow);$(subarrow).removeClass('responsive-menu-subarrow-active')}else{sub_menu.slideDown(self.subMenuTransitionTime, 'linear').addClass('responsive-menu-submenu-open');$(subarrow).html(this.activeArrow);$(subarrow).addClass('responsive-menu-subarrow-active')}},menuHeight: function(){return $(this.container).height()},menuWidth: function(){return $(this.container).width()},wrapperHeight: function(){return $(this.wrapper).height()},setWrapperTranslate: function(){switch(this.animationSide){case 'left':translate = 'translateX(' + this.menuWidth() + 'px)';break;case 'right':translate = 'translateX(-' + this.menuWidth() + 'px)';break;case 'top':translate = 'translateY(' + this.wrapperHeight() + 'px)';break;case 'bottom':translate = 'translateY(-' + this.menuHeight() + 'px)';break}if(this.animationType == 'push'){$(this.pageWrapper).css({'transform':translate});$('html, body').css('overflow-x', 'hidden')}if(this.pushButton == 'on'){$('#responsive-menu-button').css({'transform':translate})}},clearWrapperTranslate: function(){var self = this;if(this.animationType == 'push'){$(this.pageWrapper).css({'transform':''});setTimeout(function(){$('html, body').css('overflow-x', '')}, self.animationSpeed)}if(this.pushButton == 'on'){$('#responsive-menu-button').css({'transform':''})}},init: function(){var self = this;$(this.trigger).on(this.triggerTypes, function(e){e.stopPropagation();self.triggerMenu()});$(this.trigger).mouseup(function(){$(self.trigger).blur()});$('.responsive-menu-subarrow').on('click', function(e){e.preventDefault();e.stopPropagation();self.triggerSubArrow(this)});$(window).resize(function(){if($(window).width() > self.breakpoint){if(self.isOpen){self.closeMenu()}}else{if($('.responsive-menu-open').length>0){self.setWrapperTranslate()}}});if(this.closeOnLinkClick == 'on'){$(this.linkElement).on('click', function(e){e.preventDefault();if(self.itemTriggerSubMenu == 'on' && $(this).is('.responsive-menu-item-has-children > ' + self.linkElement)){return}old_href = $(this).attr('href');old_target = typeof $(this).attr('target') == 'undefined' ? '_self' : $(this).attr('target');if(self.isOpen){if($(e.target).closest('.responsive-menu-subarrow').length){return}self.closeMenu();setTimeout(function(){window.open(old_href, old_target)}, self.animationSpeed)}})}if(this.closeOnBodyClick == 'on'){$(document).on('click', 'body', function(e){if(self.isOpen){if($(e.target).closest('#responsive-menu-container').length || $(e.target).closest('#responsive-menu-button').length){return}}self.closeMenu()})}if(this.itemTriggerSubMenu == 'on'){$('.responsive-menu-item-has-children > ' + this.linkElement).on('click', function(e){e.preventDefault();self.triggerSubArrow($(this).children('.responsive-menu-subarrow').first())})}}};ResponsiveMenu.init()});</script><div class="hidden"><div class="dynamic-products">
  <div class="product1">
	  <div class="title">SUPER MALE VITALITY</div>
	  <div class="offer">Limited Advanced Release</div>
	  <div class="price">69.95</div>
	  <div class="discount">41.95</div>
	  <div class="description">The all new and advanced Super Male Vitality formula uses the newest extraction technology with even more powerful concentrations of various herbs and extracts designed to be even stronger.</div>
	  <div class="image">https://assets.infowars.com/2016/03/SuperMale-3.jpg</div>
	  <div class="url">https://www.infowarsstore.com/super-male-vitality?ims=aaloq&utm_campaign=smvmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=smvmemorial</div>
	  <div class="learn-more">https://www.infowarsstore.com/super-male-vitality?ims=aaloq&utm_campaign=smvmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=smvmemorial</div>
  </div>

  <div class="product2">
	  <div class="title">BIO-TRUE SELENIUM</div>
	  <div class="offer"></div>
	  <div class="price">29.95</div>
	  <div class="discount">11.98</div>
	  <div class="description">Never synthetic, Infowars Life Bio-True Selenium™ is extracted from 100% certified organic mustard seed, functions as a powerful antioxidant and supports a healthy thyroid and immune system.*</div>
	  <div class="image">https://assets.infowars.com/2020/05/seleniumthumb.jpg</div>
	  <div class="url">https://www.infowarsstore.com/bio-true-selenium?ims=wlzhf&utm_campaign=btsmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=btsmemorial</div>
	  <div class="learn-more">https://www.infowarsstore.com/bio-true-selenium?ims=wlzhf&utm_campaign=btsmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=btsmemorial</div>
  </div>

  <div class="product3">
	  <div class="title">DNA FORCE PLUS</div>
	  <div class="offer"></div>
	  <div class="price">149.95</div>
	  <div class="discount">74.75</div>
	  <div class="description">A powerful formula to boost your defenses and change your life while supporting the Infowars Crew - 50% off for a limited time!</div>
	  <div class="image">https://assets.infowars.com/2020/04/dnathumbnail-og.png</div>
	  <div class="url">https://www.infowarsstore.com/dna-force-plus?ims=cbyfe&utm_campaign=dna50&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=dna50</div>
	  <div class="learn-more">https://www.infowarsstore.com/dna-force-plus?ims=cbyfe&utm_campaign=dna50&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=dna50</div>
  </div>

  <div class="product4">
	  <div class="title">CHILL FORCE</div>
	  <div class="offer"></div>
	  <div class="price">39.95</div>
	  <div class="discount">15.98</div>
	  <div class="description">Life is stressful. Get Chill Force. Support your body’s natural systems in the fight against stress & help return to a state of healthy relaxation. </div>
	  <div class="image">https://assets.infowars.com/2019/09/chillforce-front-1.jpg</div>
	  <div class="url">https://www.infowarsstore.com/chill-force?ims=lkoie&utm_campaign=cfmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=cfmemorial</div>
	  <div class="learn-more">https://www.infowarsstore.com/chill-force?ims=lkoie&utm_campaign=cfmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=cfmemorial</div>
  </div>

  <div class="product5">
	  <div class="title">KNOCKOUT</div>
	  <div class="offer"></div>
	  <div class="price">29.96</div>
	  <div class="discount">14.95</div>
	  <div class="description">Infowars KNOCKOUT is the incredible sleep aid support supplement by Infowars Life that packs a powerful punch with ingredients to help you sleep better, faster.</div>
	  <div class="image">https://assets.infowars.com/2020/05/knockoutthumb.jpg</div>
	  <div class="url">https://www.infowarsstore.com/knockout-sleep-support?ims=qkeot&utm_campaign=komemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=komemorial</div>
	  <div class="learn-more">https://www.infowarsstore.com/knockout-sleep-support?ims=qkeot&utm_campaign=komemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=komemorial</div>
  </div>

  <div class="product6">
	  <div class="title">BRAIN FORCE PLUS</div>
	  <div class="offer"></div>
	  <div class="price">39.95</div>
	  <div class="discount">19.95</div>
	  <div class="description">Flip the switch and supercharge your state of mind!</div>
	  <div class="image">https://assets.infowars.com/2019/12/brainforceplusthumbnail.jpg</div>
	  <div class="url">https://www.infowarsstore.com/brain-force?ims=ojrer&utm_campaign=bfpmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=bfpmemorial</div>
	  <div class="learn-more">https://www.infowarsstore.com/brain-force?ims=ojrer&utm_campaign=bfpmemorial&utm_source=Infowars+Widget&utm_medium=Banner&utm_content=bfpmemorial</div>
  </div>

</div></div>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"0fc1bd6d66","applicationID":"202412212","transactionName":"ZABbYkVVVhcCBUwNV11KeFVDXVcKTA5XCV0=","queueTime":0,"applicationTime":4608,"atts":"SEdYFA1PRRk=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>

<!--
Performance optimized by W3 Total Cache. Learn more: https://www.w3-edge.com/products/

Object Caching 682/700 objects using memcached
Page Caching using memcached 

Page cache debug info:
Engine:             memcached
Cache key:          0e7df404439b86cbc5b5d088675d4c6c_ssl
Creation Time:      1590270754.000s
Header info:
Content-Type:        text/html; charset=UTF-8
Link:                <https://www.infowars.com/wp-json/>; rel="https://api.w.org/"
Access-Control-Allow-Origin:  //disqus.com

Content Delivery Network Full Site Delivery via cloudflare
Database Caching 23/48 queries in 2.776 seconds using memcached
Fragment Caching 1/1 fragments using memcached

Served from: www.infowars.com @ 2020-05-23 16:52:34 by W3 Total Cache
-->