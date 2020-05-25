<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" lang="en-US">
    <head>
        <!-- Piano ad blocker -->
        <script>
            document.cookie = "__adblocker=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
            var setNptTechAdblockerCookie = function(adblocker) {
                var d = new Date();
                d.setTime(d.getTime() + 60 * 60 * 24 * 2 * 1000);
                document.cookie = "__adblocker=" + (adblocker ? "true" : "false") + "; expires=" + d.toUTCString() + "; path=/";
            }
            var script = document.createElement("script");
            script.setAttribute("async", true);
            script.setAttribute("src", "//www.npttech.com/advertising.js");
            script.setAttribute("onerror", "setNptTechAdblockerCookie(true);");
            document.getElementsByTagName("head")[0].appendChild(script);
        </script>
        <!-- End Piano ad blocker -->

        <meta charset="utf-8"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"f5b9626936",applicationID:"224917688"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e("handle"),a=e(4),f=e(5),c=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",d=l+"ixn-";a(p,function(e,n){s[n]=i(l+n,!0,"api")}),s.addPageAction=i(l+"addPageAction",!0),s.setCurrentRouteName=i(l+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i="function"==typeof n;return o(d+"tracer",[u.now(),e,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],t),e}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){"first-paint"===e.name?c("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&c("timing",["fcp",Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length>0&&c("lcp",[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t>1e12?Date.now()-t:u.now()-t,l=!0,c("timing",["fi",t,{type:e.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e("handle"),u=e("loader"),s=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:["paint"]}),f.observe({entryTypes:["largest-contentful-paint"]})}catch(p){}}if("addEventListener"in document){var l=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r="",o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i<0?0:i);++r<i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f="nr@context",c=e("gos"),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e("ee").get("handle");n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function i(){"complete"===d.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e("handle"),u=e(4),s=e("ee"),p=e(3),l=window,d=l.document,m="addEventListener",v="attachEvent",g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m]("DOMContentLoaded",o,!1),l[m]("load",r,!1)):(d[v]("onreadystatechange",i),l[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=e(6)},{}],"wrap-function":[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){l([u,"",[r,a,i],f])}s(n+"start",[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+"err",[r,a,p],f),p}finally{s(n+"end",[r,a,c],f)}}return r(e)?e:(n||(n=""),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit("internal-error",n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Foreign Policy &#8211; the Global Magazine of News and Ideas</title>

        <meta name="wapoGroupsX" content="default">
        <meta name="google-site-verification" content="7Z5A6Xlt7BhqqooipJUtw0cu2IjSQ-_RnNbEA2c6pfc">
        <meta name="apple-itunes-app" content="app-id=1034756405">
        <meta name="pocket-site-verification" content="21de1071947281ccc893fa0bbfb1f6" />
        
                <!-- CANONICAL -->
        <link rel="canonical" href="https://foreignpolicy.com">

                    <!-- FB Tags -->
            <meta property="og:title" content="">
            <meta property="og:image" content="https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg">
            <meta property="og:url" content="https://foreignpolicy.com">
            <meta property="og:description" content="">
            <meta property="og:site_name" content="Foreign Policy">
            <meta property="fb:app_id" content="107151292643652" />
            <meta property="og:type" content="article" />

            <!-- Twitter Tags -->
            <meta name="twitter:card" content="summary_large_image">
            <meta name="twitter:site" content="@ForeignPolicy">
            <meta name="twitter:title" content="">
            <meta name="twitter:description" content="">
            <meta name="twitter:image" content="https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg">
            <meta property="twitter:domain" value="foreignpolicy.com"/>

            <!-- Author Tags -->
            <meta property="article:author" content="Sumit Ganguly, Manjeet S. Pardesi">
            <meta name="author" content="Sumit Ganguly, Manjeet S. Pardesi">

        
                
        

        <!-- Preload fonts -->
        <link rel="preload" href="/wp-content/themes/foreign-policy-2017/assets/dist/fonts/tiempos--normal--600.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="/wp-content/themes/foreign-policy-2017/assets/dist/fonts/dala-moa--normal--800.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="/wp-content/themes/foreign-policy-2017/assets/dist/fonts/solido--normal--400.woff2" as="font" type="font/woff2" crossorigin>
        <link rel="preload" href="/wp-content/themes/foreign-policy-2017/assets/dist/fonts/tiempos--normal--400.woff2" as="font" type="font/woff2" crossorigin>
        

        <meta
    name="application-name"
    content="Foreign Policy">
<meta
    name="apple-mobile-web-app-title"
    content="Foreign Policy">
<meta name="theme-color" content="#eb372e">
<meta name="msapplication-TileColor" content="#eb372e">
<meta
    name="msapplication-TileImage"
    content="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/logos/favicon-256.png">
<link
    rel="apple-touch-icon"
    sizes="192x192"
    type="image/png"
    href="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/logos/favicon-192.png">
<link
    rel="icon"
    sizes="192x192"
    type="image/png"
    href="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/logos/favicon-192.png">
<link
    rel="icon"
    sizes="16x16 32x32"
    type="image/x-icon"
    href="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/logos/favicon.ico">
        <script>
    window.FP = window.FP || {};
    FP.Config = {"api":{"ip_access":"https:\/\/foreignpolicy.com\/r\/api\/ip-access\/","link_access":"https:\/\/foreignpolicy.com\/r\/api\/link-access\/{0}\/","users_by_id":"https:\/\/foreignpolicy.com\/r\/api\/users\/{0}\/"},"context":{"is_home":true,"is_sponsored":false,"is_events":false,"is_chinadaily":false},"current_site_admin_hostname":"foreignpolicy.com","current_site_hostname":"foreignpolicy.com","fonts":[{"family":"Dala Moa","option":{"style":"normal","weight":800}},{"family":"Solido","option":{"style":"normal","weight":400}},{"family":"Tiempos","option":{"style":"normal","weight":400}},{"family":"Tiempos","option":{"style":"normal","weight":600}}],"is_production":true,"marketing":{"after_content_messaging":"<p>Like this article? Read an unlimited number of articles, plus access to our entire 47-year printed archive, the FP App, and the Digital Magazine when you <strong><a href=\"https:\/\/foreignpolicy.com\/subscribe?utm_source=AMP%20-%20Launched%2018_08_23&amp;utm_medium=AMP&amp;utm_campaign=Premium\">subscribe to FP Premium<\/a><\/strong>!<\/p>","after_content_messaging_fbia":"<p>Like this article? Read an unlimited number of articles, plus access to our entire 47-year printed archive, the FP App, and the Digital Magazine when you <strong><a href=\"https:\/\/foreignpolicy.com\/subscribe?utm_source=FBIA%20-%20Launched%2018_09_04&amp;utm_medium=FBIA&amp;utm_campaign=Premium\">subscribe to FP Premium<\/a><\/strong>!<\/p>"},"misc":{"current_magazine_issue":{"isset":true,"link":"https:\/\/foreignpolicy.com\/the-magazine\/"}},"referrers":["google.com"],"user":{"login_url":"https:\/\/fp-reg.onecount.net\/onecount\/login\/loginlogout.cgi","logout_url":"https:\/\/fp-reg.onecount.net\/onecount\/login\/loginlogout.cgi","edit_profile_url":"https:\/\/fp-reg.onecount.net\/onecount\/flexreg\/displayform.php?g=0&form=387","registration_url":"http:\/\/fp-reg.onecount.net\/onecount\/flexreg\/displayform.php?form=137&brand=fp","customer_service_url":"https:\/\/subscribe.foreignpolicy.com\/FRP\/?f=custcare","view_count_limit":null,"paywall_resource_id":null,"registration_product_ids":[34],"subscription_product_ids":[26,235],"premium_product_ids":[145],"newsletter_ids":[177,185,129,161,227,317]},"widgets":[]};
    window.lazySizesConfig = window.lazySizesConfig || {};
    lazySizesConfig = {"lazyClass":"-lazy","preloadClass":"-preloaded","loadingClass":"-loading","loadedClass":"-loaded"};
</script>
<link rel='dns-prefetch' href='//ajax.googleapis.com' />
<link rel='dns-prefetch' href='//cdn.taboola.com' />
<link rel='dns-prefetch' href='//polarcdn-terrax.com' />
<link rel='dns-prefetch' href='//s.w.org' />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/12.0.0-1\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/foreignpolicy.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.4.1"}};
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
	<link rel='stylesheet' id='all-css-0' href='https://foreignpolicy.com/_static/??-eJytk8FqxDAMRH+oWiWFEnoo/ZRFsbWJG9kyltIlf9/skltvbW5CzLwRA8J7hVSCrJENgxnGZI6jaFhA0tiobWi+CV9yKpdd8IK7I2hxLo4+c959N22cpgJVJYUNXrt+QDJjP3BPgOFIxnjN9G9Q0Fy17D5Dm6lxPJs6M0VuZ1Or7uuzL9V8eqeZCk2nU2+q/pdOzclTOIAzPxIoGpBwcwMeVReotN1JBJwW1m9uBlnHJAwUrzlZAOGJwvYrNq9QZZ1SMfxirxSW5w8c80P+mT/6t/euG4Z+6H8AYTYubQ==' type='text/css' media='all' />
<style id='wp-block-library-inline-css'>
.has-text-align-justify{text-align:justify;}
</style>
<script type="application/javascript">var googletag=googletag||{};googletag.cmd=googletag.cmd||[];googletag.cmd.push(	function(){googletag.pubads().disableInitialLoad()});</script><script src='https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js'></script>
<script type='text/javascript' src='https://foreignpolicy.com/_static/??-eJytkdFuwjAMRX9oqWEoKy/TvsVN3DZVYkdxKKJfT0B73QNlb1eW7rF8DNdsnHAlrlBnSqQwSqEwsckSg7uZz8OxB1SlqqDFgboScssrsZcCpF8mF0lBqcNLlW7RD3gXOrbyiI5kUCorlU4rsscoTO/xf0cPvr5AautrcLAozDVFq3NYd7ULaRb2u7pTlAHjv+iNuN00bPSKgr9pmHATNkPwPvC06zYsriklo/RIpmm6xOeDftL30Z5tb0+n3i53hc/8Fw=='></script>
<link rel='https://api.w.org/' href='https://foreignpolicy.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://foreignpolicy.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://foreignpolicy.com/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 5.4.1" />
<link rel='shortlink' href='http://atfp.co/1JCMpE7' />
<style type='text/css'>img#wpstats{display:none}</style>		<style>
		.getty.alignleft {
			margin-right: 5px;
		}
		.getty.alignright {
			margin-left: 5px;
		}
		</style>
		<link rel="icon" href="https://foreignpolicy.com/wp-content/uploads/2017/12/cropped-favicon-512_2017.png?w=32" sizes="32x32" />
<link rel="icon" href="https://foreignpolicy.com/wp-content/uploads/2017/12/cropped-favicon-512_2017.png?w=192" sizes="192x192" />
<link rel="apple-touch-icon" href="https://foreignpolicy.com/wp-content/uploads/2017/12/cropped-favicon-512_2017.png?w=180" />
<meta name="msapplication-TileImage" content="https://foreignpolicy.com/wp-content/uploads/2017/12/cropped-favicon-512_2017.png?w=270" />

        

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-6874192-41"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    // Add additional data for GA / GTM
    dataLayer.push({
        'author': "",
        'category': "", 
        'datePublished': "2020-05-23",
        'editor': "",
        'region': "",
        'tags': "", 
        'vertical': "",
        'pageType': "Homepage",
        'inMagazine': "",
        // Values below defined after OC JS runs
        'accessId': "",
        'accessGroup': "",
        'subscriberState': ""
    });

    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    // Remove for now - gtag('config', 'UA-6874192-41');

    // GA set config and WP post content group
    // GA track page group -  syntax: gtag('config', 'GA_TRACKING_ID', {'content_group5': '/news/sports'});
    if ('undefined' !== typeof realReferer && '' !== document.referrer && realReferer !== document.referrer) {
        // ONECount tracking override
        dataLayer.push({
            'dimension2': 'LID',
            'dimension3': 'RGRP',
            'dimension4': 'VID',
            'realReferer': realReferer,
            // track category as content group, may be replaced by dataLayer below
            'content_group1': ""        });
    } else {
        // Standard tracking
        dataLayer.push({
            'dimension2': 'LID',
            'dimension3': 'RGRP',
            'dimension4': 'VID',
            // track category as content group, may be replaced by dataLayer below
            'content_group1': ""        });
    }
</script>

        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-KVBCHJC');</script>
        <!-- End Google Tag Manager -->

        
                    </head>
    <body class="home blog site-root">

        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KVBCHJC"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->

        <div id="site-wrapper">            <header class="site-header">
                <a href="https://foreignpolicy.com/" class="logo">
    <svg class="site-icon -inline -textonly" width="75" height="47.5" viewBox="0 0 75 47.5"><path fill="#EE3524" d="M39.4,8.7H40V0.5H0v0.8c4.5,0.2,7.4,0.8,7.4,4.9v36c0,4.2-2.9,4.8-7.4,4.9V48h26.2v-0.8c-5.2-0.3-9-0.8-9-4.9
		V25.2h8.7c3,0,4.2,2.2,4.9,6.2h0.5V18h-0.5c-0.7,4-1.9,6.2-4.9,6.2h-8.7V1.3h13.3C35.9,1.3,37.7,2.8,39.4,8.7 M52.9,25.2h6.2
		c11.1,0,15.9-5.8,15.9-13.1c0-6.4-4.5-11.7-17.3-11.7H40.9l0,41.8c0,4.2-2.9,4.8-7.4,4.9V48h27.3v-0.8c-5.2-0.3-9-0.8-9-4.9V1.5
		h3.4c6.1,0,9.5,5.5,9.5,12c0,7.5-3.5,10.8-9.6,10.8h-2.4V25.2z"/></svg><!--hide-mobile-->
<!--svg class="site-icon -inline -textonly hide-desktop" width="75" height="47.5" viewBox="0 0 75 47.5"><path fill="#FFFFFF" d="M39.4,8.7H40V0.5H0v0.8c4.5,0.2,7.4,0.8,7.4,4.9v36c0,4.2-2.9,4.8-7.4,4.9V48h26.2v-0.8c-5.2-0.3-9-0.8-9-4.9
		V25.2h8.7c3,0,4.2,2.2,4.9,6.2h0.5V18h-0.5c-0.7,4-1.9,6.2-4.9,6.2h-8.7V1.3h13.3C35.9,1.3,37.7,2.8,39.4,8.7 M52.9,25.2h6.2
		c11.1,0,15.9-5.8,15.9-13.1c0-6.4-4.5-11.7-17.3-11.7H40.9l0,41.8c0,4.2-2.9,4.8-7.4,4.9V48h27.3v-0.8c-5.2-0.3-9-0.8-9-4.9V1.5
		h3.4c6.1,0,9.5,5.5,9.5,12c0,7.5-3.5,10.8-9.6,10.8h-2.4V25.2z"/></svg-->    <span class="hide">Foreign Policy Magazine</span>
</a>

                <div class="header-nav-wrapper">
                    <nav class="header-nav">
                        <div class="header-mobile-subnav">
                            <ul class="manage-account account">
                                <li class="header-menu-item">
                                    <a href="#" class="navlink -top -user -signin FP-paywall--login">Sign In</a>
                                </li>
                                <li class="header-menu-item subscribe-link">
                                    <a href="/subscribe" class="navlink -top -user -emph subscribe-prompt">
                                        <span class="subscribe--long">Subscribe</span>
                                        <span class="subscribe--short">Subscribe</span>
                                    </a>
                                    <a href="/subscribe" class="navlink -top -user -emph upgrade-to-insider-prompt">
                                        <span class="subscribe--long">Upgrade to Insider</span>
                                        <span class="subscribe--short">Upgrade to Insider</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="header-nav-main">
                            <ul class="header-menu -top">
                                <li class="header-menu-item hide-desktop">
                                    <a href="/category/latest/" class="navlink red">Latest</a>
                                </li>
                                <li class="header-menu-item">
                                    <a href="/channel/news/" class="navlink">News</a>
                                </li>
                                <li class="header-menu-item">
                                    <a href="/channel/analysis/" class="navlink">Analysis</a>
                                </li>
                                <li class="header-menu-item">
                                    <a href="/podcasts/" class="navlink">Podcasts</a>
                                </li>
                                <li class="header-menu-item">
                                    <a href="/the-magazine/" class="navlink">The Magazine</a>
                                </li>
                                <li class="header-menu-item -parent">
                                    <a class="navlink">Channels</a>
                                    <ul class="header-menu -top">
                                        <li class="header-menu-item"><a href="/channel/economics/" class="navlink">Economics</a></li>
                                        <li class="header-menu-item"><a href="/channel/security-2/" class="navlink">Security</a></li>
                                        <li class="header-menu-item"><a href="/category/elephants-in-the-room/" class="navlink">Elephants in the Room</a></li>
                                        <li class="header-menu-item"><a href="/category/shadow-government/" class="navlink">Shadow Government</a></li>
                                        <li class="header-menu-item"><a href="/channel/her-power/" class="navlink">Her Power</a></li>
                                    </ul>
                                    <span class="close-nav">
                                        <img draggable="false" class="emoji" alt="❌" src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/close.svg" />&nbsp;&nbsp;Close
                                    </span>
                                </li>
                                <li class="header-menu-item">
                                    <a href="/newsletters/" class="navlink">Newsletters</a>
                                </li>
                            </ul>

                            <div class="header-insider-menu">
                                <p><a href="/fpinsider/" class="red"><span class="insider-only-text hide">Your </span>FP Insider Access:</a></p>
                                <ul>
                                    <li><a href="/power-maps">Power Maps</a></li>
                                    <li><a href="/conference-calls">Conference Calls</a></li>
                                    <li><a href="/special-reports">Special Reports</a></li>
                                    <li><a href="/podcasts/ispy">I Spy Plus</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="header-mobile-subnav">
                            <div class="expando-search">
    <div class="icon">
        <svg viewBox="0 0 18 18">
	<circle class="search-icon" cx="7.5" cy="7.3" r="6.5"/>
	<line class="search-icon" x1="12.1" y1="11.9" x2="17.5" y2="17.3"/>
</svg>    </div>
        <form role="search" method="get" id="searchform-mobile" class="searchform" action="/">
    	<label class="hide" for="searchfield-mobile">Search</label>
    	<input class="search" type="search" name="s" id="searchfield-mobile" />
    	<input type="submit" value="search-submit" style="display:none" />
    </form>
</div>
                                                        <div class="latest-posts-nav">
                                <h2 class="title">latest</h2>
                                <div class="grid--container">
                                    <div class="grid--flex no-border grid__fourth">
                                                                                <div>
                                            <div class="excerpt-content -noimage">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/">
    <h3 class="hed">Why We Should Worry About China and India’s Border Skirmishes</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Three decades ago, the two countries reached an understanding not to fight. But Beijing is now a much stronger power.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/sumit-ganguly/"
        rel="author"
        class="author">
    Sumit Ganguly</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/manjeet-s-pardesi/"
        rel="author"
        class="author">
    Manjeet S. Pardesi</a></address>

</div>
</div>
                                        </div>
                                                                                <div>
                                            <div class="excerpt-content -noimage">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/united-states-trump-administration-economic-stimulus-coronavirus-pandemic/">
    <h3 class="hed">Why the White House Should Propose More Economic Stimulus</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">While a wait-and-see approach is usually wise, unusual times require unusual playbooks, writes a former Trump administration economic advisor. </p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/joseph-w-sullivan/"
        rel="author"
        class="author">
    Joseph W. Sullivan</a></address>

</div>
</div>
                                        </div>
                                                                                <div>
                                            <div class="excerpt-content -noimage">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/coronavirus-pandemic-israel-us-china-trade/">
    <h3 class="hed">Our Top Weekend Reads</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Volodymyr Zelensky’s first year in office, the new Iraqi prime minister is choosing reform over revolution, and the challenges facing Israel’s new government.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/five-reads/"
        class="department-name -excerpt">
        5 Top Reads    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/dan-haverty/"
        rel="author"
        class="author">
    Dan Haverty</a></address>

</div>
</div>
                                        </div>
                                                                                <div>
                                            <div class="excerpt-content -noimage">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/beijing-has-lit-hong-kongs-funeral-pyre/">
    <h3 class="hed">Beijing Has Lit Hong Kong’s Funeral Pyre</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Hong Kongers will fight the imposition of mainland security measures fiercely, but alone.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jack-hazlewood/"
        rel="author"
        class="author">
    Jack Hazlewood</a></address>

</div>
</div>
                                        </div>
                                                                            </div>
                                </div>
                                <div class="read-more">
                                    <a href="/category/latest/">See All Stories</a>
                                </div>
                            </div>

                            <div class="header-footer-nav">
                                <span>
                                    <ul id="menu-footer-column-1" class="mobile-subnav-menu"><li id="menu-item-783354" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-783354 header-menu-item"><a href="https://foreignpolicy.com/staff/" class="navlink">Meet the Staff</a></li>
<li id="menu-item-988928" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-988928 header-menu-item"><a href="https://foreignpolicy.com/events" class="navlink">FP Events</a></li>
<li id="menu-item-993024" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-993024 header-menu-item"><a href="https://foreignpolicy.com/fp-analytics/" class="navlink">FP Analytics</a></li>
<li id="menu-item-1002749" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1002749 header-menu-item"><a href="https://foreignpolicy.com/fp-peacegames/" class="navlink">FP PeaceGames</a></li>
</ul><ul id="menu-footer-column-2" class="mobile-subnav-menu"><li id="menu-item-993038" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-993038 header-menu-item"><a href="https://foreignpolicy.com/subscription-services/" class="navlink">Subscription Services</a></li>
<li id="menu-item-988929" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-988929 header-menu-item"><a href="https://foreignpolicy.com/reprint-permissions/" class="navlink">Reprint Permissions</a></li>
<li id="menu-item-939400" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-939400 header-menu-item"><a href="https://foreignpolicy.submittable.com/submit" class="navlink">Writer&#8217;s Guidelines</a></li>
<li id="menu-item-1002750" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1002750 header-menu-item"><a href="/employment-opportunities/" class="navlink">Work at FP</a></li>
</ul>                                </span>
                                <span>
                                    <ul id="menu-footer-column-3" class="mobile-subnav-menu"><li id="menu-item-927960" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-927960 header-menu-item"><a href="https://fpguide.foreignpolicy.com/2020-career" class="navlink">FP Guides &#8211; Graduate Education</a></li>
<li id="menu-item-996597" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-996597 header-menu-item"><a href="https://foreignpolicy.com/fp-for-education/" class="navlink">FP For Education</a></li>
<li id="menu-item-660886" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-660886 header-menu-item"><a href="/magazine" class="navlink">FP Archive</a></li>
<li id="menu-item-660961" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-660961 header-menu-item"><a href="https://foreignpolicy.com/buy-back-issues/" class="navlink">Buy Back Issues</a></li>
</ul><ul id="menu-footer-column-4" class="mobile-subnav-menu"><li id="menu-item-993026" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-993026 header-menu-item"><a href="https://foreignpolicy.com/advertise-with-foreign-policy/" class="navlink">Advertise with FP</a></li>
<li id="menu-item-988932" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-988932 header-menu-item"><a href="https://foreignpolicy.com/privacy/" class="navlink">Privacy Policy</a></li>
<li id="menu-item-660967" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-660967 header-menu-item"><a href="https://foreignpolicy.com/contact-us/" class="navlink">Contact Us</a></li>
</ul>                                </span>
                            </div>
                        </div>

                    </nav>
                </div>

                <div class="header-subnav-wrapper">
                    <nav class="header-subnav">
                        <ul class="header-menu -top">
                            <li class="header-menu-item">
                                <a href="#" class="navlink -top -user -signin FP-paywall--login">Sign In</a>
                            </li>
                            <li class="header-menu-item subscribe-link">
                                <a href="/subscribe" class="navlink -top -user -emph subscribe-prompt">
                                    <span class="subscribe--long">Subscribe</span>
                                    <span class="subscribe--short">Subscribe</span>
                                </a>
                                <a href="/subscribe" class="navlink -top -user -emph upgrade-to-insider-prompt">
                                    <span class="subscribe--long">Upgrade to Insider</span>
                                    <span class="subscribe--short">Upgrade</span>
                                </a>
                            </li>
                        </ul>

                        <div class="expando-search">
    <div class="icon">
        <svg viewBox="0 0 18 18">
	<circle class="search-icon" cx="7.5" cy="7.3" r="6.5"/>
	<line class="search-icon" x1="12.1" y1="11.9" x2="17.5" y2="17.3"/>
</svg>    </div>
        <form role="search" method="get" id="searchform-desktop" class="searchform" action="/">
    	<label class="hide" for="searchfield-desktop">Search</label>
    	<input class="search" type="search" name="s" id="searchfield-desktop" />
    	<input type="submit" value="search-submit" style="display:none" />
    </form>
</div>
                    </nav>
                </div>
                
                <button class="hamburger-button">
    <span class="line"></span>
    <span class="hide">Toggle display of website navigation</span>
</button>

                                <div class="header-alt-layout__title">
                    <p class="header-alt-title">
                                                <span class="department-title">
                            Argument:
                        </span>
                                                <span class="header-alt-title__desktop">
                            Why We Should Worry About China and India’s Border Skirmishes                        </span>
                        <span class="header-alt-title__mobile">
                            Why We Should Worry About China and India’...                        </span>
                    </p>
                    <div class="header-social-shares">
                        <span class="share-title">SHARE:</span>
                        <a data-endpoint="facebook" data-title="" data-text="" data-url="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/" onclick="socialshares.share(this);">
                            <img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/facebook_blue.svg" alt="Share on Facebook" class="facebook-button" />
                        </a>
                        <a data-endpoint="twitter" data-title="" data-text="" data-url="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/" onclick="socialshares.share(this);">
                            <img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/twitter_blue.svg" alt="Share on Twitter" class="twitter-button" />
                        </a>
                        <a data-endpoint="linkedin" data-title="" data-text="" data-url="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/" onclick="socialshares.share(this);">
                            <img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/linkedin_blue.svg" alt="Share on LinkedIn" class="linkedin-button" />
                        </a>
                        <a href="#" title="Print" onclick="window.print();">
                            <img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/print_black.svg" alt="Print this page" class="print-button" />
                        </a>
                        <a href="mailto:?subject=Check%20out%20this%20story%20on%20Foreign%20Policy&amp;body=Why We Should Worry About China and India’s Border Skirmishes%20-%20https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/%2F" title="Share via Email">
                            <img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/email_black.svg" alt="Share via Email" class="email-button" />
                        </a>
                                            </div>
                </div>
                        

        </header>
<script type="text/javascript">/* Load GPT asynchronously */var googletag = googletag || {};googletag.cmd = googletag.cmd || [];(function() {var gads = document.createElement("script");gads.async = true;gads.type = "text/javascript";var useSSL = "https:" == document.location.protocol;gads.src = (useSSL ? "https:" : "http:") +"//securepubads.g.doubleclick.net/tag/js/gpt.js";var node = document.getElementsByTagName("script")[0];node.parentNode.insertBefore(gads, node);})();googletag.cmd.push( function() { window.FP_gtagBannerSlots = {};/* Define a size mapping object. The first parameter to addSize is a viewport size, while the second is a list of allowed ad sizes. */var mappingMobileFooter = googletag.sizeMapping()./* Mobile fixed footer ad */addSize([320, 50], [320, 50]).build();var mappingSidebar = googletag.sizeMapping()./* Desktop sidebar and mobile ad */addSize([300, 250], [300, 250]).build();var mappingSidebarLarge = googletag.sizeMapping()./* Desktop sidebar and mobile ad */addSize([300, 250], [300, 250])./* Taller desktop sidebar and mobile ad */addSize([300, 600], [[300, 250], [300, 600]]).build();var mappingMainLarge = googletag.sizeMapping()./* Do not display these ads on smaller screens */addSize([0, 0], [])./* Small banner ad */addSize([728, 90], [728, 90])./* Large banner ad */addSize([970, 90], [[970, 90], [728, 90]]).build();var mappingMainLargeAndSmall = googletag.sizeMapping()./* Desktop sidebar and mobile ad */addSize([300, 250], [300, 250])./* Small banner ad */addSize([728, 90], [728, 90])./* Large banner ad */addSize([970, 90], [[970, 90], [728, 90]]).build();var mappingMainSmall = googletag.sizeMapping()./* Desktop sidebar and mobile ad */addSize([300, 250], [300, 250])./* Small banner ad */addSize([728, 90], [])./* Large banner ad */addSize([970, 90], []).build();googletag.defineSlot("/7971222/homepage_fp2_superleaderboard_top", [[970, 90], [728, 90]], "div-gpt-ad-1398442674485-1").defineSizeMapping(mappingMainLarge).addService(googletag.pubads());googletag.defineSlot("/7971222/homepage_fp2_superleaderboard_ATF", [970, 90], "div-gpt-ad-1384802961640-4").defineSizeMapping(mappingMainLargeAndSmall).addService(googletag.pubads());googletag.defineSlot("/7971222/homepage_fp2_bigbox_sidebar", [300, 250], "div-gpt-ad-1385072252832-0").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/homepage_fp2_superleaderboard_BTF", [970, 90], "div-gpt-ad-1384802961640-5").defineSizeMapping(mappingMainLargeAndSmall).addService(googletag.pubads());googletag.defineSlot("/7971222/homepage_fp2_bigbox_sidebar_BTF", [300, 250], "div-gpt-ad-1385077512872-0").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_1", [300, 250], "div-gpt-ad-1553192292010-0").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_2", [300, 250], "div-gpt-ad-1553192292010-1").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_3", [300, 250], "div-gpt-ad-1553192292010-2").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_4", [300, 250], "div-gpt-ad-1553192292010-3").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_5", [300, 250], "div-gpt-ad-1553192292010-4").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_6", [300, 250], "div-gpt-ad-1553192292010-5").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_7", [300, 250], "div-gpt-ad-1553192292010-6").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_8", [300, 250], "div-gpt-ad-1553192292010-7").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_9", [300, 250], "div-gpt-ad-1553192292010-8").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.defineSlot("/7971222/box_300x250_10", [300, 250], "div-gpt-ad-1553192292010-9").defineSizeMapping(mappingSidebar).addService(googletag.pubads());googletag.pubads().disableInitialLoad();googletag.pubads().enableLazyLoad({fetchMarginPercent: 0,renderMarginPercent: 0,mobileScaling: 2.0});
			googletag.enableServices(); } );</script><div id="div-gpt-ad-1398442674485-1" class="home-ad-region-1 _970">

			<script type="text/javascript">

				googletag.cmd.push( function() {

					googletag.display( "div-gpt-ad-1398442674485-1" );

				} );

			</script>

		</div>
<div class="home-content grid--container">

<div class="home-region-1 standard-layout background-transparent">
        <div class="grid--flex">
        <div class="a-block-wrapper">
    <div class="a-block featured">
        <div class="excerpt-content content-block " data-post-id="1007359">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/beijing-has-lit-hong-kongs-funeral-pyre/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?quality=90 1501w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=150,100&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=550,366&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=768,512&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=400,266&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=401,267&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=800,533&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=275,183&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=325,217&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?resize=600,400&amp;quality=90 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?w=800&#038;h=533&#038;quality=90"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Pro-democracy lawmaker Wu Chi-wai is removed by security during a scuffle with pro-Beijing lawmakers at the House Committee&#039;s election of vice chairpersons, presided by pro-Beijing lawmaker Starry Lee Wai-King at the Legislative Council on May 22, 2020 in Hong Kong."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214515343.jpg?w=800&#038;h=533&#038;quality=90"
                alt="Pro-democracy lawmaker Wu Chi-wai is removed by security during a scuffle with pro-Beijing lawmakers at the House Committee&#039;s election of vice chairpersons, presided by pro-Beijing lawmaker Starry Lee Wai-King at the Legislative Council on May 22, 2020 in Hong Kong."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/beijing-has-lit-hong-kongs-funeral-pyre/">
    <h3 class="hed">Beijing Has Lit Hong Kong’s Funeral Pyre</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Hong Kongers will fight the imposition of mainland security measures fiercely, but alone.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jack-hazlewood/"
        rel="author"
        class="author">
    Jack Hazlewood</a></address>

</div>
    </div>
</div>
    </div>
    <div class="a-block blog-list-layout--mobile last">
        <div class="excerpt-content--list content-block" data-post-id="1007203">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/china-superpower-two-paths-global-domination-cold-war/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?quality=80 2000w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=1536,1024&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=1920,1280&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized.jpg?w=800&#038;h=533&#038;quality=80"
                alt="China-superpower-two-paths-xi-jinping-foreign-policy-illustration_sized"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/china-superpower-two-paths-global-domination-cold-war/">
    <h3 class="hed">China Has Two Paths to Global Domination</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">And a lot is riding on whether Washington can figure out which strategy Beijing has chosen.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/the-big-think/"
        class="department-name -excerpt">
        The Big Think    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/hal-brands/"
        rel="author"
        class="author">
    Hal Brands</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/jake-sullivan/"
        rel="author"
        class="author">
    Jake Sullivan</a></address>

</div>
    </div>
</div>
    </div>
</div>
<div class="b-block-wrapper">
    <div class="grid--flex grid__half--mobile vertical-column">
        <div class="b-block" id="">
            <div class="excerpt-content content-block " data-post-id="1007225">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=150,90&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=550,331&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=768,462&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=400,241&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=401,241&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=800,481&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=275,165&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=325,195&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?resize=600,361&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?w=800&#038;h=481&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="An Indian soldier communicates with colleagues on a walkie talkie at Nathula Gate, leading to the Nathu La border crossing between India and China."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/india-china-border-89936180.jpg?w=800&#038;h=481&#038;quality=80"
                alt="An Indian soldier communicates with colleagues on a walkie talkie at Nathula Gate, leading to the Nathu La border crossing between India and China."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/">
    <h3 class="hed">Could India and China Go to War?</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Three decades ago, the two countries reached an understanding not to fight. But Beijing is now a much stronger power.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/sumit-ganguly/"
        rel="author"
        class="author">
    Sumit Ganguly</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/manjeet-s-pardesi/"
        rel="author"
        class="author">
    Manjeet S. Pardesi</a></address>

</div>
    </div>
</div>
        </div>
        <div class="b-block-last" id="">
            <div class="excerpt-content content-block " data-post-id="1007112">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/volodymyr-zelensky-ukraine-president-one-year-impeachment-anniversary/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=150,102&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=550,375&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=768,524&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=400,273&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=401,273&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=800,546&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=275,188&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=325,222&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?resize=600,409&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?w=800&#038;h=546&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Ukrainian President Volodymyr Zelensky"
            style="height:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1214181432.jpg?w=800&#038;h=546&#038;quality=80"
                alt="Ukrainian President Volodymyr Zelensky"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/volodymyr-zelensky-ukraine-president-one-year-impeachment-anniversary/">
    <h3 class="hed">One Year On, Zelensky Survives Impeachment (Trump’s, That Is) and Blunted Hopes</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">After a roller-coaster year, the Ukrainian president remains hugely popular.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/news/report/"
        class="department-name -excerpt">
        Report    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/amy-mackinnon/"
        rel="author"
        class="author">
    Amy Mackinnon</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/robbie-gramer/"
        rel="author"
        class="author">
    Robbie Gramer</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/jack-detsch/"
        rel="author"
        class="author">
    Jack Detsch</a></address>

</div>
    </div>
</div>
        </div>
    </div>
</div>
<div class="sidebar grid--flex grid--flow">
    <div id="div-gpt-ad-1385072252832-0" class="sidebar-big-box-ad _300">

				<script type="text/javascript">

					googletag.cmd.push( function() {

						googletag.display( "div-gpt-ad-1385072252832-0" );

					} );

				</script>

			</div>
    <div class="c-block-wrapper">
        <div class="grid--flex grid__half--mobile vertical-column">
            <div class="c-block" id="">
                <div class="excerpt-content content-block hide-image-desktop" data-post-id="1007234">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/23/united-states-trump-administration-economic-stimulus-coronavirus-pandemic/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=150,105&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=550,385&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=768,538&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=1463,1024&amp;quality=80 1463w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=400,280&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=401,281&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=800,560&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=275,193&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=325,228&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?resize=600,420&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?w=800&#038;h=560&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Economic stimulus checks are prepared for printing."
            style="height:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/us-treasury-bonds-economic-stimulus-81027601.jpg?w=800&#038;h=560&#038;quality=80"
                alt="Economic stimulus checks are prepared for printing."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/united-states-trump-administration-economic-stimulus-coronavirus-pandemic/">
    <h3 class="hed">Why the White House Should Propose More Economic Stimulus</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">While a wait-and-see approach is usually wise, unusual times require unusual playbooks, writes a former Trump administration economic advisor. </p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/joseph-w-sullivan/"
        rel="author"
        class="author">
    Joseph W. Sullivan</a></address>

</div>
    </div>
</div>
            </div>
            <div class="c-block-last" id="">
                <div class="excerpt-content content-block " data-post-id="1007147">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/goodbye-government-hello-mafia-coronavirus-pandemic-crisis-nonstate-organized-crime-insurgency-charity-conflict/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo.jpg?w=800&#038;h=533&#038;quality=80"
                alt="coronavirus-void-governments-FP-guide-foreign-policy-jon-benedict-illo"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/goodbye-government-hello-mafia-coronavirus-pandemic-crisis-nonstate-organized-crime-insurgency-charity-conflict/">
    <h3 class="hed">Goodbye, Government. Hello, Mafia.</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">From insurgent groups to charities, a range of nongovernmental organizations are stepping in to respond to the coronavirus crisis.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/fp-guide/"
        class="department-name -excerpt">
        FP Guide    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/audrey-wilson/"
        rel="author"
        class="author">
    Audrey Wilson</a></address>

</div>
    </div>
</div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
<div id="div-gpt-ad-1384802961640-4" class="home-ad-region-1 _970">

				<script type="text/javascript">

					googletag.cmd.push( function() {

						googletag.display( "div-gpt-ad-1384802961640-4" );

					} );

				</script>

			</div>
<div class="home-region-8 background-transparent">
	<div class="podcasts-internal-ad">
	<h2 class="title"><a href="/podcasts">podcasts</a></h2>
	<div class="grid--container grid--flex">
		<div class="grid__third grid--flex no-border blog-list-layout--reverse">
							<div class="excerpt-content--list">
					<figure class="figure-image -nocaption">
            <a href="https://foreignpolicy.com/podcasts/ispy/">
        <img data-srcset="https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?quality=90 1500w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=150,150&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=550,550&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=768,768&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=1024,1024&amp;quality=90 1024w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=400,400&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=401,401&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=800,800&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=275,275&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=325,325&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=600,600&amp;quality=90 600w" data-src="https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?quality=90" srcset="https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?quality=90 1500w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=150,150&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=550,550&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=768,768&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=1024,1024&amp;quality=90 1024w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=400,400&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=401,401&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=800,800&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=275,275&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=325,325&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2019/11/I_SPY-series-art_updated.png?resize=600,600&amp;quality=90 600w" sizes="(max-width: 800px) 100vw, 800px" style="height:auto" class="image -fit -lazy">
        <noscript>
            <img class="image -fit-1-1">
        </noscript>
        </a>
        </figure>
					<div class="list-text">
						<a href="https://foreignpolicy.com/podcasts/ispy/">
							<h3>I Spy</h3>
							<p>Spies don’t talk. But FP gets them to tell their stories. Season 2 out now, and get more episodes with I Spy Plus.</p>
						</a>
					</div>
				</div>
							<div class="excerpt-content--list">
					<figure class="figure-image -nocaption">
            <a href="https://foreignpolicy.com/podcasts/dont-touch-your-face-coronavirus-podcast/">
        <img data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?quality=90 600w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=150,150&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=550,550&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=400,400&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=401,401&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=275,275&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=325,325&amp;quality=90 325w" data-src="https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?quality=90" srcset="https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?quality=90 600w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=150,150&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=550,550&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=400,400&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=401,401&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=275,275&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/03/dont-touch-your-face-coronavirus-foreign-policy-podcast-logo.jpg?resize=325,325&amp;quality=90 325w" sizes="(max-width: 600px) 100vw, 600px" style="height:auto" class="image -fit -lazy">
        <noscript>
            <img class="image -fit-1-1">
        </noscript>
        </a>
        </figure>
					<div class="list-text">
						<a href="https://foreignpolicy.com/podcasts/dont-touch-your-face-coronavirus-podcast/">
							<h3>Don&#039;t Touch Your Face</h3>
							<p>A podcast covering all aspects of the coronavirus, from FP’s James Palmer and Amy Mackinnon.</p>
						</a>
					</div>
				</div>
							<div class="excerpt-content--list">
					<figure class="figure-image -nocaption">
            <a href="https://foreignpolicy.com/podcasts/heat-of-the-moment-climate-change/">
        <img data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?quality=90 1000w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=150,150&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=550,550&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=768,768&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=400,400&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=401,401&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=800,800&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=275,275&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=325,325&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=600,600&amp;quality=90 600w" data-src="https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?quality=90" srcset="https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?quality=90 1000w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=150,150&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=550,550&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=768,768&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=400,400&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=401,401&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=800,800&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=275,275&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=325,325&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2020/03/CIF_heat-of-the-moment-logo.jpg?resize=600,600&amp;quality=90 600w" sizes="(max-width: 800px) 100vw, 800px" style="height:auto" class="image -fit -lazy">
        <noscript>
            <img class="image -fit-1-1">
        </noscript>
        </a>
        </figure>
					<div class="list-text">
						<a href="https://foreignpolicy.com/podcasts/heat-of-the-moment-climate-change/">
							<h3>Heat of the Moment</h3>
							<p>A 12-part podcast featuring stories from the front lines of the fight against climate change.</p>
						</a>
					</div>
				</div>
					</div>
	</div>
</div>
</div>
<div class="internal-ad-region-1"><div class="grid--flex grid__half space-between-ads">
	<div class="power-maps-internal-ad grid--flex">
		<div>
			<a href="/2020/05/13/data-governance-privacy-internet-regulation-localization-global-technology-power-map/">
				<div class="subhead--and-image">
					<p class="subhead">An FP Analytics Power Map</p>
					<div class="subhead-image-container">
						<img src="https://foreignpolicy.com/wp-content/uploads/2020/05/FP_Insider_logo_black.png" alt="FP Insider" />
					</div>
				</div>
				<h3>Data Governance</h3>
				<p class="subhead--below-head">Part One: Emerging Regulatory Challenges</p>
			</a>
		</div>
	</div>
	<div class="insider-internal-ad">
		<p class="subhead hide-desktop--smaller">Be the source. Be the expert. Be in the know.</p>
		<div class="insider-internal--image">
			<a href="/fpinsider">
				<img src="https://foreignpolicy.com/wp-content/uploads/2019/12/FP-Insider-Trump-Erdogan.jpg?quality=90" alt="FP Insider" class="hide-mobile--smaller">
				<img src="https://foreignpolicy.com/wp-content/uploads/2020/01/FP_Insider_logo_white.png" alt="FP Insider" class="hide-desktop--smaller">
			</a>
		</div>
		<div class="insider-internal--text">
			<a href="/fpinsider">
				<p class="subhead hide-mobile--smaller">Be the source. Be the expert. Be in the know.</p>
				<h3 class="hide-mobile--smaller">Be an FP Insider</h3>
				<p>Get the tools and intelligence you need to understand and act on complex global issues</p>
			</a>
		</div>
	</div>
</div></div><div class="home-region-2 background-transparent">
        <div class="d-block-wrapper grid--flex blog-list-layout--mobile">
            <div class="d-block-0" id="">
        	<div class="excerpt-content content-block " data-post-id="998334">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/projects/essential-coronavirus-reading-now-free-for-everyone/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?quality=90 1500w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=150,100&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=550,367&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=768,512&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=400,267&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=401,267&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=800,533&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=275,183&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=325,217&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?resize=600,400&amp;quality=90 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?w=800&#038;h=533&#038;quality=90"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="coronavirus-successes-fp-guide-1500x1000"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/04/coronavirus-successes-fp-guide-1500x1000-1.jpg?w=800&#038;h=533&#038;quality=90"
                alt="coronavirus-successes-fp-guide-1500x1000"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/projects/essential-coronavirus-reading-now-free-for-everyone/">
    <h3 class="hed">Essential Coronavirus Reading: Now Free for Everyone</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Access these select Foreign Policy articles on the deadly outbreak without a subscription.</p>
</div>
<div class="meta-data -excerpt">
        </div>
    </div>
</div>
        </div>
            <div class="d-block-1" id="">
        	<div class="excerpt-content content-block " data-post-id="1007211">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/21/first-pandemic-then-killer-cyclone-amphan-india-bangladesh-coronavirus/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="An aerial view shows flooded houses after a dam broke when Cyclone Amphan made landfall in Shyamnagar, Bangladesh, on May 21."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/cyclone-amphan-bangladesh-GettyImages-1214308955.jpg?w=800&#038;h=533&#038;quality=80"
                alt="An aerial view shows flooded houses after a dam broke when Cyclone Amphan made landfall in Shyamnagar, Bangladesh, on May 21."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/21/first-pandemic-then-killer-cyclone-amphan-india-bangladesh-coronavirus/">
    <h3 class="hed">First the Pandemic. Then a Killer Cyclone.</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">India and Bangladesh reel after Cyclone Amphan kills dozens and displaces thousands, creating conditions for the coronavirus to renew its spread.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/south-asia-brief/"
        class="department-name -excerpt">
        South Asia Brief    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/ravi-agrawal/"
        rel="author"
        class="author">
    Ravi Agrawal</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-2" id="">
        	<div class="excerpt-content content-block " data-post-id="1007337">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/how-canada-got-tough-on-guns-trudeau-nra-nova-scotia-assault-weapons-ban-ar15/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Canadian Prime Minister Justin Trudeau comments on the shooting in Nova Scotia during a news conference on April 20 in Ottawa, Canada."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/trudeau-gun-control-canada-nova-scotia.jpg?w=800&#038;h=533&#038;quality=80"
                alt="Canadian Prime Minister Justin Trudeau comments on the shooting in Nova Scotia during a news conference on April 20 in Ottawa, Canada."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/how-canada-got-tough-on-guns-trudeau-nra-nova-scotia-assault-weapons-ban-ar15/">
    <h3 class="hed">How Canada Got Tough on Guns</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Within weeks of a mass shooting, the Canadian government passed an assault-weapons ban despite widespread firearms ownership and vocal gun rights groups. </p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/news/dispatch/"
        class="department-name -excerpt">
        Dispatch    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jillian-kestler-damours/"
        rel="author"
        class="author">
    Jillian Kestler-D’Amours</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-3" id="native-ad">
        	<div class="excerpt-content content-block " data-post-id="1006918">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/congress-coronavirus-pandemic-diplomacy/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?quality=80 5568w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=1536,1024&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=2048,1365&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=1920,1280&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="The U.S. Capitol in Washington, DC, at dusk on Feb. 6, 2018."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-915073054.jpg?w=800&#038;h=533&#038;quality=80"
                alt="The U.S. Capitol in Washington, DC, at dusk on Feb. 6, 2018."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/congress-coronavirus-pandemic-diplomacy/">
    <h3 class="hed">Congress Has Been AWOL on U.S. Coronavirus Diplomacy</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">The invisibility and silence of Congress is another reason for America&#039;s shocking abdication of global leadership.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/channel/elephants-in-the-room/"
        class="department-name -excerpt">
        Elephants in the Room    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/daniel-p-vajdich/"
        rel="author"
        class="author">
    Daniel P. Vajdich</a></address>

</div>
    </div>
</div>
        </div>
    </div>
</div>
<div class="home-region-2 background-transparent">
        <div class="d-block-wrapper grid--flex blog-list-layout--mobile">
            <div class="d-block-0" id="">
        	<div class="excerpt-content content-block " data-post-id="1007175">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/21/lebanon-coronavirus-middle-class-poverty/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?quality=80 5160w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=150,103&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=550,379&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=768,530&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=1484,1024&amp;quality=80 1484w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=1536,1060&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=2048,1413&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=400,276&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=401,277&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=800,552&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=1920,1325&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=275,190&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=325,224&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?resize=600,414&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?w=800&#038;h=552&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Lebanese protesters ride horses past burning tires in front of the house of former youth and sports minister Faisal Karami, during a protest against dire economic conditions in the coastal city of Tripoli on Oct. 18, 2019."
            style="height:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1176565071-1.jpg?w=800&#038;h=552&#038;quality=80"
                alt="Lebanese protesters ride horses past burning tires in front of the house of former youth and sports minister Faisal Karami, during a protest against dire economic conditions in the coastal city of Tripoli on Oct. 18, 2019."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/21/lebanon-coronavirus-middle-class-poverty/">
    <h3 class="hed">The Death of Lebanon’s Middle Class</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">A country with a proud history of trade and commerce is starting to crumble into permanent poverty.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/news/dispatch/"
        class="department-name -excerpt">
        Dispatch    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/anchal-vohra/"
        rel="author"
        class="author">
    Anchal Vohra</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-1" id="">
        	<div class="excerpt-content content-block " data-post-id="1007331">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/obama-drones-trump-killings-count/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="A MQ-9 Reaper remotely piloted aircraft (RPA) is parked in an aircraft shelter at Creech Air Force Base on November 17, 2015 in Indian Springs, Nevada."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-497592608.jpg?w=800&#038;h=533&#038;quality=80"
                alt="A MQ-9 Reaper remotely piloted aircraft (RPA) is parked in an aircraft shelter at Creech Air Force Base on November 17, 2015 in Indian Springs, Nevada."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/obama-drones-trump-killings-count/">
    <h3 class="hed">Trump Inherited the Drone War but Ditched Accountability</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Only a single formal check remains on U.S. killings worldwide.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/kelsey-d-atherton/"
        rel="author"
        class="author">
    Kelsey D. Atherton</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-2" id="">
        	<div class="excerpt-content content-block " data-post-id="1007034">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/21/china-farms-antibiotic-resistance-antimicrobial-amr/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="A worker feeds the piglets in a hog pen in China"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/china-pig-farming-coronavirus-GettyImages-1202227433.jpg?w=800&#038;h=533&#038;quality=80"
                alt="A worker feeds the piglets in a hog pen in China"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/21/china-farms-antibiotic-resistance-antimicrobial-amr/">
    <h3 class="hed">China’s Farms Are Petri Dishes of Antibiotic Resistance</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Poorly enforced regulation is causing a slow-moving pandemic. </p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/kevin-schoenmakers/"
        rel="author"
        class="author">
    Kevin Schoenmakers</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-3" id="">
        	<div class="excerpt-content content-block " data-post-id="1006829">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/19/national-security-policymaking-mythos-logos-strategy/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="A statue of the ancient Greek goddess Athena is illuminated under a full moon in central Athens on July 27, 2018."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1006359806.jpg?w=800&#038;h=533&#038;quality=80"
                alt="A statue of the ancient Greek goddess Athena is illuminated under a full moon in central Athens on July 27, 2018."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/19/national-security-policymaking-mythos-logos-strategy/">
    <h3 class="hed">Strategists Have Forgotten the Power of Stories</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">The arts are invaluable to national security policymakers facing an ever-changing future. </p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/kathleen-j-mcinnis/"
        rel="author"
        class="author">
    Kathleen J. McInnis</a></address>

</div>
    </div>
</div>
        </div>
    </div>
</div>
<div class="home-region-2 background-transparent">
    <h2 class="overline overline-style-solido">
    Special insights on the post-pandemic world</h2>
    <div class="d-block-wrapper grid--flex blog-list-layout--mobile">
            <div class="d-block-0" id="">
        	<div class="excerpt-content content-block " data-post-id="1006416">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/16/future-government-powers-coronavirus-pandemic/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?quality=80 2700w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=1536,1024&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=2048,1365&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=1920,1280&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2.jpg?w=800&#038;h=533&#038;quality=80"
                alt="governments-coronavirus-foreign-policy-brian-stauffer-illustration-authoritarian_3_2"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/16/future-government-powers-coronavirus-pandemic/">
    <h3 class="hed">The Future of the State</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Ten leading global thinkers on an expansion of government powers.</p>
</div>
<div class="meta-data -excerpt">
        </div>
    </div>
</div>
        </div>
            <div class="d-block-1" id="">
        	<div class="excerpt-content content-block " data-post-id="1004344">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/01/future-of-cities-urban-life-after-coronavirus-pandemic/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="cities-after-coronavirus-brian-stauffer-illustration-foreign-policy"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/cities-after-coronavirus-brian-stauffer-illustration-foreign-policy.jpg?w=800&#038;h=533&#038;quality=80"
                alt="cities-after-coronavirus-brian-stauffer-illustration-foreign-policy"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/01/future-of-cities-urban-life-after-coronavirus-pandemic/">
    <h3 class="hed">Cities in the Future</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">12 experts on the coming transformations in urban life.</p>
</div>
<div class="meta-data -excerpt">
        </div>
    </div>
</div>
        </div>
            <div class="d-block-2" id="">
        	<div class="excerpt-content content-block " data-post-id="1002409">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/04/15/how-the-economy-will-look-after-the-coronavirus-pandemic/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="economy-after-coronavirus-brian-stauffer-illustration-3_2l"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/04/economy-after-coronavirus-brian-stauffer-illustration-3_2l.jpg?w=800&#038;h=533&#038;quality=80"
                alt="economy-after-coronavirus-brian-stauffer-illustration-3_2l"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/04/15/how-the-economy-will-look-after-the-coronavirus-pandemic/">
    <h3 class="hed">The Fate of the Economy</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Nine economists on a rapidly changing fiscal landscape.</p>
</div>
<div class="meta-data -excerpt">
        </div>
    </div>
</div>
        </div>
            <div class="d-block-3" id="">
        	<div class="excerpt-content content-block " data-post-id="998874">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/03/20/world-order-after-coroanvirus-pandemic/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="coronavirus-world-after-brian-stauffer-illustration_response5"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/03/coronavirus-world-after-brian-stauffer-illustration_response5.jpg?w=800&#038;h=533&#038;quality=80"
                alt="coronavirus-world-after-brian-stauffer-illustration_response5"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/03/20/world-order-after-coroanvirus-pandemic/">
    <h3 class="hed">The Coming World Order</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">12 leading thinkers on geopolitics after the pandemic.</p>
</div>
<div class="meta-data -excerpt">
        </div>
    </div>
</div>
        </div>
    </div>
</div>
<div class="home-region-7 background-gray">
        <div class="m-block-centered-title">
        <h2 class="title m-block">In the Magazine</h2>
        <div class="home-magazine-links">
            Current Issue: <a href="/the-magazine/?issue_id=411129256">Spring 2020</a>
            <span class="separator">|</span>
            <a href="/print-archive/">Archives</a>
        </div>
    </div>
    
<div class="m-block-wrapper grid__split-third--mobile grid--flex">

    <div class="m-block-0">
            <div class="m-block-left-justified-title">
            <h2 class="title m-block">In the Magazine</h2>
            <div class="home-magazine-links">
                Current Issue: <a href="/the-magazine/?issue_id=411129256">Spring 2020</a>
                <span class="separator">|</span>
                <a href="/print-archive/">Archives</a>
            </div>
        </div>
    <div class="excerpt-content">
    <figure class="figure-image -nocaption">
                <a
                style="padding-bottom:129.23076923077%;
        "
                href="http://foreignpolicy.com/the-magazine/"
            class="image-attachment -ratioscale">
        <img
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?quality=80 1625w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=116,150&amp;quality=80 116w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=550,711&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=768,992&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=792,1024&amp;quality=80 792w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=1189,1536&amp;quality=80 1189w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=1585,2048&amp;quality=80 1585w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=400,517&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=401,518&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=800,1034&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=275,355&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=325,420&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?resize=600,775&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?w=325?quality=80"
            alt="foreign-policy-magazine-cover-coronavirus-globalization-spring-2020"
            class="image -fit -lazy">
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/03/foreign-policy-magazine-cover-coronavirus-globalization-spring-2020.jpg?w=325?quality=80"
                alt="foreign-policy-magazine-cover-coronavirus-globalization-spring-2020"
                class="image -fit">
        </noscript>
        </a>
        </figure>
</div>
    </div>

            <div class="m-block-1">
        <div class="excerpt-content content-block " data-post-id="1000553">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/04/03/save-global-capitalism-localism-deglobalization/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?quality=80 4167w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=1536,1024&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=2048,1365&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=1920,1280&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="deglobalization-localization-lego-globe-ben-fearnley"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/04/deglobalization-localization-lego-globe-ben-fearnley.jpg?w=800&#038;h=533&#038;quality=80"
                alt="deglobalization-localization-lego-globe-ben-fearnley"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/04/03/save-global-capitalism-localism-deglobalization/">
    <h3 class="hed">How to Save Global Capitalism From Itself</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Decentralizing decision-making can help left-behind regions get back on track. 
</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/essay/"
        class="department-name -excerpt">
        Essay    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/raghuram-g-rajan/"
        rel="author"
        class="author">
    Raghuram Rajan</a></address>

</div>
    </div>
</div>
    </div>
                <div class="m-block-2">
        <div class="excerpt-content content-block " data-post-id="1000594">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/04/03/britain-post-brexit-identity-crisis/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="brexit-deglobalization-brian-stauffer-illustration"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/04/brexit-deglobalization-brian-stauffer-illustration.jpg?w=800&#038;h=533&#038;quality=80"
                alt="brexit-deglobalization-brian-stauffer-illustration"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/04/03/britain-post-brexit-identity-crisis/">
    <h3 class="hed">Britain’s Post-Brexit Identity Crisis</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Boris Johnson has contradictory ideas for his country’s future—and no clear paths for getting there.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/james-crabtree/"
        rel="author"
        class="author">
    James Crabtree</a></address>

</div>
    </div>
</div>
    </div>
                <div class="m-block-parent">
        <div class="m-block-3">
        <div class="excerpt-content -noimage">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/04/03/chimerica-ugly-end-coronavirus-china-us-trade-relations/">
    <h3 class="hed">The Ugly End of Chimerica</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">The coronavirus pandemic has turned a conscious uncoupling into a messy breakup. 
</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/orville-schell/"
        rel="author"
        class="author">
    Orville Schell</a></address>

</div>
</div>
    </div>
                <div class="m-block-4">
        <div class="excerpt-content -noimage">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/02/13/jai-shri-ram-india-hindi/">
    <h3 class="hed">The 3 Most Polarizing Words in India</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">“Jai Shri Ram” was meant to be a celebration of a Hindu deity. But the phrase is turning into hate speech—and a dog whistle for attacks on Muslims.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/decoder/"
        class="department-name -excerpt">
        Decoder    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/snigdha-poonam/"
        rel="author"
        class="author">
    Snigdha Poonam</a></address>

</div>
</div>
    </div>
        </div>
        
</div>
</div>
<div class="home-region-2 background-transparent">
    <h2 class="overline overline-style-solido">
    <a href="https://foreignpolicy.com/category/analysis/voice/">
        Voices    </a>
</h2>
    <div class="d-block-wrapper grid--flex blog-list-layout--mobile">
            <div class="d-block-0" id="">
        	<div class="excerpt-content content-block " data-post-id="1007092">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/22/trump-trade-deal-china-dead-coronavirus-pandemic/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?quality=80 4106w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=150,107&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=550,394&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=768,550&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=1431,1024&amp;quality=80 1431w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=1536,1099&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=2048,1465&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=400,286&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=401,287&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=800,572&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=1920,1374&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=275,197&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=325,233&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?resize=600,429&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?w=800&#038;h=572&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="U.S. President Donald Trump and Chinese Vice Premier Liu He at the signing ceremony for the U.S.-Chinese trade agreement at the White House in Washington, DC, on Jan. 15, 2020."
            style="height:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-1199725684.jpg?w=800&#038;h=572&#038;quality=80"
                alt="U.S. President Donald Trump and Chinese Vice Premier Liu He at the signing ceremony for the U.S.-Chinese trade agreement at the White House in Washington, DC, on Jan. 15, 2020."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/trump-trade-deal-china-dead-coronavirus-pandemic/">
    <h3 class="hed">Trump’s China Trade Deal Is as Dead as Can Be</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">His much-touted trade victory has crashed and burned with the coronavirus pandemic. </p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/voice/"
        class="department-name -excerpt">
        Voice    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jason-bordoff/"
        rel="author"
        class="author">
    Jason Bordoff</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-1" id="">
        	<div class="excerpt-content content-block " data-post-id="1006734">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/19/dont-let-china-steal-your-steel-industry/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?quality=80 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=150,100&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=550,367&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=768,512&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=400,267&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=401,267&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=800,533&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=275,183&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=325,217&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?resize=600,400&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?w=800&#038;h=533&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Workers move molten iron at a furnace in the production area of the Zhongtian Steel Group Corp. in Changzhou, China, on May 13, 2016."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/china-steel-industry.jpg?w=800&#038;h=533&#038;quality=80"
                alt="Workers move molten iron at a furnace in the production area of the Zhongtian Steel Group Corp. in Changzhou, China, on May 13, 2016."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/19/dont-let-china-steal-your-steel-industry/">
    <h3 class="hed">Don’t Let China Steal Your Steel Industry</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">Beijing is rapidly becoming the dominant player in an industry vital to defense and technology companies. If the United States and Europe aren’t careful, they will become dependent.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/voice/"
        class="department-name -excerpt">
        Voice    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/elisabeth-braw/"
        rel="author"
        class="author">
    Elisabeth Braw</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-2" id="">
        	<div class="excerpt-content content-block " data-post-id="1006965">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/20/israel-palestine-annexation-west-bank-ending-special-relationship/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?quality=80 3000w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=150,106&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=550,389&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=768,543&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=1449,1024&amp;quality=80 1449w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=1536,1085&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=2048,1447&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=400,283&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=401,283&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=800,565&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=1920,1357&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=275,194&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=325,230&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?resize=600,424&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?w=800&#038;h=565&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="U.S. Vice President Joe Biden sits with Israeli Prime Minister Benjamin Netanyahu before a dinner at the prime minister&#039;s residence in Jerusalem on March 9, 2010."
            style="height:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-97586900.jpg?w=800&#038;h=565&#038;quality=80"
                alt="U.S. Vice President Joe Biden sits with Israeli Prime Minister Benjamin Netanyahu before a dinner at the prime minister&#039;s residence in Jerusalem on March 9, 2010."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/20/israel-palestine-annexation-west-bank-ending-special-relationship/">
    <h3 class="hed">How to End the Special Relationship With Israel</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">The peace process died of natural causes. Washington’s most extraordinary alliance should too.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/voice/"
        class="department-name -excerpt">
        Voice    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/steven-a-cook/"
        rel="author"
        class="author">
    Steven A. Cook</a></address>

</div>
    </div>
</div>
        </div>
            <div class="d-block-3" id="">
        	<div class="excerpt-content content-block " data-post-id="1005909">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/13/coronavirus-pandemic-depression-economy-world-war/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?quality=80 3988w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=150,104&amp;quality=80 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=550,382&amp;quality=80 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=768,533&amp;quality=80 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=1474,1024&amp;quality=80 1474w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=1536,1067&amp;quality=80 1536w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=2048,1423&amp;quality=80 2048w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=400,278&amp;quality=80 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=401,279&amp;quality=80 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=800,556&amp;quality=80 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=1920,1334&amp;quality=80 1920w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=275,191&amp;quality=80 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=325,226&amp;quality=80 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?resize=600,417&amp;quality=80 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?w=800&#038;h=556&#038;quality=80"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="The bronze sculpture &quot;Depression Bread Line&quot; by George Segal—seen here on March 7, 2009, at the Franklin Delano Roosevelt Memorial in Washington—shows five men waiting in line near a door during the Great Depression and the inactivity and troubles of everyday citizens then."
            style="height:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/GettyImages-85293339.jpg?w=800&#038;h=556&#038;quality=80"
                alt="The bronze sculpture &quot;Depression Bread Line&quot; by George Segal—seen here on March 7, 2009, at the Franklin Delano Roosevelt Memorial in Washington—shows five men waiting in line near a door during the Great Depression and the inactivity and troubles of everyday citizens then."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
    <div class="list-text">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/13/coronavirus-pandemic-depression-economy-world-war/">
    <h3 class="hed">Will a Global Depression Trigger Another World War?</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">The coronavirus pandemic has already devastated the international economy. Its military fallout remains to be seen.</p>
</div>
<div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/voice/"
        class="department-name -excerpt">
        Voice    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/stephen-m-walt/"
        rel="author"
        class="author">
    Stephen M. Walt</a></address>

</div>
    </div>
</div>
        </div>
    </div>
</div>
<div id="div-gpt-ad-1384802961640-5" class="home-ad-region-2 _970">

				<script type="text/javascript">

					googletag.cmd.push( function() {

						googletag.display( "div-gpt-ad-1384802961640-5" );

					} );

				</script>

			</div><div class="home-region-4 grid--flex">
    <div class="g-block-wrapper top-ten-stories">
    <h2 class="title">Trending</h2>
    <div class="grid__half--mobile">
        <ol>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/05/23/india-china-border-skirmishes/">
                    <h3 class="hed">Why We Should Worry About China and India’s Border Skirmishes</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/sumit-ganguly/"
        rel="author"
        class="author">
    Sumit Ganguly</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/manjeet-s-pardesi/"
        rel="author"
        class="author">
    Manjeet S. Pardesi</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/05/22/trump-trade-deal-china-dead-coronavirus-pandemic/">
                    <h3 class="hed">Trump’s China Trade Deal Is as Dead as Can Be</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/voice/"
        class="department-name -excerpt">
        Voice    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jason-bordoff/"
        rel="author"
        class="author">
    Jason Bordoff</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/05/22/china-superpower-two-paths-global-domination-cold-war/">
                    <h3 class="hed">China Has Two Paths to Global Domination</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/the-big-think/"
        class="department-name -excerpt">
        The Big Think    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/hal-brands/"
        rel="author"
        class="author">
    Hal Brands</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/jake-sullivan/"
        rel="author"
        class="author">
    Jake Sullivan</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/05/23/united-states-trump-administration-economic-stimulus-coronavirus-pandemic/">
                    <h3 class="hed">Why the White House Should Propose More Economic Stimulus</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/joseph-w-sullivan/"
        rel="author"
        class="author">
    Joseph W. Sullivan</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2019/12/15/carter-doctrine-rip-donald-trump-mideast-oil-big-think/">
                    <h3 class="hed">RIP the Carter Doctrine, 1980-2019</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/the-big-think/"
        class="department-name -excerpt">
        The Big Think    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/hal-brands/"
        rel="author"
        class="author">
    Hal Brands</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/steven-a-cook/"
        rel="author"
        class="author">
    Steven A. Cook</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/kenneth-m-pollack/"
        rel="author"
        class="author">
    Kenneth M. Pollack</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2017/06/09/the-thucydides-trap/">
                    <h3 class="hed">The Thucydides Trap</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/observation-deck/"
        class="department-name -excerpt">
        Observation Deck    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/graham-allison/"
        rel="author"
        class="author">
    Graham Allison</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/04/29/federal-reserve-global-economy-coronavirus-pandemic-inflation-terminal-deflation-is-coming/">
                    <h3 class="hed">Terminal Deflation Is Coming</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/trevor-jackson/"
        rel="author"
        class="author">
    Trevor Jackson</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/05/14/japan-coronavirus-pandemic-lockdown-testing/">
                    <h3 class="hed">Japan’s Halfhearted Coronavirus Measures Are Working Anyway</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/william-sposato/"
        rel="author"
        class="author">
    William Sposato</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/03/20/world-order-after-coroanvirus-pandemic/">
                    <h3 class="hed">How the World Will Look After the Coronavirus Pandemic</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/channel/analysis/"
        class="department-name -excerpt">
        Analysis    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/john-allen/"
        rel="author"
        class="author">
    John Allen</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/nicholas-burns/"
        rel="author"
        class="author">
    Nicholas Burns</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/laurie-garrett/"
        rel="author"
        class="author">
    Laurie Garrett</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/richard-n-haass/"
        rel="author"
        class="author">
    Richard N. Haass</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/g-john-ikenberry/"
        rel="author"
        class="author">
    G. John Ikenberry</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/kishore-mahbubani/"
        rel="author"
        class="author">
    Kishore Mahbubani</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/shivshankar-menon/"
        rel="author"
        class="author">
    Shivshankar Menon</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/robin-niblett/"
        rel="author"
        class="author">
    Robin Niblett</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/joseph-s-nye-jr/"
        rel="author"
        class="author">
    Joseph S. Nye Jr.</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/shannon-k-oneil/"
        rel="author"
        class="author">
    Shannon K. O&#039;Neil</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/kori-schake/"
        rel="author"
        class="author">
    Kori Schake</a><span class="separator">,</span> <a
        href="https://foreignpolicy.com/author/stephen-m-walt/"
        rel="author"
        class="author">
    Stephen M. Walt</a></address>

</div>
            </li>
                    <li class="fp-trending-content">
                <a class="hed-heading -excerpt" href="/2020/05/22/beijing-has-lit-hong-kongs-funeral-pyre/">
                    <h3 class="hed">Beijing Has Lit Hong Kong’s Funeral Pyre</h3>
                </a>
                <div class="meta-data -excerpt">
        <a
        href="https://foreignpolicy.com/category/analysis/argument/"
        class="department-name -excerpt">
        Argument    </a>
        <span class="separator">|</span>
        <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jack-hazlewood/"
        rel="author"
        class="author">
    Jack Hazlewood</a></address>

</div>
            </li>
                </ol>
    </div>
</div>
    <div class="f-block-wrapper">
            <h2 class="title"><a href="/category/photo-essay/">visual stories</a></h2>
                                
            <div class="grid--flow grid--flex">
                <div class="f-block f-block-3">
                    <div class="excerpt-content content-block">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/slideshow/may15-2020-best-photos-of-week-afghan-attack-coronavirus/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?quality=90 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=150,100&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=550,367&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=768,512&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=400,267&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=401,267&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=800,533&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=275,183&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=325,217&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?resize=600,400&amp;quality=90 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?w=800&#038;h=533&#038;quality=90"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="Newborn Bibi Amena receives treatment for a gunshot wound in her leg at the French Medical Institute for Children in Kabul on May 15 after losing her mother during an attack on a maternity hospital earlier in the week. WAKIL KOHSAR/AFP via Getty Images"
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/Afghanistan-Attack-Maternity-Ward-Baby-GettyImages-1213058864.jpg?w=800&#038;h=533&#038;quality=90"
                alt="Newborn Bibi Amena receives treatment for a gunshot wound in her leg at the French Medical Institute for Children in Kabul on May 15 after losing her mother during an attack on a maternity hospital earlier in the week. WAKIL KOHSAR/AFP via Getty Images"
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
<a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/slideshow/may15-2020-best-photos-of-week-afghan-attack-coronavirus/">
    <h3 class="hed">The Week in World Photos</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">A massacre in an Afghan maternity ward, a typhoon’s torrential rains in the Philippines, and a return—for some—to the classroom.</p>
</div>
<div class="meta-data -excerpt">
    <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/ddabruzzofp/"
        rel="author"
        class="author">
    Diana D&#039;Abruzzo</a></address>

</div>
</div>
                </div>
            </div>
                                
            <div class="grid--flow grid--flex">
                <div class="f-block f-block-3">
                    <div class="excerpt-content content-block">
    <figure class="figure-image -nocaption">
            <a
            style="padding-bottom:66.666666666667%;
        "
                    href="https://foreignpolicy.com/2020/05/16/italy-next-phase-coronavirus-pandemic-recovery-lockdown-health-care/"
                class="image-attachment -ratioscale  horizontal-orientation">
        <img
            data-sizes="(max-width: 800px) 100vw, 800px"
            data-srcset="https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?quality=90 1500w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=150,100&amp;quality=90 150w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=550,367&amp;quality=90 550w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=768,512&amp;quality=90 768w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=400,267&amp;quality=90 400w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=401,267&amp;quality=90 401w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=800,533&amp;quality=90 800w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=275,183&amp;quality=90 275w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=325,217&amp;quality=90 325w, https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?resize=600,400&amp;quality=90 600w"
            data-src="https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?w=800&#038;h=533&#038;quality=90"
            sizes="(max-width: 800px) 100vw, 800px"
            src=""
            alt="De Nicolo walks out of Santo Spirito Hospital on May 5 on her way home after 58 days in the hospital."
            style="width:auto;"
            class="image -fit -lazy"
        >
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/uploads/2020/05/Italy-coronavirus-awakening-homecoming-ICU-Stefano-Schirato-AWAKENINGS_SCHIRATO027.jpg?w=800&#038;h=533&#038;quality=90"
                alt="De Nicolo walks out of Santo Spirito Hospital on May 5 on her way home after 58 days in the hospital."
                class="image -fit-3-2">
        </noscript>
        </a>
        </figure>
<a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/16/italy-next-phase-coronavirus-pandemic-recovery-lockdown-health-care/">
    <h3 class="hed">Italy’s Next Phase: Returning Home</h3>
</a>
<div class="dek-heading -excerpt">
    <p class="dek">As the lockdown begins to ease up, coronavirus patients in ICUs across the country are just waking up—and beginning a long road to recovery.</p>
</div>
<div class="meta-data -excerpt">
    <address class="author-list -excerpt">
    <a
        href="https://foreignpolicy.com/author/jenny-pacini/"
        rel="author"
        class="author">
    Jenny Pacini</a></address>

</div>
</div>
                </div>
            </div>
            </div>

        <div class="j-block-wrapper sidebar">
        <div class="j-block vertical-column">
            <div class="follow-fp">
    <h2 class="title">Follow FP</h2>
    <div class="follow-buttons">
        <a href="https://www.facebook.com/foreign.policy.magazine" target="_blank"><img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/facebook_gray.png" alt="Follow FP on Facebook" /></a>
        <a href="https://twitter.com/foreignpolicy" target="_blank"><img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/twitter_gray.png" alt="Follow FP on Twitter" /></a>
        <a href="https://www.instagram.com/foreignpolicymag/" target="_blank"><img src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/icons/instagram_gray.png" alt="Follow FP on Instagram" /></a>
    </div>
</div>            
            <div id="div-gpt-ad-1553192292010-0" class="sidebar-big-box-ad _300">

				<script type="text/javascript">

					googletag.cmd.push( function() {

						googletag.display( "div-gpt-ad-1553192292010-0" );

					} );

				</script>

			</div>        </div>
        
        <div class="j-block-child">
    <h2 class="title">Latest</h2>

    <div>
                <div class="j-block -first">
        <div class="excerpt-content">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/india-china-border-skirmishes/">
    <h3 class="hed">Could India and China Go to War?</h3>
</a>
<div class="meta-data -ago">
    <time
    pubdate
    datetime="2020-05-23"
    title="May 23rd, 2020"
    class="date-time">
May 23, 2020, 2:09 PM</time>
</div>
</div>
        </div>
                <div class="j-block">
        <div class="excerpt-content">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/united-states-trump-administration-economic-stimulus-coronavirus-pandemic/">
    <h3 class="hed">Why the White House Should Propose More Economic Stimulus</h3>
</a>
<div class="meta-data -ago">
    <time
    pubdate
    datetime="2020-05-23"
    title="May 23rd, 2020"
    class="date-time">
May 23, 2020, 11:00 AM</time>
</div>
</div>
        </div>
                <div class="j-block">
        <div class="excerpt-content">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/23/coronavirus-pandemic-israel-us-china-trade/">
    <h3 class="hed">Our Top Weekend Reads</h3>
</a>
<div class="meta-data -ago">
    <time
    pubdate
    datetime="2020-05-23"
    title="May 23rd, 2020"
    class="date-time">
May 23, 2020, 7:00 AM</time>
</div>
</div>
        </div>
                <div class="j-block">
        <div class="excerpt-content">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/beijing-has-lit-hong-kongs-funeral-pyre/">
    <h3 class="hed">Beijing Has Lit Hong Kong’s Funeral Pyre</h3>
</a>
<div class="meta-data -ago">
    <time
    pubdate
    datetime="2020-05-22"
    title="May 22nd, 2020"
    class="date-time">
May 22, 2020, 5:34 PM</time>
</div>
</div>
        </div>
                <div class="j-block">
        <div class="excerpt-content">
    <a
    class="hed-heading -excerpt"
    href="https://foreignpolicy.com/2020/05/22/syria-president-bashar-assad-seize-cousin-assets-rami-makhlouf-russia-civil-war/">
    <h3 class="hed">Why Did Assad Just Seize His Cousin’s Assets?</h3>
</a>
<div class="meta-data -ago">
    <time
    pubdate
    datetime="2020-05-22"
    title="May 22nd, 2020"
    class="date-time">
May 22, 2020, 1:23 PM</time>
</div>
</div>
        </div>
        
        <div class="block-read-more">
            <a href="/category/latest/">See All Stories</a>
        </div>
    </div>
</div>    </div>
</div>

</div>

            <footer class="site-footer-wrapper">
                <div class="site-footer">
                    <div class="logo">
                                    <a
                style="padding-bottom:42%;
        "
                href="https://foreignpolicy.com/"
            class="image-attachment -ratioscale">
        <img
            data-srcset=""
            data-src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/logos/FP.svg"
            alt="Foreign Policy Magazine"
            class="image -fit -lazy">
        <noscript>
            <img
                src="https://foreignpolicy.com/wp-content/themes/foreign-policy-2017/assets/src/images/logos/FP.svg"
                alt="Foreign Policy Magazine"
                class="image -fit">
        </noscript>
        </a>
                            </div>
                    <nav class="nav">
                        <ul id="menu-footer-column-5" class="footer-menu"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-783354 footer-menu-item"><a href="https://foreignpolicy.com/staff/" class="navlink">Meet the Staff</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-988928 footer-menu-item"><a href="https://foreignpolicy.com/events" class="navlink">FP Events</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-993024 footer-menu-item"><a href="https://foreignpolicy.com/fp-analytics/" class="navlink">FP Analytics</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1002749 footer-menu-item"><a href="https://foreignpolicy.com/fp-peacegames/" class="navlink">FP PeaceGames</a></li>
</ul><ul id="menu-footer-column-6" class="footer-menu"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-993038 footer-menu-item"><a href="https://foreignpolicy.com/subscription-services/" class="navlink">Subscription Services</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-988929 footer-menu-item"><a href="https://foreignpolicy.com/reprint-permissions/" class="navlink">Reprint Permissions</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-939400 footer-menu-item"><a href="https://foreignpolicy.submittable.com/submit" class="navlink">Writer&#8217;s Guidelines</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1002750 footer-menu-item"><a href="/employment-opportunities/" class="navlink">Work at FP</a></li>
</ul><ul id="menu-footer-column-7" class="footer-menu"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-927960 footer-menu-item"><a href="https://fpguide.foreignpolicy.com/2020-career" class="navlink">FP Guides &#8211; Graduate Education</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-996597 footer-menu-item"><a href="https://foreignpolicy.com/fp-for-education/" class="navlink">FP For Education</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-660886 footer-menu-item"><a href="/magazine" class="navlink">FP Archive</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-660961 footer-menu-item"><a href="https://foreignpolicy.com/buy-back-issues/" class="navlink">Buy Back Issues</a></li>
</ul><ul id="menu-footer-column-8" class="footer-menu"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-993026 footer-menu-item"><a href="https://foreignpolicy.com/advertise-with-foreign-policy/" class="navlink">Advertise with FP</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-988932 footer-menu-item"><a href="https://foreignpolicy.com/privacy/" class="navlink">Privacy Policy</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-660967 footer-menu-item"><a href="https://foreignpolicy.com/contact-us/" class="navlink">Contact Us</a></li>
</ul>                        <span class="powered-by-wpcom--parent">
                            <div>Powered by <a href="https://wpvip.com/?utm_source=vip_powered_wpcom&#038;utm_medium=web&#038;utm_campaign=VIP%20Footer%20Credit&#038;utm_term=foreignpolicy.com" rel="generator nofollow" class="powered-by-wpcom">WordPress.com VIP</a></div>
                            <div>&copy; 2020, The Slate Group</div>
                        </span>
                    </nav>
                </div>
            </footer>

        </div><!-- end site-wrapper -->


                                    <div
                data-campaign="HSBC ROS nd Econ"
                data-stay-closed="false"
                data-mobile-ad="div-gpt-ad-1453402331387-0"
                data-refresh="30000"
                data-closeable="false"
                class="FP-mobile-ad FP-mobile-ad_fixedbottom"></div>
        

        <script>
!function(e,t,n,s,u,a){e.twq||(s=e.twq=function(){s.exe?s.exe.apply(s,arguments):s.queue.push(arguments);
},s.version='1.1',s.queue=[],u=t.createElement(n),u.async=!0,u.src='//static.ads-twitter.com/uwt.js',
a=t.getElementsByTagName(n)[0],a.parentNode.insertBefore(u,a))}(window,document,'script');
// Insert Twitter Pixel ID and Standard Event data below
twq('init','nzlz2');
twq('track','PageView');
</script>

        <script>
var fpUtilsLoc = {"isDev":"","redirectUri":"https:\/\/foreignpolicy.com\/share_redirect\/"};
</script>
<script>
var chartbeatData = {"category_name":"Argument","author_list":""};
</script>
<script>
var postDataPiano = ["home"];
</script>
<script type='text/javascript' src='https://foreignpolicy.com/_static/??-eJytksFOw0AMRH+IrRMkFHFAfErlLibZdLtebKdp/h5LlbiT7Mm++HlmNLDWELkYFQOb6EYK3yyUxhIq5xS38Nr1A6AqmYJKBI2Squ8XmvCeWBSKzxEtcTnN+gItiLSGNZUvXgM9jKRgDjmVqx57cCdHCkTU6R8gNfcWYVZYLGWFzBGzGguOtB/TKqrIfE0U/Fb36jlX4cd2xhgdsosw/ywk2+mp5ZizZ8au6Ja0CUpNUhlbkBbJDQuumcyrHdQPl9qm2BOKXQjtGE09LxfHxS2rK6wJC7dFYrbw17fP20f/9t51w9AP/fwL1iWxqA=='></script>
<script src="//cdn.taboola.com/libtrc/foreignpolicy/loader.js" defer="defer" type="text/javascript"></script>
<script>
var myFpAlertsLoc = {"isVIPEnv":"1"};
</script>
<script type='text/javascript' src='https://foreignpolicy.com/_static/??-eJyl0DFuwzAMBdALVWFSIHU6FF16gXTqStNMTEESVZFOkNtH6A1qT/wD/xs+3GsgLc7FwWfObHDRxnItoWoSeoTX/WEANGM3sEZg1KT2fOMyaQPHUTXhLtoLrLZGnvEm2gwIEy0Jnafg0gXHXP9h938XgmgQfxduj91lKdQhKdctyizm2u8GwiTXxFknTFsY6iOt6mPi1peO5z/m50szSvnmrpqvAsVC1lES9/Zn/jgcT8PbcX96H+ITMX7a1A=='></script>
<script src='https://polarcdn-terrax.com/nativeads/script/foreignpolicy/PolarFP.js'></script>
<script type='text/javascript' src='https://foreignpolicy.com/wp-includes/js/wp-embed.min.js?m=1588186579g'></script>
<script type='text/javascript' src='https://stats.wp.com/e-202021.js' async='async' defer='defer'></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:8.5',blog:'162972146',post:'0',tz:'-4',srv:'foreignpolicy.com'} ]);
	_stq.push([ 'clickTrackerInit', '162972146', '0' ]);
</script>


        <!--START Lightbox Javascript-->
<script type="text/javascript">
    /*<![CDATA[*/ window.lightboxjs || function (c) { function g(b, d) { d && (d += (/\?/.test(d) ? "&" : "?") + "lv=1"); c[b] || function () { var i = window, h = document, j = b, g = h.location.protocol, l = "load", k = 0; (function () { function b() { a.P(l); a.w = 1; c[j]("_load") } c[j] = function () { function m() { m.id = e; return c[j].apply(m, arguments) } var b, e = ++k; b = this && this != i ? this.id || 0 : 0; (a.s = a.s || []).push([e, b, arguments]); m.then = function (b, c, h) { var d = a.fh[e] = a.fh[e] || [], j = a.eh[e] = a.eh[e] || [], f = a.ph[e] = a.ph[e] || []; b && d.push(b); c && j.push(c); h && f.push(h); return m }; return m }; var a = c[j]._ = {}; a.fh = {}; a.eh = {}; a.ph = {}; a.l = d ? d.replace(/^\/\//, (g == "https:" ? g : "http:") + "//") : d; a.p = { 0: +new Date }; a.P = function (b) { a.p[b] = new Date - a.p[0] }; a.w && b(); i.addEventListener ? i.addEventListener(l, b, !1) : i.attachEvent("on" + l, b); var q = function () { function b() { return ["<head></head><", c, ' onload="var d=', n, ";d.getElementsByTagName('head')[0].", d, "(d.", g, "('script')).", i, "='", a.l, "'\"></", c, ">"].join("") } var c = "body", e = h[c]; if (!e) return setTimeout(q, 100); a.P(1); var d = "appendChild", g = "createElement",
    i = "src", k = h[g]("div"), l = k[d](h[g]("div")), f = h[g]("iframe"), n = "document", p; k.style.display = "none"; e.insertBefore(k, e.firstChild).id = o + "-" + j; f.frameBorder = "0"; f.id = o + "-frame-" + j; /MSIE[ ]+6/.test(navigator.userAgent) && (f[i] = "javascript:false"); f.allowTransparency = "true"; l[d](f); try { f.contentWindow[n].open() } catch (s) { a.domain = h.domain, p = "javascript:var d=" + n + ".open();d.domain='" + h.domain + "';", f[i] = p + "void(0);" } try { var r = f.contentWindow[n]; r.write(b()); r.close() } catch (t) { f[i] = p + 'd.write("' + b().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();' } a.P(2) }; a.l && q() })() }(); c[b].lv = "1"; return c[b] } var o = "lightboxjs", k = window[o] = g(o); k.require = g; k.modules = c }({}); /*]]>*/</script><script type="text/javascript">window.lightboxlib = lightboxjs.require("lightboxlib", "//www.lightboxcdn.com/vendor/044b8435-d6a0-427d-af56-eec8f6ae795a/lightbox.js?mb=" + (new Date().getTime()));</script>
<!--END Lightbox Javascript-->
    <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"f5b9626936","applicationID":"224917688","transactionName":"Z1cDYUFXXhVYWkINXF4dIFZHX18IFlFZCVYdAFEHAw==","queueTime":0,"applicationTime":625,"atts":"SxAUFwlNTUobWBReSE1P","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
