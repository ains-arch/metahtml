<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN"
  "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" version="XHTML+RDFa 1.0" dir="ltr" prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# book: http://ogp.me/ns/book# profile: http://ogp.me/ns/profile# video: http://ogp.me/ns/video# product: http://ogp.me/ns/product# c: http://s.opencalais.com/1/pred/ sys: http://s.opencalais.com/1/type/sys/ lid: http://s.opencalais.com/1/type/lid/ cat: http://s.opencalais.com/1/type/cat/ resolved: http://s.opencalais.com/1/type/er/ cgeo: http://s.opencalais.com/1/type/er/Geo/ eventfact: http://s.opencalais.com/1/type/em/r/ entity: http://s.opencalais.com/1/type/em/e/ cld: http://s.opencalais.com/1/linkeddata/pred/ content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema#">

<head profile="http://www.w3.org/1999/xhtml/vocab">
  <script type="text/javascript">
    var iPad = (navigator.userAgent.match(/(iPad)/) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1));
  </script>
      <script type="text/javascript">
      if (!iPad) {
        var meta = document.createElement('meta');
        meta.name = "viewport";
        meta.content = "width=device-width, initial-scale=1.0";
        document.getElementsByTagName('head')[0].appendChild(meta);
      }
    </script>
      <meta charset="utf-8" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"962df17ac8",applicationID:"409941798"};window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var i=n[t]={exports:{}};e[t][0].call(i.exports,function(n){var i=e[t][1][n];return r(i||n)},i,i.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(e,n,t){function r(){}function i(e,n,t){return function(){return o(e,[u.now()].concat(f(arguments)),n?null:this,t),n?void 0:this}}var o=e("handle"),a=e(4),f=e(5),c=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",d=l+"ixn-";a(p,function(e,n){s[n]=i(l+n,!0,"api")}),s.addPageAction=i(l+"addPageAction",!0),s.setCurrentRouteName=i(l+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,i="function"==typeof n;return o(d+"tracer",[u.now(),e,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return n.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],t),e}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=i(d+n)}),newrelic.noticeError=function(e,n){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,n])}},{}],2:[function(e,n,t){function r(e,n){var t=e.getEntries();t.forEach(function(e){"first-paint"===e.name?c("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&c("timing",["fcp",Math.floor(e.startTime)])})}function i(e,n){var t=e.getEntries();t.length>0&&c("lcp",[t[t.length-1]])}function o(e){if(e instanceof s&&!l){var n,t=Math.round(e.timeStamp);n=t>1e12?Date.now()-t:u.now()-t,l=!0,c("timing",["fi",t,{type:e.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var a,f,c=e("handle"),u=e("loader"),s=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){a=new PerformanceObserver(r),f=new PerformanceObserver(i);try{a.observe({entryTypes:["paint"]}),f.observe({entryTypes:["largest-contentful-paint"]})}catch(p){}}if("addEventListener"in document){var l=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(e){document.addEventListener(e,o,!1)})}}},{}],3:[function(e,n,t){function r(e,n){if(!i)return!1;if(e!==i)return!1;if(!n)return!0;if(!o)return!1;for(var t=o.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}n.exports={agent:i,version:o,match:r}},{}],4:[function(e,n,t){function r(e,n){var t=[],r="",o=0;for(r in e)i.call(e,r)&&(t[o]=n(r,e[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],5:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,i=t-n||0,o=Array(i<0?0:i);++r<i;)o[r]=e[n+r];return o}n.exports=r},{}],6:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function i(e){function n(e){return e&&e instanceof r?e:e?c(e,f,o):o()}function t(t,r,i,o){if(!l.aborted||o){e&&e(t,r,i);for(var a=n(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function d(e,n){h[e]=v(e).concat(n)}function m(e,n){var t=h[e];if(t)for(var r=0;r<t.length;r++)t[r]===n&&t.splice(r,1)}function v(e){return h[e]||[]}function g(e){return p[e]=p[e]||i(t)}function w(e,n){u(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var h={},y={},b={on:d,addEventListener:d,removeEventListener:m,emit:t,get:g,listeners:v,context:n,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(l.aborted=!0,s=l.backlog={})}var f="nr@context",c=e("gos"),u=e(4),s={},p={},l=n.exports=i();l.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(i.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[n]=r,r}var i=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){i.buffer([e],r),i.emit(e,n,t)}var i=e("ee").get("handle");n.exports=r,r.ee=i},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=E.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();u(y,function(n,t){e[n]||(e[n]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function i(){"complete"===d.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=e("handle"),u=e(4),s=e("ee"),p=e(3),l=window,d=l.document,m="addEventListener",v="attachEvent",g=l.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:g,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1167.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=n.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};e(1),e(2),d[m]?(d[m]("DOMContentLoaded",o,!1),l[m]("load",r,!1)):(d[v]("onreadystatechange",i),l[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=e(6)},{}],"wrap-function":[function(e,n,t){function r(e){return!(e&&e instanceof Function&&e.apply&&!e[a])}var i=e("ee"),o=e(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;n.exports=function(e,n){function t(e,n,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){l([u,"",[r,a,i],f])}s(n+"start",[r,a,i],f);try{return c=e.apply(a,r)}catch(p){throw s(n+"err",[r,a,p],f),p}finally{s(n+"end",[r,a,c],f)}}return r(e)?e:(n||(n=""),nrWrapper[a]=e,p(e,nrWrapper),nrWrapper)}function u(e,n,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<n.length;c++)f=n[c],a=e[f],r(a)||(e[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||n){var o=c;c=!0;try{e.emit(t,r,i,n)}catch(a){l([a,t,r,i])}c=o}}function p(e,n){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(e);return t.forEach(function(t){Object.defineProperty(n,t,{get:function(){return e[t]},set:function(n){return e[t]=n,n}})}),n}catch(r){l([r])}for(var i in e)f.call(e,i)&&(n[i]=e[i]);return n}function l(n){try{e.emit("internal-error",n)}catch(t){}}return e||(e=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script>
<script>var _sf_startpt=(new Date()).getTime();</script>
<link rel="shortcut icon" href="https://thehill.com/favicon.ico" type="image/vnd.microsoft.icon" />
<meta name="description" content="The Hill is a top US political website, read by the White House and more lawmakers than any other site -- vital for policy, politics and election campaigns." />
<meta name="keywords" content="The Hill, Capitol Hill, Newspaper, Dick Morris, Business, Lobbying, Politics, Campaign, Political, Congress, Clinton, Obama, Congressional, House, Senate, Legislation, Roll Call, Lobbyists, Juan Williams, Presidential, Election, 50 most beautiful, K Street, Pelosi, Endorsements" />
<meta name="generator" content="Drupal 7 (http://drupal.org)" />
<link rel="canonical" href="https://thehill.com/" />
<link rel="shortlink" href="https://thehill.com/" />
<meta property="fb:admins" content="581787871" />
<meta property="fb:admins" content="732535504" />
<meta property="fb:admins" content="1531470032" />
<meta property="fb:app_id" content="566538590082898" />
<meta property="fb:pages" content="7533944086, 2064147433830888" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="TheHill" />
<meta property="og:url" content="https://thehill.com/" />
<meta property="og:title" content="The Hill - covering Congress, Politics, Political Campaigns and Capitol Hill" />
<meta property="og:image" content="https://thehill.com/sites/default/files/thehill_logo_200.jpg" />
<meta name="twitter:site" content="@thehill" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:url" content="https://thehill.com/" />
<meta name="twitter:title" content="TheHill" />
<meta name="dcterms.title" content="TheHill" />
<meta name="dcterms.type" content="Text" />
<meta name="dcterms.identifier" content="https://thehill.com/" />
<meta name="dcterms.format" content="text/html" />
<script language="javascript" type="text/javascript" src="/sites/all/modules/thehill/thehill_header_bidding/js/prebid_3_16_0.js" async ></script><script language="javascript" type="text/javascript" src="//www.googletagservices.com/tag/js/gpt.js" async ></script>  <link rel="apple-touch-icon" sizes="512x512" href="/apple-touch-icon-512X512.png">
  <link rel="apple-touch-icon" sizes="1024x1024" href="/apple-touch-icon-1024X1024.png">
  <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152X152.png">
  <link rel="apple-touch-icon" sizes="167x167" href="/apple-touch-icon-167X167.png">
  <link rel="apple-touch-icon" sizes="1024x1024" href="/apple-touch-icon-1024X1024.png">
  <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120X120.png">
  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180X180.png">
  <link rel="apple-touch-icon" href="/apple-touch-icon.png">
  <title>The Hill - covering Congress, Politics, Political Campaigns and Capitol Hill</title>
  <link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_kShW4RPmRstZ3SpIC-ZvVGNFVAi0WEMuCnI0ZkYIaFw.css" media="all" />
<link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_GmgcKrlcJ_1AYWSRZ5rjft4ov8QEmSHehJZEiWJRn0I.css" media="all" />
<link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_se2WJ1rEiCe2g4ST9LNxulYjndHtkkH0k3Iu8roJvXU.css" media="all" />
<link type="text/css" rel="stylesheet" href="//thehill.com/sites/default/files/css/css_jhkX97U0KtpVWNXxwRLA8UtSYnAQpLZjuBTZCFPcVlE.css" media="all" />
      <script type="text/javascript">
      if (!iPad) {
        var link = document.createElement('link');
        link.rel = 'stylesheet';
        link.type = 'text/css';
        link.href = '/sites/all/themes/thehill/css/mobile.css';
        document.getElementsByTagName('head')[0].appendChild(link);
      }
    </script>
    
  <!-- Krux interchange code (before the first ad call) -->
  <script class="kxint" data-namespace="thehill" type="text/javascript">
    window.Krux||((Krux=function(){Krux.q.push(arguments);}).q=[]);
    (function(){
      function retrieve(n){
        var k= 'kx'+'thehill_'+n, ls=(function(){
          try {
            return window.localStorage;
          } catch(e) {
            return null;
          }
        })();
        if (ls) {
          return ls[k] || '';
        } else if (navigator.cookieEnabled) {
          var m = document.cookie.match(k+'=([^;]*)');
          return (m && unescape(m[1])) || '';
        } else {
          return '';
        }
      }
      Krux.user = retrieve('user');
      Krux.segments = retrieve('segs') ? retrieve('segs').split(',') : [];
    })();
  </script>
  <script type="text/javascript">(function () { var e = false; var c = window; var t = document; function r() { if (!c.frames["__uspapiLocator"]) { if (t.body) { var a = t.body; var e = t.createElement("iframe"); e.style.cssText = "display:none"; e.name = "__uspapiLocator"; a.appendChild(e) } else { setTimeout(r, 5) } } } r(); function p() { var a = arguments; __uspapi.a = __uspapi.a || []; if (!a.length) { return __uspapi.a } else if (a[0] === "ping") { a[2]({ gdprAppliesGlobally: e, cmpLoaded: false }, true) } else { __uspapi.a.push([].slice.apply(a)) } } function l(t) { var r = typeof t.data === "string"; try { var a = r ? JSON.parse(t.data) : t.data; if (a.__cmpCall) { var n = a.__cmpCall; c.__uspapi(n.command, n.parameter, function (a, e) { var c = { __cmpReturn: { returnValue: a, success: e, callId: n.callId } }; t.source.postMessage(r ? JSON.stringify(c) : c, "*") }) } } catch (a) { } } if (typeof __uspapi !== "function") { c.__uspapi = p; __uspapi.msgHandler = l; c.addEventListener("message", l, false) } })();</script>
<script>
        window._sp_ccpa = {
            config: {
                mmsDomain: "https://cmp.thehill.com",
                ccpaOrigin: "https://ccpa-service.sp-prod.net",
                accountId: "1164",
                getDnsMsgMms: true,
                alwaysDisplayDns: false,
            }
        }
</script>
<script src="https://ccpa.sp-prod.net/ccpa.js"></script><script src="https://z.moatads.com/newscomprebidheader135900089283/yi.js"></script>   <script src="//thehill.com/sites/default/files/js/js_UsJCaTKadQHcBxW3InvotRkwEO94ieAIN0hsSq5sbL4.js"></script>
<script>
  var PREBID_TIMEOUT = 2000;

  var adUnits = [ {
          code: 'dfp-ad-rightrail_top',
          mediaTypes: {
              banner: {
                  sizes: [[160, 600], [300, 250], [300, 600], [300, 1050]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678508',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'kargo',
              params: {
                  placementId: '_w42lbbT7Mr'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [300,250]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [160,600]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [300,600]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318000',
                  size: [300,1050]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114213'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '482104'
              }
          }]
      },{
          code: 'dfp-ad-rightrail_bottom',
          mediaTypes: {
              banner: {
                  sizes: [[300, 250], [300, 600], [300, 1050]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678507',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317999',
                  size: [300,250]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317999',
                  size: [300,600]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317999',
                  size: [300,1050]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114211'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '484056'
              }
          }]
      },{
          code: 'dfp-ad-second_rightrail_bottom_ros_asynch',
          mediaTypes: {
              banner: {
                  sizes: [[300, 250]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678509',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '484056'
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114211'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '318003',
                  size: [300,250]
              }
          }]
      },{
          code: 'dfp-ad-leaderboard',
          mediaTypes: {
              banner: {
                  sizes: [[728, 90], [970, 90], [970, 250], [970, 415], [970, 500], [1237, 500]]
              }
          },
          bids: [{
              bidder: 'openx',
              params: {
                  unit: '538678500',
                  delDomain: 'thehill-d.openx.net'
              }
          },{
              bidder: 'kargo',
              params: {
                  placementId: '_qB2XyTfayH'
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [728,90]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,90]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,250]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,415]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [970,500]
              }
          },{
              bidder: 'ix',
              params: {
                  siteId: '317997',
                  size: [1237,500]
              }
          },{
              bidder: 'appnexus',
              params: {
                  placementId: '9114153'
              }
          },{
              bidder: 'rubicon',
              params: {
                  accountId: '15654',
                  siteId: '102722',
                  zoneId: '482104'
              }
          }]
} ];
  

  var pbjs = pbjs || {};
  pbjs.que = pbjs.que || [];

  pbjs.que.push(function() {
    pbjs.setConfig({
        enableSendAllBids: true,
        sizeConfig: [{
            mediaQuery: '(min-width: 768px)',
            sizesSupported: [
                [728, 90],
                [970, 90],
                [300, 250],
                [160,600],
                [300,600],
                [300,1050],
                [970,250],
                [970,415],
                [970,500],
                [1237,500]
            ],
            labels: ["desktop"]
        }, {
            mediaQuery: '(min-width: 0px) and (max-width: 767px)',
            sizesSupported: [
                [320, 50],
                [320, 100],
                [300, 250]
            ],
            labels: ["mobile"]
        }]
    });
});</script>
<script>
var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];  googletag.cmd.push(function() {
    googletag.pubads().disableInitialLoad();
  });
</script>
<script>
  pbjs.que.push(function() {
    pbjs.addAdUnits(adUnits);
    

    pbjs.bidderSettings = {
standard: {
        alwaysUseBid: false,
        adserverTargeting: [{
            key: "hb_bidder",
          	val: function(bidResponse) {
        	return bidResponse.bidderCode;
          }
        }, {
            key: "hb_adid",
            val: function(bidResponse) {
                return bidResponse.adId;
            }
        }, 
        {
	    key: "hb_cache_id",
            val: function(bidResponse) {
		return bidResponse.videoCacheKey;
	    }
        },
        {
            key: "hb_pb",
          	val: function(bidResponse) {
            var cpm = bidResponse.cpm;
            if (cpm < 3.00) {
              return (Math.floor(cpm * 100) / 100).toFixed(2);
            } else if (cpm < 5.00) {
              return (Math.floor(cpm * 20) / 20).toFixed(2);
            } else if (cpm < 10.00) {
              return (Math.floor(cpm * 20) / 20).toFixed(2);
            } else if (cpm < 25.00) {
              return (Math.floor(cpm * 2) / 2).toFixed(2);
            } else {
              return '25.00';
        
            }
            }
        }]

      },
openx: {
	alwaysUseBid: true,
	adserverTargeting: [{
		key: "oxb",
 		val: function(bidResponse) {
 			var bid;
 			if (bidResponse.cpm < 20) {
 				//Penny Bid Buckets
 				bid = ((Math.floor(bidResponse.cpm * 100) / 100) * 100).toFixed(0);
 			} else {
 				//Twenty dollar bucket
 				bid = "2000";
 			}
 			//Returns creativeSize_bidBucket as the value
 			return bidResponse.width + "x" + bidResponse.height + "_" + bid;
 		}
 	}]
}
      };
    pbjs.requestBids({
      bidsBackHandler: sendAdserverRequest
    });
  });

  function sendAdserverRequest() {
    if (pbjs.adserverRequestSent) return;
    pbjs.adserverRequestSent = true;
    var displayAdUnitCodes = [];
    adUnits.forEach(function(adUnit) {
      displayAdUnitCodes.push(adUnit.code);
    });

    googletag.cmd.push(function() {
      pbjs.que.push(function() {
        pbjs.setTargetingForGPTAsync(displayAdUnitCodes);
        googletag.pubads().refresh();
      });
    });
  }

  setTimeout(function() {
    sendAdserverRequest();
  }, PREBID_TIMEOUT);
</script>
<script>
googletag.slots = googletag.slots || {};</script>
<script src="//thehill.com/sites/default/files/js/js_s3L_uC35AiN5EGYY533su-jccnLRp2aKpOnjgPLbo34.js"></script>
<script src="//thehill.com/sites/default/files/js/js_CU3-wpoRjXqQUzVH_fXkSKR_o43ZvBVuw8S_WXUsfTY.js"></script>
<script>
googletag.cmd.push(function() {
googletag.slots["leaderboard"] = googletag.defineSlot("1107919/Leaderboard_728x90_ROS_asynch", [[728, 90], [970, 90], [970, 250], [970, 415], [970, 500], [1237, 500]], "dfp-ad-leaderboard")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "dfp-ad-leaderboard")
  .setTargeting("Page", "HomePage");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["rightrail_top"] = googletag.defineSlot("1107919/RightRail_top_300x250_ROS_asynch", [[160, 600], [300, 250], [300, 600], [300, 1050]], "dfp-ad-rightrail_top")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "rightrail_top")
  .setTargeting("Page", "HomePage");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["rightrail_bottom"] = googletag.defineSlot("1107919/RightRail_bottom_300x250_ROS_asynch", [[300, 250], [300, 600], [300, 1050]], "dfp-ad-rightrail_bottom")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "rightrail_bottom")
  .setTargeting("Page", "HomePage");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["second_rightrail_bottom_ros_asynch"] = googletag.defineSlot("1107919/second_RightRail_bottom_ROS_asynch", [300, 250], "dfp-ad-second_rightrail_bottom_ros_asynch")
  .addService(googletag.pubads())
  .setTargeting("MoatSlotId", "second_rightrail_bottom_ros_asynch")
  .setTargeting("Page", "HomePage");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["new_1x1_asynch"] = googletag.defineSlot("1107919/1x1_asynch", [1, 1], "dfp-ad-new_1x1_asynch")
  .addService(googletag.pubads())
  .setTargeting("Page", "HomePage");
});
</script>
<script>
googletag.cmd.push(function() {
googletag.slots["1x1_oop"] = googletag.defineSlot("1107919/1x1_asynch", [1, 1], "dfp-ad-1x1_oop")
  .addService(googletag.pubads())
  .setTargeting("Page", "HomePage");
googletag.defineOutOfPageSlot("1107919/1x1_asynch", "dfp-ad-1x1_oop-oop")
  .addService(googletag.pubads())
  .setTargeting("Page", "HomePage");
});
</script>
<script>
googletag.cmd.push(function() {
  googletag.pubads().setTargeting("ksg", Krux.segments);
  googletag.pubads().setTargeting("kuid", Krux.user);
  var referrer = "";
  try{referrer = document.referrer; if(document.referrer.length > 0) referrer = new URL(document.referrer).hostname; } catch(e) {console.log(e)}
  googletag.pubads().setTargeting("referrer", referrer);
  googletag.pubads().enableSingleRequest();
  googletag.pubads().collapseEmptyDivs();
  
  googletag.enableServices();
});
</script>
<script src="//thehill.com/sites/default/files/js/js_UlgQwqBztlTNwD8PYNXSwCVbJHJOJiHEsF-8ZKBt8yE.js"></script>
<script>(function(i,s,o,g,r,a,m){i["GoogleAnalyticsObject"]=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,"script","//www.google-analytics.com/analytics.js","ga");ga("create", "UA-10188146-1", {"cookieDomain":"auto"});ga("send", "pageview");</script>
<script src="//thehill.com/sites/default/files/js/js_e-yxM1kseLRira1W37j0zXPOXLY2bv2cLfu80UiNhRk.js"></script>
<script src="//thehill.com/sites/default/files/js/js_uLClHTnF9VSdrCXwkDDKimAuoHjCJCWzvlaTqiQgb2o.js"></script>
<script nonce="iXohng2hoh">jQuery.extend(Drupal.settings, {"basePath":"\/","pathPrefix":"","ajaxPageState":{"theme":"thehill","theme_token":"UoLzhdbB1-FO7JhYxvwHQriXq2uZK4KPHlaDxD13Y-s","js":{"sites\/all\/modules\/jquery_update\/replace\/jquery\/1.7\/jquery.min.js":1,"misc\/jquery-extend-3.4.0.js":1,"misc\/jquery.once.js":1,"misc\/drupal.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.core.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.widget.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.effect.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.accordion.min.js":1,"sites\/all\/modules\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.effect-highlight.min.js":1,"0":1,"1":1,"2":1,"3":1,"4":1,"5":1,"sites\/all\/libraries\/colorbox\/jquery.colorbox-min.js":1,"sites\/all\/modules\/colorbox\/js\/colorbox.js":1,"sites\/all\/modules\/colorbox\/styles\/default\/colorbox_style.js":1,"6":1,"sites\/all\/modules\/thehill\/thehill_misc\/js\/person-links.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/jquery.caroufredsel.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.ba-throttle-debounce.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.mousewheel.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.touchSwipe.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/helper-plugins\/jquery.transit.min.js":1,"sites\/all\/modules\/thehill\/thehill_blocks\/js\/carousel\/thehill_carousel.js":1,"misc\/jquery.cookie.js":1,"sites\/all\/modules\/mostpopular\/js\/fade.js":1,"sites\/all\/modules\/mostpopular\/js\/mostpopular.js":1,"sites\/all\/modules\/ajaxblocks\/ajaxblocks.js":1,"sites\/all\/modules\/hide_submit\/js\/hide_submit.js":1,"sites\/all\/themes\/thehill\/js\/jquery.sticky-kit.min.js":1,"sites\/all\/themes\/thehill\/js\/jquery.visible.min.js":1,"sites\/all\/themes\/thehill\/js\/script.js":1,"sites\/all\/themes\/thehill\/js\/dfp.gpt.logger.override.js":1,"sites\/all\/themes\/thehill\/js\/overriden\/mostpopular.js":1,"sites\/all\/themes\/thehill\/js\/opa.js":1,"sites\/all\/themes\/thehill\/js\/th_jwplayer.js":1,"7":1,"8":1,"9":1,"10":1,"11":1,"12":1,"13":1,"14":1,"15":1,"16":1,"17":1,"18":1,"19":1,"20":1},"css":{"modules\/system\/system.base.css":1,"modules\/system\/system.menus.css":1,"modules\/system\/system.messages.css":1,"modules\/system\/system.theme.css":1,"sites\/all\/modules\/date\/date_api\/date.css":1,"sites\/all\/modules\/date\/date_popup\/themes\/datepicker.1.7.css":1,"modules\/field\/theme\/field.css":1,"sites\/all\/modules\/menu_attach_block\/menu_attach_block.css":1,"modules\/node\/node.css":1,"modules\/search\/search.css":1,"modules\/user\/user.css":1,"sites\/all\/modules\/views\/css\/views.css":1,"sites\/all\/modules\/media\/modules\/media_wysiwyg\/css\/media_wysiwyg.base.css":1,"sites\/all\/modules\/chartbeat\/chartbeat.css":1,"sites\/all\/modules\/colorbox\/styles\/default\/colorbox_style.css":1,"sites\/all\/modules\/ctools\/css\/ctools.css":1,"sites\/all\/modules\/thehill\/thehill_misc\/css\/person-links.css":1,"sites\/all\/modules\/mostpopular\/css\/mostpopular-basic.css":1,"sites\/all\/modules\/mostpopular\/css\/mostpopular-full.css":1,"sites\/all\/modules\/hide_submit\/css\/hide_submit.css":1,"sites\/all\/themes\/thehill\/system.menus.css":1,"sites\/all\/themes\/thehill\/css\/normalize.css":1,"sites\/all\/themes\/thehill\/css\/wireframes.css":1,"sites\/all\/themes\/thehill\/css\/layouts\/responsive-sidebars.css":1,"sites\/all\/themes\/thehill\/css\/page-backgrounds.css":1,"sites\/all\/themes\/thehill\/css\/tabs.css":1,"sites\/all\/themes\/thehill\/css\/pages.css":1,"sites\/all\/themes\/thehill\/css\/blocks.css":1,"sites\/all\/themes\/thehill\/css\/navigation.css":1,"sites\/all\/themes\/thehill\/css\/views-styles.css":1,"sites\/all\/themes\/thehill\/css\/nodes.css":1,"sites\/all\/themes\/thehill\/css\/comments.css":1,"sites\/all\/themes\/thehill\/css\/forms.css":1,"sites\/all\/themes\/thehill\/css\/fields.css":1,"sites\/all\/themes\/thehill\/css\/print.css":1,"sites\/all\/themes\/thehill\/css\/articles-teaser.css":1,"sites\/all\/themes\/thehill\/css\/font-awesome.min.css":1,"sites\/all\/themes\/thehill\/css\/opa.css":1,"sites\/all\/themes\/thehill\/css\/opa-fix.css":1,"sites\/all\/themes\/thehill\/css\/hilltv.css":1,"sites\/all\/themes\/thehill\/css\/th_jwplayer.css":1}},"chartbeat":{"uid":3100,"domain":"thehill.com","useCanonical":true,"noCookies":false},"colorbox":{"opacity":"0.85","current":"{current} of {total}","previous":"\u00ab Prev","next":"Next \u00bb","close":"Close","maxWidth":"98%","maxHeight":"98%","fixed":true,"mobiledetect":true,"mobiledevicewidth":"480px"},"ad_timeout":"25000","hide_submit":{"hide_submit_status":true,"hide_submit_method":"disable","hide_submit_css":"hide-submit-disable","hide_submit_abtext":"","hide_submit_atext":"","hide_submit_hide_css":"hide-submit-processing","hide_submit_hide_text":"Processing...","hide_submit_indicator_style":"expand-left","hide_submit_spinner_color":"#000","hide_submit_spinner_lines":12,"hide_submit_hide_fx":0,"hide_submit_reset_time":0},"urlIsAjaxTrusted":{"\/":true},"thehill_mostpopular":{"sid":"1","iid":"1","tag":""},"thehill_carousel":{"carousels":{"#thehill-mostpopular-block .mostpopular--content ul":{"auto":false,"infinite":false,"circular":true,"next":"#most_popular_next","mousewheel":false,"swipe":{"onMouse":true,"onTouch":true},"items":6,"mostpopular":true,"direction":"up","scroll":{"items":6,"duration":1000,"timeoutDuration":2000}}}},"mostpopular":{"url":"\/mostpopular\/ajax"},"ajaxblocks":"blocks=views-articles-articles_just_in\/mostpopular-1\/views-articles-just_in_more_news\u0026path=node"});</script>
  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4e8f5d7e1bc8befe"></script>
  <!-- Reload -->
<meta http-equiv="refresh" content="900"/>

<style>
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li:nth-child(2n+1) {
		margin-right: 0;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first {
	  padding-bottom: 55px;
	  width: 100%;
	  background: #FFF;
	  position: relative;
	  border-bottom: none;
	  margin-bottom: 0;
	  z-index: 1;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first:before {
	  content: "";
	  display: block;
	  width: 100%;
	  height: 1px;
	  background: #E0E2E7;
	  position: absolute;
	  bottom: 20px;
	  left: 0;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first h4 a {
	  color: #2B2C30;
	  font-weight: 700;
	  font-size: 42px;
	  line-height: 45px;
	  text-decoration: none;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first h4 a:hover {
	  color: #2A53C1;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first .submitted-by {
	  color: #666666;
	  text-transform: uppercase;
	  line-height: 15px;
	  letter-spacing: 0.05em;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first .submitted-by .submitted-date {
	  display: inline-block;
	  width: 81%;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first .submitted-by .submitted-date {
	  width: 83%;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first .submitted-by .social-share-count {
	  float: right;
	  line-height: 19px;
	  font-size: 12px;
	  letter-spacing: 0.03em;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first .section {
	  background: #2A53C1;
	  width: 170px;
	  padding: 0 10px;
	  line-height: 45px;
	  font-size: 14px;
	  margin-top: -23px;
	  position: relative;
	  z-index: 2;
	  font-family: 'Graphik Web', Helvetica, Arial, sans-serif;
	}
	.front #block-thehill-blocks-homepage-more-news .thehill_homepage_stories.top-section li.first .section:hover {
	    background: #203e91;
	}
	.front #block-thehill-blocks-homepage-video .thehill_homepage_stories.top-section .first {
	  border-bottom: 1px solid #DDDFE4;
	  margin-bottom: 20px;
	  padding-bottom: 20px;
	  width: 100%;
	  border-right: none;
	  padding-right: 0;
	}
	.front #block-thehill-blocks-homepage-video  .thehill_homepage_stories.top-section .first h4 a {
	  color: #000000;
	  font-weight: 600;
	  font-size: 42px;
	  line-height: 45px;
	  text-decoration: none;
	}
</style><meta name="twitter:widgets:csp" content="on">
<!-- iOS -->
 <meta name="apple-itunes-app" content="app-id=396640962">
<!-- end iOS -->
<!-- START Nativo -->
<script type="text/javascript" src="//s.ntv.io/serve/load.js" async></script>
<!-- END Nativo -->
<!-- NDN Start -->
<!-- script type="text/javascript" src="//launch.newsinc.com/js/embed.js"></script -->
<!-- NDN End -->
<script>window['moatYieldReady']=function(){return window.moatPrebidApi.setMoatTargetingForAllSlots()};</script>
<script>(function(){/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';var g=function(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}},l=this||self,m=/^[\w+/_-]+[=]{0,2}$/,p=null,q=function(){},r=function(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";
if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";else if("function"==b&&"undefined"==typeof a.call)return"object";return b},u=function(a,b){function c(){}c.prototype=b.prototype;a.prototype=new c;a.prototype.constructor=a};var v=function(a,b){Object.defineProperty(l,a,{configurable:!1,get:function(){return b},set:q})};var y=function(a,b){this.b=a===w&&b||"";this.a=x},x={},w={};var aa=function(a,b){a.src=b instanceof y&&b.constructor===y&&b.a===x?b.b:"type_error:TrustedResourceUrl";if(null===p)b:{b=l.document;if((b=b.querySelector&&b.querySelector("script[nonce]"))&&(b=b.nonce||b.getAttribute("nonce"))&&m.test(b)){p=b;break b}p=""}b=p;b&&a.setAttribute("nonce",b)};var z=function(){return Math.floor(2147483648*Math.random()).toString(36)+Math.abs(Math.floor(2147483648*Math.random())^+new Date).toString(36)};var A=function(a,b){b=String(b);"application/xhtml+xml"===a.contentType&&(b=b.toLowerCase());return a.createElement(b)},B=function(a){this.a=a||l.document||document};B.prototype.appendChild=function(a,b){a.appendChild(b)};var C=function(a,b,c,d,e,f){try{var k=a.a,h=A(a.a,"SCRIPT");h.async=!0;aa(h,b);k.head.appendChild(h);h.addEventListener("load",function(){e();d&&k.head.removeChild(h)});h.addEventListener("error",function(){0<c?C(a,b,c-1,d,e,f):(d&&k.head.removeChild(h),f())})}catch(n){f()}};var ba=l.atob("aHR0cHM6Ly93d3cuZ3N0YXRpYy5jb20vaW1hZ2VzL2ljb25zL21hdGVyaWFsL3N5c3RlbS8xeC93YXJuaW5nX2FtYmVyXzI0ZHAucG5n"),ca=l.atob("WW91IGFyZSBzZWVpbmcgdGhpcyBtZXNzYWdlIGJlY2F1c2UgYWQgb3Igc2NyaXB0IGJsb2NraW5nIHNvZnR3YXJlIGlzIGludGVyZmVyaW5nIHdpdGggdGhpcyBwYWdlLg=="),da=l.atob("RGlzYWJsZSBhbnkgYWQgb3Igc2NyaXB0IGJsb2NraW5nIHNvZnR3YXJlLCB0aGVuIHJlbG9hZCB0aGlzIHBhZ2Uu"),ea=function(a,b,c){this.b=a;this.f=new B(this.b);this.a=null;this.c=[];this.g=!1;this.i=b;this.h=c},F=function(a){if(a.b.body&&!a.g){var b=
function(){D(a);l.setTimeout(function(){return E(a,3)},50)};C(a.f,a.i,2,!0,function(){l[a.h]||b()},b);a.g=!0}},D=function(a){for(var b=G(1,5),c=0;c<b;c++){var d=H(a);a.b.body.appendChild(d);a.c.push(d)}b=H(a);b.style.bottom="0";b.style.left="0";b.style.position="fixed";b.style.width=G(100,110).toString()+"%";b.style.zIndex=G(2147483544,2147483644).toString();b.style["background-color"]=I(249,259,242,252,219,229);b.style["box-shadow"]="0 0 12px #888";b.style.color=I(0,10,0,10,0,10);b.style.display=
"flex";b.style["justify-content"]="center";b.style["font-family"]="Roboto, Arial";c=H(a);c.style.width=G(80,85).toString()+"%";c.style.maxWidth=G(750,775).toString()+"px";c.style.margin="24px";c.style.display="flex";c.style["align-items"]="flex-start";c.style["justify-content"]="center";d=A(a.f.a,"IMG");d.className=z();d.src=ba;d.style.height="24px";d.style.width="24px";d.style["padding-right"]="16px";var e=H(a),f=H(a);f.style["font-weight"]="bold";f.textContent=ca;var k=H(a);k.textContent=da;J(a,
e,f);J(a,e,k);J(a,c,d);J(a,c,e);J(a,b,c);a.a=b;a.b.body.appendChild(a.a);b=G(1,5);for(c=0;c<b;c++)d=H(a),a.b.body.appendChild(d),a.c.push(d)},J=function(a,b,c){for(var d=G(1,5),e=0;e<d;e++){var f=H(a);b.appendChild(f)}b.appendChild(c);c=G(1,5);for(d=0;d<c;d++)e=H(a),b.appendChild(e)},G=function(a,b){return Math.floor(a+Math.random()*(b-a))},I=function(a,b,c,d,e,f){return"rgb("+G(Math.max(a,0),Math.min(b,255)).toString()+","+G(Math.max(c,0),Math.min(d,255)).toString()+","+G(Math.max(e,0),Math.min(f,
255)).toString()+")"},H=function(a){a=A(a.f.a,"DIV");a.className=z();return a},E=function(a,b){0>=b||null!=a.a&&0!=a.a.offsetHeight&&0!=a.a.offsetWidth||(fa(a),D(a),l.setTimeout(function(){return E(a,b-1)},50))},fa=function(a){var b=a.c;var c="undefined"!=typeof Symbol&&Symbol.iterator&&b[Symbol.iterator];b=c?c.call(b):{next:g(b)};for(c=b.next();!c.done;c=b.next())(c=c.value)&&c.parentNode&&c.parentNode.removeChild(c);a.c=[];(b=a.a)&&b.parentNode&&b.parentNode.removeChild(b);a.a=null};var ia=function(a,b,c,d,e){var f=ha(c),k=function(n){n.appendChild(f);l.setTimeout(function(){f?(0!==f.offsetHeight&&0!==f.offsetWidth?b():a(),f.parentNode&&f.parentNode.removeChild(f)):a()},d)},h=function(n){document.body?k(document.body):0<n?l.setTimeout(function(){h(n-1)},e):b()};h(3)},ha=function(a){var b=document.createElement("div");b.className=a;b.style.width="1px";b.style.height="1px";b.style.position="absolute";b.style.left="-10000px";b.style.top="-10000px";b.style.zIndex="-10000";return b};var K={},L=null;var M=function(){},N="function"==typeof Uint8Array,O=function(a,b){a.b=null;b||(b=[]);a.j=void 0;a.f=-1;a.a=b;a:{if(b=a.a.length){--b;var c=a.a[b];if(!(null===c||"object"!=typeof c||Array.isArray(c)||N&&c instanceof Uint8Array)){a.g=b-a.f;a.c=c;break a}}a.g=Number.MAX_VALUE}a.i={}},P=[],Q=function(a,b){if(b<a.g){b+=a.f;var c=a.a[b];return c===P?a.a[b]=[]:c}if(a.c)return c=a.c[b],c===P?a.c[b]=[]:c},R=function(a,b,c){a.b||(a.b={});if(!a.b[c]){var d=Q(a,c);d&&(a.b[c]=new b(d))}return a.b[c]};
M.prototype.h=N?function(){var a=Uint8Array.prototype.toJSON;Uint8Array.prototype.toJSON=function(){var b;void 0===b&&(b=0);if(!L){L={};for(var c="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".split(""),d=["+/=","+/","-_=","-_.","-_"],e=0;5>e;e++){var f=c.concat(d[e].split(""));K[e]=f;for(var k=0;k<f.length;k++){var h=f[k];void 0===L[h]&&(L[h]=k)}}}b=K[b];c=[];for(d=0;d<this.length;d+=3){var n=this[d],t=(e=d+1<this.length)?this[d+1]:0;h=(f=d+2<this.length)?this[d+2]:0;k=n>>2;n=(n&
3)<<4|t>>4;t=(t&15)<<2|h>>6;h&=63;f||(h=64,e||(t=64));c.push(b[k],b[n],b[t]||"",b[h]||"")}return c.join("")};try{return JSON.stringify(this.a&&this.a,S)}finally{Uint8Array.prototype.toJSON=a}}:function(){return JSON.stringify(this.a&&this.a,S)};var S=function(a,b){return"number"!==typeof b||!isNaN(b)&&Infinity!==b&&-Infinity!==b?b:String(b)};M.prototype.toString=function(){return this.a.toString()};var T=function(a){O(this,a)};u(T,M);var U=function(a){O(this,a)};u(U,M);var ja=function(a,b){this.c=new B(a);var c=R(b,T,5);c=new y(w,Q(c,4)||"");this.b=new ea(a,c,Q(b,4));this.a=b},ka=function(a,b,c,d){b=new T(b?JSON.parse(b):null);b=new y(w,Q(b,4)||"");C(a.c,b,3,!1,c,function(){ia(function(){F(a.b);d(!1)},function(){d(!0)},Q(a.a,2),Q(a.a,3),Q(a.a,1))})};var la=function(a,b){V(a,"internal_api_load_with_sb",function(c,d,e){ka(b,c,d,e)});V(a,"internal_api_sb",function(){F(b.b)})},V=function(a,b,c){a=l.btoa(a+b);v(a,c)},W=function(a,b,c){for(var d=[],e=2;e<arguments.length;++e)d[e-2]=arguments[e];e=l.btoa(a+b);e=l[e];if("function"==r(e))e.apply(null,d);else throw Error("API not exported.");};var X=function(a){O(this,a)};u(X,M);var Y=function(a){this.h=window;this.a=a;this.b=Q(this.a,1);this.f=R(this.a,T,2);this.g=R(this.a,U,3);this.c=!1};Y.prototype.start=function(){ma();var a=new ja(this.h.document,this.g);la(this.b,a);na(this)};
var ma=function(){var a=function(){if(!l.frames.googlefcPresent)if(document.body){var b=document.createElement("iframe");b.style.display="none";b.style.width="0px";b.style.height="0px";b.style.border="none";b.style.zIndex="-1000";b.style.left="-1000px";b.style.top="-1000px";b.name="googlefcPresent";document.body.appendChild(b)}else l.setTimeout(a,5)};a()},na=function(a){var b=Date.now();W(a.b,"internal_api_load_with_sb",a.f.h(),function(){var c;var d=a.b,e=l[l.btoa(d+"loader_js")];if(e){e=l.atob(e);
e=parseInt(e,10);d=l.btoa(d+"loader_js").split(".");var f=l;d[0]in f||"undefined"==typeof f.execScript||f.execScript("var "+d[0]);for(;d.length&&(c=d.shift());)d.length?f[c]&&f[c]!==Object.prototype[c]?f=f[c]:f=f[c]={}:f[c]=null;c=Math.abs(b-e);c=1728E5>c?0:c}else c=-1;0!=c&&(W(a.b,"internal_api_sb"),Z(a,Q(a.a,6)))},function(c){Z(a,c?Q(a.a,4):Q(a.a,5))})},Z=function(a,b){a.c||(a.c=!0,a=new l.XMLHttpRequest,a.open("GET",b,!0),a.send())};(function(a,b){l[a]=function(c){for(var d=[],e=0;e<arguments.length;++e)d[e-0]=arguments[e];l[a]=q;b.apply(null,d)}})("__d3lUW8vwsKlB__",function(a){"function"==typeof window.atob&&(a=window.atob(a),a=new X(a?JSON.parse(a):null),(new Y(a)).start())});}).call(this);

window.__d3lUW8vwsKlB__("WyI4ODc5ZDhjM2I5Zjg1MTY4IixbbnVsbCxudWxsLG51bGwsImh0dHBzOi8vZnVuZGluZ2Nob2ljZXNtZXNzYWdlcy5nb29nbGUuY29tL2YvQUdTS1d4VnEtbi1uUDZCNkFYcmZrS0VoRGtsdWRUMm9QRXVQbDRvRjdqZXA0dDRybzEyU2R4Ukl5eV84cW1uUVYwZXhwQldwSlVfNEhqU0pmWXE4ekRWTkcxTVx1MDAzZCJdCixbMjAsImRpdi1ncHQtYWQiLDEwMCwiT0RnM09XUTRZek5pT1dZNE5URTJPQVx1MDAzZFx1MDAzZCIsW251bGwsbnVsbCxudWxsLCJodHRwczovL3d3dy5nc3RhdGljLmNvbS8wZW1uL2YvcC84ODc5ZDhjM2I5Zjg1MTY4LmpzP3VzcXBcdTAwM2RDQTQiXQpdCiwiaHR0cHM6Ly9mdW5kaW5nY2hvaWNlc21lc3NhZ2VzLmdvb2dsZS5jb20vbC9BR1NLV3hXdEt4cXR2TUhoT2RDM050M0dJM3Q4SktoamEzOHhDdGtud3ZBVmtTdXN3UWVsaWxLR0Q4SkNRLUh1ZXo1UlhhUmxIamhtMms1dzhRWmtsTXpFP2FiXHUwMDNkMSIsImh0dHBzOi8vZnVuZGluZ2Nob2ljZXNtZXNzYWdlcy5nb29nbGUuY29tL2wvQUdTS1d4VmlkNm5uU1BqS3pUNm9pNmk3Sms2M0xGUXpPZEdqTkZ0MWZrdE1QVG40YlYtczdxMDFsSU5ibXlGYnN2RWx6TDlLaTdldERjTUVMZW1lSmZ3Uz9hYlx1MDAzZDJcdTAwMjZzYmZcdTAwM2QxIiwiaHR0cHM6Ly9mdW5kaW5nY2hvaWNlc21lc3NhZ2VzLmdvb2dsZS5jb20vbC9BR1NLV3hYQThHZTN2bUxrZ1BrYWM0MW1wMjRNdDlaWFdfZGFEeEZvZjdja3VicWRLMDVBNEFsaFZDcFBRcTZVQlM3ajBFQUFDbE1YQmxJcmczQjlOSUFMP3NiZlx1MDAzZDIiXQo=");</script>  <!--[if lt IE 9]>
    <script>
      document.createElement('header');
      document.createElement('nav');
      document.createElement('section');
      document.createElement('article');
      document.createElement('aside');
      document.createElement('footer');
    </script>
  <![endif]-->
  <!-- Krux ControlTag for "The Hill" -->
  <script class="kxct" data-id="sf90wt710" data-timing="async" data-version="3.0" type="text/javascript">
    window.Krux||((Krux=function(){Krux.q.push(arguments)}).q=[]);
    (function()
      { var k=document.createElement('script');k.type='text/javascript';k.async=true; k.src=(location.protocol==='https:'?'https:':'http:')+'//cdn.krxd.net/controltag/sf90wt710.js'; var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(k,s); }
    ());
  </script>
</head>
<body class="html front not-logged-in one-sidebar sidebar-second page-node smaller-size" >
  <div id="skip-link">
    <a href="#main-content" class="element-invisible element-focusable">Skip to main content</a>
  </div>
            <div class="region region-before-header">
    <div id="block-system-main-menu" class="block block-system block-menu first last odd" role="navigation">
  <div class="expand-menu-header">
    <span class="expand-menu-close"></span>
    <a href="/"></a>
  </div>
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/signup" class="menu__link menu__link">sign up for newsletters</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/" class="menu__link menu__link active">Home</a></li>
<li class="menu__item is-active-trail is-expanded menu__item is-active-trail is-expanded expanded active-trail depth-1"><a href="/" class="menu__link is-active-trail menu__link is-active-trail active-trail active">News</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/homenews/senate" title="Senate" name="Senate" class="menu__link menu__link">Senate</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/house" class="menu__link menu__link">House</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/administration" class="menu__link menu__link">Administration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/business-a-lobbying" class="menu__link menu__link">Business</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation" class="menu__link menu__link">Regulation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/media" class="menu__link menu__link">Media</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/blog-briefing-room" class="menu__link menu__link">Briefing Room</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/state-watch" class="menu__link menu__link">State Watch</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/latino" class="menu__link menu__link">Latino</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/ballot-box/polls" class="menu__link menu__link">Polls</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/1230-report" class="menu__link menu__link">12:30 Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/politics-101" class="menu__link menu__link">Politics 101</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/floor-action" class="menu__link menu__link">Floor Action</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/in-the-know" class="menu__link menu__link">In The Know</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/homenews/sunday-talk-shows" class="menu__link menu__link">Sunday Talk Shows</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/policy" class="menu__link menu__link">Policy</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/policy/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/policy/national-security" class="menu__link menu__link">National Security</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/regulation" class="menu__link menu__link">Regulation</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/regulation/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/regulation/national-security" class="menu__link menu__link">National Security</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/opinion" class="menu__link menu__link">Opinion</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/opinion" class="menu__link menu__link">Contributors</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/opinion/columnists" class="menu__link menu__link">Columnists</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/contributor-application-form" class="menu__link menu__link">Become a contributor</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/blogs/congress-blog" class="menu__link menu__link">Congress Blog</a></li>
</ul></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/hilltv" class="menu__link menu__link">Hill.TV</a></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1 left"><a href="/video" class="menu__link menu__link left">Video</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/video/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/national-security" class="menu__link menu__link">National Security</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/sunday-shows" class="menu__link menu__link">Sunday Shows</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/video/events" class="menu__link menu__link">Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/video/lawmaker-interviews" class="menu__link menu__link">Lawmaker Interviews</a></li>
</ul></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/podcasts" class="menu__link menu__link">Podcasts</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/podcasts/hillcast" class="menu__link menu__link">HillCast</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/podcasts/history-cast" class="menu__link menu__link">HistoryCast</a></li>
</ul></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="http://edition.pagesuite-professional.co.uk/html5/reader/production/default.aspx?pubname=&amp;pubid=4fa6205e-3dd2-4d07-9a10-85dbaa7c0079" class="menu__link menu__link">Print Edition</a></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1 left single"><a href="/events" class="menu__link menu__link single left">Events</a><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/events" class="menu__link menu__link">Upcoming Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/events/past" class="menu__link menu__link">Past Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/events/about" class="menu__link menu__link">About</a></li>
</ul></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/people" class="menu__link menu__link">People</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
</ul>  <div id="expand-menu-social-share">
    <div class="expand-menu-headline">Follow Us</div>
    <a href="http://www.facebook.com/TheHill" class="social-share-facebook" target="_blank">Facebook</a>&nbsp;<a href="https://twitter.com/intent/follow?screen_name=thehill" class="social-share-twitter-follow" target="_blank">Twitter</a>&nbsp;<a href="https://www.linkedin.com/company/the-hill" class="social-share-linkedin" target="_blank">LinkedIn</a>&nbsp;  </div>
  <div id="expand-menu-footer">
    <div class="expand-menu-headline"><a href="/">TheHill.com</a></div>
    &copy; 1996-2020 News Communication
    <ul class="links"><li class="menu-3055 first"><a href="/terms-and-conditions">Terms &amp; Conditions</a></li>
<li class="menu-3054 last"><a href="/privacy-policy">Privacy Policy</a></li>
</ul>  </div>
</div>
  </div>
    <header id="header" role="banner" >
    <div>
      <div class="header_blocks">
                      </div>
      <div class="clear"></div>
      <div id="navigation">
        <nav id="main-menu" role="navigation">
          <div class="expanded-menu"></div>
                        <div class="region region-navigation">
    <div id="block-menu-menu-top-menu" class="block block-menu first last odd" role="navigation">

        <h2 class="block__title block-title">Top menu</h2>
    
  <div class="menu-wrapper"><ul class="menu"><li class="menu__item is-active-trail is-expanded menu__item is-active-trail is-expanded first expanded active-trail depth-1"><a href="/" class="menu__link is-active-trail menu__link is-active-trail active-trail active">News</a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/homenews/senate" class="menu__link menu__link">Senate</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/house" class="menu__link menu__link">House</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/administration" class="menu__link menu__link">Administration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/business-a-lobbying" class="menu__link menu__link">Business</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/regulation" class="menu__link menu__link">Regulation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/media" class="menu__link menu__link">Media</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/blog-briefing-room" class="menu__link menu__link">Briefing Room</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/state-watch" class="menu__link menu__link">State Watch</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/latino" class="menu__link menu__link">Latino</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/ballot-box/polls" class="menu__link menu__link">Polls</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/1230-report" class="menu__link menu__link">12:30 Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/homenews/politics-101" class="menu__link menu__link">Politics 101</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/floor-action" class="menu__link menu__link">Floor Action</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/blogs/in-the-know" class="menu__link menu__link">In The Know</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/homenews/sunday-talk-shows" class="menu__link menu__link">Sunday Talk Shows</a></li>
</ul></div></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/policy" class="menu__link menu__link">Policy</a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/policy/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/policy/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/policy/national-security" class="menu__link menu__link">National Security</a></li>
</ul></div></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/opinion" class="menu__link menu__link">Opinion</a><div class="menu-wrapper opa-opinion-menu"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/opinion/columnists" class="menu__link menu__link">Columnists</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/blogs/congress-blog" class="menu__link menu__link">Congress Blog</a></li>
</ul><div class="opa-opinion-submenu">
            <a href="/opinion" class="opa-opinion-submenu-all">All Contributors</a>
            <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/opinion/campaign" class="menu__link menu__link">- Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/civil-rights" class="menu__link menu__link">- Civil Rights</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/criminal-justice" class="menu__link menu__link">- Criminal Justice</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/education" class="menu__link menu__link">- Education</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/energy-environment" class="menu__link menu__link">- Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/finance" class="menu__link menu__link">- Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/healthcare" class="menu__link menu__link">- Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/immigration" class="menu__link menu__link">- Immigration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/international" class="menu__link menu__link">- International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/judiciary" class="menu__link menu__link">- Judiciary</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/technology" class="menu__link menu__link">- Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/white-house" class="menu__link menu__link">- White House</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/contributor-application-form" class="menu__link menu__link">- Become A Contributor</a></li>
</ul>
            </div></div></li>
<li class="menu__item is-expanded menu__item is-expanded expanded depth-1"><a href="/events" class="menu__link menu__link">Events</a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/events" class="menu__link menu__link">Upcoming Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/events/about" class="menu__link menu__link">About</a></li>
</ul></div></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/resources/classifieds/employer" class="menu__link menu__link">Jobs</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/hilltv" class="menu__link menu__link hill-tv">HILL.TV</a></li>
<li class="menu__item is-expanded menu__item is-expanded expanded black depth-1"><a href="/changing-america" class="menu__link menu__link">Changing America </a><div class="menu-wrapper"><ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-2"><a href="/changing-america/respect" class="menu__link menu__link">Respect</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/changing-america/sustainability" class="menu__link menu__link">Sustainability</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/changing-america/enrichment" class="menu__link menu__link">Enrichment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-2"><a href="/changing-america/resilience" class="menu__link menu__link">Resilience</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-2"><a href="/changing-america/well-being" class="menu__link menu__link">Well-Being</a></li>
</ul></div></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf covid-19 depth-1"><a href="/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
</ul></div>
</div>
  </div>
                                  <div class="region region-controls">
    <div id="block-social-share-social-share" class="block block-social-share first odd">

      
  <a href="http://www.facebook.com/TheHill" class="social-share-facebook" target="_blank">Facebook</a>&nbsp;<a href="https://twitter.com/intent/follow?screen_name=thehill" class="social-share-twitter-follow" target="_blank">Twitter</a>&nbsp;<a href="https://www.linkedin.com/company/the-hill" class="social-share-linkedin" target="_blank">LinkedIn</a>&nbsp;
</div>
<div id="block-search-form" class="block block-search last even" role="search">

      
  <form action="/" method="post" id="search-block-form" accept-charset="UTF-8"><div><div class="container-inline">
      <h2 class="element-invisible">Search form</h2>
    <div class="form-item form-type-textfield form-item-search-block-form">
  <label class="element-invisible" for="edit-search-block-form--2">Search </label>
 <input title="Enter the terms you wish to search for." placeholder="TYPE TO SEARCH" type="text" id="edit-search-block-form--2" name="search_block_form" value="" size="15" maxlength="128" class="form-text" />
</div>
<div class="form-actions form-wrapper" id="edit-actions"><input type="submit" id="edit-submit" name="op" value="Search" class="form-submit" /></div><input type="hidden" name="form_build_id" value="form-irsgZ0uSrurpWJxNA1esYkR5bXXVxBX1az40tzk-6oA" />
<input type="hidden" name="form_id" value="search_block_form" />
</div>
</div></form>
</div>
  </div>
                  </nav>  
      </div>
    </div>
  </header><div id="page">
  <div id="main" class="">
      <div class="region region-highlighted">
    <div id="block-term-queue-0" class="block block-term-queue first last odd">

        <h2 class="block__title block-title">TRENDING:</h2>
    
  <ul class="term-queue-links"><li class="0 first"><a href="/social-tags/coronavirus">Coronavirus</a></li>
<li class="1"><a href="/person/donald-trump">Donald Trump</a></li>
<li class="2 last"><a href="/person/joe-biden">Joe Biden</a></li>
</ul>
</div>
  </div>
      <div class="region region-top-page">
    <div id="block-dfp-leaderboard" class="block block-dfp first last odd">

      
  <div id="dfp-ad-leaderboard-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-leaderboard" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-leaderboard");
    });
  </script>
</div>

</div>
</div>
  </div>
        <div class="section-top-wrapper">
              <div class="left-sidebar">
          <a href="/" title="TheHill" rel="home" alt="TheHill.com">
            <img class="logo" alt="TheHill.com" src="/sites/all/themes/thehill/images/redesign/thehill-logo-big.png" />
          </a>
                  </div>
        <div class="section-top">
            <div class="region region-front-top">
    <div id="block-thehill-blocks-homepage-headline-story" class="block block-thehill-blocks first last odd">

      
    <div class="headline-story-image">
    <a href="/homenews/administration/499269-trump-escalates-fight-against-mail-in-voting" title="Trump escalates fight against mail-in voting" >
      <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_feature_image/public/trumpdonald_052120getty_mail-in.jpg?itok=7_nyRQ8g" width="980" height="471" alt="Trump escalates fight against mail-in voting" />    </a>
  </div>
    <h1 class="top-story-headline">
    <a href="/homenews/administration/499269-trump-escalates-fight-against-mail-in-voting" title="Trump escalates fight against mail-in voting" >
      Trump escalates fight against mail-in voting    </a>
  </h1>
    <div class="credits">&copy; Getty Images</div>
</div>
  </div>
        </div>
        <div class="left-sidebar-2">
            <div class="region region-front-top-left">
    <div id="block-views-articles-articles-just-in" class="block block-views first last odd">

      
  <div id="block-views-articles-articles_just_in-ajax-content" class="ajaxblocks-wrapper"></div>
</div>
  </div>
        </div>
            <div class="section-top list">
        <div class="section-top-content">
            <div class="region region-front-top-center">
    <div id="block-thehill-blocks-homepage-top-stories" class="block block-thehill-blocks first last odd">

      
      <div class="block thehill_homepage_stories top">
    <div class="item-list"><ul><li class="first">  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/state-watch/499238-us-enters-risky-new-phase-of-coronavirus-fight" title="US enters risky new phase of coronavirus fight" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/coronavirus_montana_baseball_052120getty_reopenings.jpg?itok=4rvSMXup" width="300" height="168" alt="US enters risky new phase of coronavirus fight" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/state-watch" title="State Watch" class="section_flag">State Watch</a>    </div>
        <h4>
      <a href="/homenews/state-watch/499238-us-enters-risky-new-phase-of-coronavirus-fight" title="US enters risky new phase of coronavirus fight" >
        US enters risky new phase of coronavirus fight      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/peter-sullivan">Peter Sullivan</a>            <span class="submitted-date">6h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/state-watch/499238-us-enters-risky-new-phase-of-coronavirus-fight"        class="social-share-count social-share-count-499238"
        data-nid="499238">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/campaign/499241-where-biden-trump-stand-in-key-swing-states" title="Where Biden, Trump stand in key swing states" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/trumpdonald_bidenjoe_052220getty_split_battlegrounds.jpg?itok=P5lBBgao" width="300" height="168" alt="Where Biden, Trump stand in key swing states" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/campaign" title="Campaign" class="section_flag">Campaign</a>    </div>
        <h4>
      <a href="/homenews/campaign/499241-where-biden-trump-stand-in-key-swing-states" title="Where Biden, Trump stand in key swing states" >
        Where Biden, Trump stand in key swing states      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/jonathan-easley">Jonathan Easley</a>            <span class="submitted-date">12h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/campaign/499241-where-biden-trump-stand-in-key-swing-states"        class="social-share-count social-share-count-499241"
        data-nid="499241">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/house/499291-house-republicans-voice-optimism-on-winning-back-the-house-following-special" title="House Republicans voice optimism on winning back the House following special election victories" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/emmertom_013018gn_lead.jpg?itok=-bRk7Q8k" width="300" height="168" alt="House Republicans voice optimism on winning back the House following special election victories" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/house" title="House" class="section_flag">House</a>    </div>
        <h4>
      <a href="/homenews/house/499291-house-republicans-voice-optimism-on-winning-back-the-house-following-special" title="House Republicans voice optimism on winning back the House following special election victories" >
        House Republicans voice optimism on winning back the House following special election victories      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/juliegrace-brufke">Juliegrace Brufke</a>            <span class="submitted-date">7h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/house/499291-house-republicans-voice-optimism-on-winning-back-the-house-following-special"        class="social-share-count social-share-count-499291"
        data-nid="499291">
      </span>
    </div>
  </div>
</li>
<li class="last">  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/administration/499321-trump-seen-golfing-at-his-virginia-club-over-memorial-day-weekend" title="Trump seen golfing at his Virginia club over Memorial Day weekend" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/20200523_trumpdonald_gettyimages.jpg?itok=8k9aV_T4" width="300" height="168" alt="Trump seen golfing at his Virginia club over Memorial Day weekend" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/administration" title="Administration" class="section_flag">Administration</a>    </div>
        <h4>
      <a href="/homenews/administration/499321-trump-seen-golfing-at-his-virginia-club-over-memorial-day-weekend" title="Trump seen golfing at his Virginia club over Memorial Day weekend" >
        Trump seen golfing at his Virginia club over Memorial Day weekend      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/kaelan-deese" title="All articles by Kaelan Deese">Kaelan Deese</a>            <span class="submitted-date">1h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/administration/499321-trump-seen-golfing-at-his-virginia-club-over-memorial-day-weekend"        class="social-share-count social-share-count-499321"
        data-nid="499321">
      </span>
    </div>
  </div>
</li>
</ul></div>  </div>

    <div class="block thehill_homepage_stories middle">
    <div class="item-list"><ul><li class="first">  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/news/499323-remdesivir-alone-not-enough-to-treat-covid-19-study-says" title="Remdesivir alone not enough to treat COVID-19, study says" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/1230remdesivir.jpg?itok=lgZP3VwT" width="75" height="75" alt="Remdesivir alone not enough to treat COVID-19, study says" />        </a>
      </div>
        <h4>
      <a href="/homenews/news/499323-remdesivir-alone-not-enough-to-treat-covid-19-study-says" title="Remdesivir alone not enough to treat COVID-19, study says" >
        Remdesivir alone not enough to treat COVID-19, study says      </a>
    </h4>
    <div class="section date">
      <a href="/homenews/news" title="News" class="section_flag">News</a>      <span class="submitted-date">05/23/20</span>
          </div>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/campaign/499282-sessions-fires-back-at-trump-over-recusal-i-did-my-duty-and-youre-damn" title="Sessions fires back at Trump over recusal: 'I did my duty & you're damn fortunate I did"" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/trumpdonald_sessionsjeff_110819getty.jpg?itok=0TbqUpRn" width="75" height="75" alt="Sessions fires back at Trump over recusal: &#039;I did my duty &amp; you&#039;re damn fortunate I did&quot;" />        </a>
      </div>
        <h4>
      <a href="/homenews/campaign/499282-sessions-fires-back-at-trump-over-recusal-i-did-my-duty-and-youre-damn" title="Sessions fires back at Trump over recusal: 'I did my duty & you're damn fortunate I did"" >
        Sessions fires back at Trump over recusal: 'I did my duty & you're damn fortunate I did"      </a>
    </h4>
    <div class="section date">
      <a href="/homenews/campaign" title="Campaign" class="section_flag">Campaign</a>      <span class="submitted-date">05/23/20</span>
          </div>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/business-a-lobbying/499199-memorial-day-weekend-deals-latest-economic-blow-to-travel-industry" title="Memorial Day weekend deals latest economic blow to travel industry" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/coronavirus_nc_052020getty_memorial-weekend.jpg?itok=VkiQ0QHw" width="75" height="75" alt="Memorial Day weekend deals latest economic blow to travel industry" />        </a>
      </div>
        <h4>
      <a href="/business-a-lobbying/499199-memorial-day-weekend-deals-latest-economic-blow-to-travel-industry" title="Memorial Day weekend deals latest economic blow to travel industry" >
        Memorial Day weekend deals latest economic blow to travel industry      </a>
    </h4>
    <div class="section date">
      <a href="/business-a-lobbying" title="Business &amp; Lobbying" class="section_flag">Business &amp; Lobbying</a>      <span class="submitted-date">05/23/20</span>
          </div>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/campaign/499305-trump-campaign-to-unleash-1-million-on-digital-ads-hitting-bidens-you-aint" title="Trump campaign to unleash $1M on digital ads hitting Biden over 'you ain't black' comment" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/trumpdonald2_05222020getty.jpg?itok=_Z-0bt4I" width="75" height="75" alt="Trump campaign to unleash $1M on digital ads hitting Biden over &#039;you ain&#039;t black&#039; comment" />        </a>
      </div>
        <h4>
      <a href="/homenews/campaign/499305-trump-campaign-to-unleash-1-million-on-digital-ads-hitting-bidens-you-aint" title="Trump campaign to unleash $1M on digital ads hitting Biden over 'you ain't black' comment" >
        Trump campaign to unleash $1M on digital ads hitting Biden over 'you ain't black' comment      </a>
    </h4>
    <div class="section date">
      <a href="/homenews/campaign" title="Campaign" class="section_flag">Campaign</a>      <span class="submitted-date">05/23/20</span>
          </div>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/administration/499209-mcenany-clashes-with-reporters-at-combative-presser" title="McEnany clashes with reporters at combative presser" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/mcenanykayleigh_05222020getty_0.jpg?itok=U3kzVky4" width="75" height="75" alt="McEnany clashes with reporters at combative presser" />        </a>
      </div>
        <h4>
      <a href="/homenews/administration/499209-mcenany-clashes-with-reporters-at-combative-presser" title="McEnany clashes with reporters at combative presser" >
        McEnany clashes with reporters at combative presser      </a>
    </h4>
    <div class="section date">
      <a href="/homenews/administration" title="Administration" class="section_flag">Administration</a>      <span class="submitted-date">05/22/20</span>
          </div>
  </div>
</li>
<li class="last">  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/administration/499184-trump-demands-governors-allow-churches-to-open" title="Trump demands governors allow churches to open" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/trumpdonald3_05222020getty.jpg?itok=srALAxkz" width="75" height="75" alt="Trump demands governors allow churches to open" />        </a>
      </div>
        <h4>
      <a href="/homenews/administration/499184-trump-demands-governors-allow-churches-to-open" title="Trump demands governors allow churches to open" >
        Trump demands governors allow churches to open      </a>
    </h4>
    <div class="section date">
      <a href="/homenews/administration" title="Administration" class="section_flag">Administration</a>      <span class="submitted-date">05/22/20</span>
          </div>
  </div>
</li>
</ul></div>  </div>


</div>
  </div>
            <div class="region region-front-top-right">
    <div id="block-dfp-rightrail-top" class="block block-dfp first odd">

      
  <div id="dfp-ad-rightrail_top-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-rightrail_top" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-rightrail_top");
    });
  </script>
</div>

</div>
</div>
<div id="block-mostpopular-1" class="block block-mostpopular last even">

        <h2 class="block__title block-title">Most Popular</h2>
    
  <div id="block-mostpopular-1-ajax-content" class="ajaxblocks-wrapper"></div>
</div>
  </div>
        </div>
      </div>
    </div>
        <div class="section-news">
        <div class="region region-front-news-left">
    <div id="block-views-articles-just-in-more-news" class="block block-views first last odd">

        <h2 class="block__title block-title">More News</h2>
    
  <div id="block-views-articles-just_in_more_news-ajax-content" class="ajaxblocks-wrapper"></div>
</div>
  </div>
        <div class="region region-front-news-center">
    <div id="block-thehill-blocks-homepage-more-news" class="block block-thehill-blocks first last odd">

      
      <div class="block thehill_homepage_stories top">
    <div class="item-list"><ul><li class="first">  <div class="top-story-item featured-story ">
          <div class="story_image">
                
        <a href="/homenews/campaign/499270-trump-gop-go-all-in-on-anti-china-strategy" title="Trump, GOP go all-in on anti-China strategy" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/article_full/public/jinpingxi_052220getty_gop-china.jpg?itok=SrWm9yzz" width="645" height="363" alt="Trump, GOP go all-in on anti-China strategy" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/campaign" title="Campaign" class="section_flag">Campaign</a>    </div>
        <h4>
      <a href="/homenews/campaign/499270-trump-gop-go-all-in-on-anti-china-strategy" title="Trump, GOP go all-in on anti-China strategy" >
        Trump, GOP go all-in on anti-China strategy      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/scott-wong">Scott Wong</a>            <span class="submitted-date">05/23/20 03:09 PM EDT</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/campaign/499270-trump-gop-go-all-in-on-anti-china-strategy"        class="social-share-count social-share-count-499270"
        data-nid="499270">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/policy/healthcare/499146-trump-to-send-5b-to-nursing-homes-for-covid-19-help" title="Trump to send $5B to nursing homes for COVID-19 help" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/nursinghome_getty.jpg?itok=Aw4XxTUL" width="300" height="168" alt="Trump to send $5B to nursing homes for COVID-19 help" />        </a>
      </div>
        <div class="section article">
      <a href="/policy/healthcare" title="Healthcare" class="section_flag">Healthcare</a>    </div>
        <h4>
      <a href="/policy/healthcare/499146-trump-to-send-5b-to-nursing-homes-for-covid-19-help" title="Trump to send $5B to nursing homes for COVID-19 help" >
        Trump to send $5B to nursing homes for COVID-19 help      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/jessie-hellmann">Jessie Hellmann</a>            <span class="submitted-date">1d ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/policy/healthcare/499146-trump-to-send-5b-to-nursing-homes-for-covid-19-help"        class="social-share-count social-share-count-499146"
        data-nid="499146">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/senate/499298-senate-democrats-call-on-trump-administration-to-let-planned-parenthood" title="Senate Democrats call on Trump administration to let Planned Parenthood centers keep PPP loans" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/schumercharles_031020bc4_lead.jpg?itok=n5h-aAVi" width="300" height="168" alt="Senate Democrats call on Trump administration to let Planned Parenthood centers keep PPP loans" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/senate" title="Senate" class="section_flag">Senate</a>    </div>
        <h4>
      <a href="/homenews/senate/499298-senate-democrats-call-on-trump-administration-to-let-planned-parenthood" title="Senate Democrats call on Trump administration to let Planned Parenthood centers keep PPP loans" >
        Senate Democrats call on Trump administration to let Planned Parenthood centers keep PPP loans      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/tal-axelrod">Tal Axelrod</a>            <span class="submitted-date">5h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/senate/499298-senate-democrats-call-on-trump-administration-to-let-planned-parenthood"        class="social-share-count social-share-count-499298"
        data-nid="499298">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/state-watch/499315-ny-coronavirus-one-day-coronavirus-death-toll-falls-below-100-for-the" title="NY one-day coronavirus death toll falls below 100 for the first time in weeks" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/cuomoandrew_052120getty.jpg?itok=qZSXLCMB" width="300" height="168" alt="NY one-day coronavirus death toll falls below 100 for the first time in weeks" />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/state-watch" title="State Watch" class="section_flag">State Watch</a>    </div>
        <h4>
      <a href="/homenews/state-watch/499315-ny-coronavirus-one-day-coronavirus-death-toll-falls-below-100-for-the" title="NY one-day coronavirus death toll falls below 100 for the first time in weeks" >
        NY one-day coronavirus death toll falls below 100 for the first time in weeks      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/j-edward-moreno">J. Edward Moreno</a>            <span class="submitted-date">2h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/state-watch/499315-ny-coronavirus-one-day-coronavirus-death-toll-falls-below-100-for-the"        class="social-share-count social-share-count-499315"
        data-nid="499315">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/state-watch/499301-missouri-officials-hairstylist-with-covid-19-serviced-nearly-100-clients" title="Missouri officials: Hairstylist with COVID-19 serviced nearly 100 clients while sick " >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/texasbarbershop_051920getty.jpg?itok=AWIn_EBJ" width="300" height="168" alt="Missouri officials: Hairstylist with COVID-19 serviced nearly 100 clients while sick " />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/state-watch" title="State Watch" class="section_flag">State Watch</a>    </div>
        <h4>
      <a href="/homenews/state-watch/499301-missouri-officials-hairstylist-with-covid-19-serviced-nearly-100-clients" title="Missouri officials: Hairstylist with COVID-19 serviced nearly 100 clients while sick " >
        Missouri officials: Hairstylist with COVID-19 serviced nearly 100 clients while sick       </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/kaelan-deese">Kaelan Deese</a>            <span class="submitted-date">5h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/state-watch/499301-missouri-officials-hairstylist-with-covid-19-serviced-nearly-100-clients"        class="social-share-count social-share-count-499301"
        data-nid="499301">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/homenews/state-watch/499299-washington-state-bishops-respond-to-trumps-push-to-reopen-churches-we" title="Washington state bishops respond to Trump's push to reopen churches: 'We will wait' " >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/blogs/steeple_catholicchurch_012414thinkstock.jpg?itok=pVwb6l-j" width="300" height="168" alt="Washington state bishops respond to Trump&#039;s push to reopen churches: &#039;We will wait&#039; " />        </a>
      </div>
        <div class="section article">
      <a href="/homenews/state-watch" title="State Watch" class="section_flag">State Watch</a>    </div>
        <h4>
      <a href="/homenews/state-watch/499299-washington-state-bishops-respond-to-trumps-push-to-reopen-churches-we" title="Washington state bishops respond to Trump's push to reopen churches: 'We will wait' " >
        Washington state bishops respond to Trump's push to reopen churches: 'We will wait'       </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/kaelan-deese">Kaelan Deese</a>            <span class="submitted-date">5h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/homenews/state-watch/499299-washington-state-bishops-respond-to-trumps-push-to-reopen-churches-we"        class="social-share-count social-share-count-499299"
        data-nid="499299">
      </span>
    </div>
  </div>
</li>
<li class="last">  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/blogs/blog-briefing-room/news/499289-texas-mayor-defends-comments-saying-women-shouldnt-lead-prayer" title="Texas mayor defends comments saying women shouldn't lead prayer in public" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/hogueeric_wyliecityhall_05232020.jpg?itok=xQiKSOq4" width="300" height="168" alt="Texas mayor defends comments saying women shouldn&#039;t lead prayer in public" />        </a>
      </div>
        <div class="section blogs">
      <a href="/blogs/blog-briefing-room" title="Blog Briefing Room" class="section_flag">Blog Briefing Room</a>    </div>
        <h4>
      <a href="/blogs/blog-briefing-room/news/499289-texas-mayor-defends-comments-saying-women-shouldnt-lead-prayer" title="Texas mayor defends comments saying women shouldn't lead prayer in public" >
        Texas mayor defends comments saying women shouldn't lead prayer in public      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/morgan-gstalter">Morgan Gstalter</a>            <span class="submitted-date">7h ago</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/blogs/blog-briefing-room/news/499289-texas-mayor-defends-comments-saying-women-shouldnt-lead-prayer"        class="social-share-count social-share-count-499289"
        data-nid="499289">
      </span>
    </div>
  </div>
</li>
</ul></div>  </div>

    <div class="block thehill_homepage_stories middle">
    <div class="item-list"><ul><li class="first">  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/campaign/499214-african-american-figures-slam-biden-on-you-aint-black-comments" title="African American figures slam Biden on 'you ain't black' comments" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/mreportbidenjoe.png?itok=epOJNli6" width="75" height="75" alt="African American figures slam Biden on &#039;you ain&#039;t black&#039; comments" />        </a>
      </div>
        <div class="section date">
      <a href="/homenews/campaign" title="Campaign" class="section_flag">Campaign</a>      <span class="submitted-date">05/22/20</span>
    </div>
    <h4>
      <a href="/homenews/campaign/499214-african-american-figures-slam-biden-on-you-aint-black-comments" title="African American figures slam Biden on 'you ain't black' comments" >
        African American figures slam Biden on 'you ain't black' comments      </a>
    </h4>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/administration/499253-trump-to-attend-spacex-launch-in-florida" title="Trump to attend SpaceX launch in Florida" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/spacex_falcon9_042220upi_lead.jpg?itok=70Oh4k32" width="75" height="75" alt="Trump to attend SpaceX launch in Florida" />        </a>
      </div>
        <div class="section date">
      <a href="/homenews/administration" title="Administration" class="section_flag">Administration</a>      <span class="submitted-date">05/22/20</span>
    </div>
    <h4>
      <a href="/homenews/administration/499253-trump-to-attend-spacex-launch-in-florida" title="Trump to attend SpaceX launch in Florida" >
        Trump to attend SpaceX launch in Florida      </a>
    </h4>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/state-watch/499256-nj-governor-permits-gatherings-of-25-people-in-time-for-memorial-day" title="NJ governor permits gatherings of 25 people in time for Memorial Day weekend" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/newjersey_boardwalk_051620getty.jpg?itok=qB0M4qd8" width="75" height="75" alt="NJ governor permits gatherings of 25 people in time for Memorial Day weekend" />        </a>
      </div>
        <div class="section date">
      <a href="/homenews/state-watch" title="State Watch" class="section_flag">State Watch</a>      <span class="submitted-date">05/22/20</span>
    </div>
    <h4>
      <a href="/homenews/state-watch/499256-nj-governor-permits-gatherings-of-25-people-in-time-for-memorial-day" title="NJ governor permits gatherings of 25 people in time for Memorial Day weekend" >
        NJ governor permits gatherings of 25 people in time for Memorial Day weekend      </a>
    </h4>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/policy/healthcare/499140-anti-malaria-drug-hyped-by-trump-has-high-death-risk-in-covid-patients-new" title="Anti-malaria drug touted by Trump has high death risk in COVID-19 patients, new study shows" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/trumpdonald2_05212020getty.jpg?itok=_gp5Sjch" width="75" height="75" alt="Anti-malaria drug touted by Trump has high death risk in COVID-19 patients, new study shows" />        </a>
      </div>
        <div class="section date">
      <a href="/policy/healthcare" title="Healthcare" class="section_flag">Healthcare</a>      <span class="submitted-date">05/22/20</span>
    </div>
    <h4>
      <a href="/policy/healthcare/499140-anti-malaria-drug-hyped-by-trump-has-high-death-risk-in-covid-patients-new" title="Anti-malaria drug touted by Trump has high death risk in COVID-19 patients, new study shows" >
        Anti-malaria drug touted by Trump has high death risk in COVID-19 patients, new study shows      </a>
    </h4>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/homenews/state-watch/499243-michigan-governor-extends-stay-at-home-order-through-june-12" title="Michigan governor extends stay-at-home order through June 12" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/whitmergretchen_011529getty_lead.jpg?itok=lTDCPWRG" width="75" height="75" alt="Michigan governor extends stay-at-home order through June 12" />        </a>
      </div>
        <div class="section date">
      <a href="/homenews/state-watch" title="State Watch" class="section_flag">State Watch</a>      <span class="submitted-date">05/22/20</span>
    </div>
    <h4>
      <a href="/homenews/state-watch/499243-michigan-governor-extends-stay-at-home-order-through-june-12" title="Michigan governor extends stay-at-home order through June 12" >
        Michigan governor extends stay-at-home order through June 12      </a>
    </h4>
  </div>
</li>
<li class="last">  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/policy/cybersecurity/499225-lawmakers-ask-for-briefings-on-chinese-targeting-of-coronavirus-research" title="Lawmakers ask for briefings on Chinese targeting of coronavirus research" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_75x75/public/coronavirus_research_022820getty_lab.jpg?itok=OGZ8wcWt" width="75" height="75" alt="Lawmakers ask for briefings on Chinese targeting of coronavirus research" />        </a>
      </div>
        <div class="section date">
      <a href="/policy/cybersecurity" title="Cybersecurity" class="section_flag">Cybersecurity</a>      <span class="submitted-date">05/22/20</span>
    </div>
    <h4>
      <a href="/policy/cybersecurity/499225-lawmakers-ask-for-briefings-on-chinese-targeting-of-coronavirus-research" title="Lawmakers ask for briefings on Chinese targeting of coronavirus research" >
        Lawmakers ask for briefings on Chinese targeting of coronavirus research      </a>
    </h4>
  </div>
</li>
</ul></div>  </div>


</div>
  </div>
        <div class="region region-front-news-right">
    <div id="block-block-3" class="block block-block first odd">

        <h2 class="block__title block-title">More From The Web</h2>
    
  <div class="newsmax-fark-block-target" height="0" width="0"></div>

<script>
var block="";
var tgt_item = jQuery('.node.view-mode-full').length - 1;
var isHero = jQuery('.hero-image').length;
tgt_item = tgt_item < 0 ? 0 : tgt_item; 
var tgt = jQuery(".newsmax-fark-block-target")[tgt_item];  
var rnd = Math.floor(Math.random(100) * 100);
var query_param = window.location.search; 
var fark_override = false;
if(query_param.length > 0 && query_param.indexOf("fark_override") >= 0) {
	fark_override = true;
}
if(!isHero) { 
if(rnd >= 30 && !fark_override) { 
    block += "<p style=\"font-family:Arial;color:#666666;font-size:11px;text-align:right;margin-bottom:-24px;padding-top:10px\">Sponsored<\/p>";
    block += "<div style=\"margin:20px 0;\">";
    block += "<div id=\"yp6_inject_bn75TWX4O573bji1xoe95X\"><\/div>";
    block += "<\/div>";
    block += "<!-- End NewsMax -->";
    jQuery(block).insertBefore(tgt);
    jQuery.ajaxSetup({cache: true});
    jQuery.getScript("https://static.newsmaxfeednetwork.com/web-clients/bootloaders/bn75TWX4O573bji1xoe95X/bootloader.js");
} else {
block += "<!-- Composite Start -->";
block += "<p style=\"font-family:Arial;color:#666666;font-size:11px;text-align:right;margin-bottom:-10px;\">Sponsored<\/p>";
block += "<div id=\"unit_93728\"><a href=\"https://mixi.media/\" rel=\"nofollow\"></a></div>";
block += "<script type=\"text/javascript\" charset=\"utf-8\">";
block += "(function() {";
block +=    "var sc = document.createElement('script'); sc.type = 'text/javascript'; sc.async = true;";
block +=    "sc.src = '//mixi.media/data/js/93728.js'; sc.charset = 'utf-8';";
block +=    "var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sc, s);";
block += " }());";
block += "<\/script>";
block += "<!-- Composite End -->";
//jQuery(block).insertBefore(tgt);
};
};
</script>


</div>
<div id="block-dfp-rightrail-bottom" class="block block-dfp last even">

      
  <div id="dfp-ad-rightrail_bottom-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-rightrail_bottom" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-rightrail_bottom");
    });
  </script>
</div>

</div>
</div>
  </div>
    </div>
              <div class="region region-front-magazine-bottom">
    <div id="block-views-content-archive-contributors" class="block block-views first last odd">

        <h2 class="block__title block-title">Opinion</h2>
    
  <div class="view view-content-archive view-id-content_archive view-display-id-contributors homepage-block-contributors view-dom-id-537b00ef60f511486183d1938d534988">
        
  
  
      <div class="view-content">
        <div class="views-row views-row-1 views-row-odd views-row-first">
    <article class="node-499300 node node-article view-mode-headline clearfix"  about="/opinion/finance/499300-covid-19-debt-and-the-constitution" typeof="sioc:Item foaf:Document">
      <div class="article-category">
      <a href="/opinion/finance" title="Opinion" class="section_flag">Opinion</a>    </div>
    <header>
          <h2 class="node__title node-title"><a href="/opinion/finance/499300-covid-19-debt-and-the-constitution">COVID-19, debt and the Constitution</a></h2>
        <p class="submitted">
      BY Prasad Krishnamurthy      <span class="date">05/23/20 06:00 PM EDT</span>
    </p>
  </header>
</article>  </div>
  <div class="views-row views-row-2 views-row-even">
    <article class="node-499313 node node-article view-mode-headline clearfix"  about="/opinion/national-security/499313-this-is-no-time-to-go-wobbly-on-missile-defense" typeof="sioc:Item foaf:Document">
      <div class="article-category">
      <a href="/opinion/national-security" title="Opinion" class="section_flag">Opinion</a>    </div>
    <header>
          <h2 class="node__title node-title"><a href="/opinion/national-security/499313-this-is-no-time-to-go-wobbly-on-missile-defense">This is no time to go wobbly on missile defense</a></h2>
        <p class="submitted">
      BY James Durso      <span class="date">05/23/20 05:30 PM EDT</span>
    </p>
  </header>
</article>  </div>
  <div class="views-row views-row-3 views-row-odd">
    <article class="node-499307 node node-article view-mode-headline clearfix"  about="/opinion/criminal-justice/499307-prisoners-sent-far-away-from-home-are-effectively-denied-the" typeof="sioc:Item foaf:Document">
      <div class="article-category">
      <a href="/opinion/criminal-justice" title="Opinion" class="section_flag">Opinion</a>    </div>
    <header>
          <h2 class="node__title node-title"><a href="/opinion/criminal-justice/499307-prisoners-sent-far-away-from-home-are-effectively-denied-the">Prisoners incarcerated far away from home are effectively denied the possibility of seeing family members</a></h2>
        <p class="submitted">
      BY  Tanya Golash-Boza      <span class="date">05/23/20 05:00 PM EDT</span>
    </p>
  </header>
</article>  </div>
  <div class="views-row views-row-4 views-row-even">
    <article class="node-499310 node node-article view-mode-headline clearfix"  about="/opinion/finance/499310-science-alone-cant-tell-us-whether-to-open-up-our-states" typeof="sioc:Item foaf:Document">
      <div class="article-category">
      <a href="/opinion/finance" title="Opinion" class="section_flag">Opinion</a>    </div>
    <header>
          <h2 class="node__title node-title"><a href="/opinion/finance/499310-science-alone-cant-tell-us-whether-to-open-up-our-states">Science alone can't tell us whether to open up our states</a></h2>
        <p class="submitted">
      BY Dave Anderson      <span class="date">05/23/20 03:30 PM EDT</span>
    </p>
  </header>
</article>  </div>
  <div class="views-row views-row-5 views-row-odd views-row-last">
    <article class="node-499145 node node-article view-mode-headline clearfix"  about="/opinion/international/499145-khashoggis-family-forgives-his-killers-but-will-the-world-forget-the" typeof="sioc:Item foaf:Document">
      <div class="article-category">
      <a href="/opinion/international" title="Opinion" class="section_flag">Opinion</a>    </div>
    <header>
          <h2 class="node__title node-title"><a href="/opinion/international/499145-khashoggis-family-forgives-his-killers-but-will-the-world-forget-the">Khashoggi's family forgives his killers, but will the world forget the Saudi scandal?</a></h2>
        <p class="submitted">
      BY Simon Henderson      <span class="date">05/23/20 02:00 PM EDT</span>
    </p>
  </header>
</article>  </div>
    </div>
  
  
  
      
<div class="more-link">
  <a href="/opinion">
    See all  </a>
</div>
  
  
  
</div>
</div>
  </div>
    <div class="section-video">
              <div class="region region-front-video-center">
    <div id="block-thehill-blocks-homepage-video" class="block block-thehill-blocks first last odd">

        <h2 class="block__title block-title">Video / HILL.TV</h2>
    
  <div class="see-all"><a href="/video" class="see-all">See all video</a><a href="/hilltv" class="see-all">See all HILL.TV</a></div>    <div class="block thehill_homepage_stories small">
    <div class="item-list"><ul><li class="first">  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/hilltv/rising/498768-trump-campaign-2016-wasnt-a-fluke" title="Trump campaign: 2016 wasn't a fluke" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_215x121/public/article_images/trumpdonald12272016getty.jpg?itok=oN2N_Ydt" width="215" height="121" alt="Trump campaign: 2016 wasn&#039;t a fluke" />        </a>
      </div>
        <h4>
      <a href="/hilltv/rising/498768-trump-campaign-2016-wasnt-a-fluke" title="Trump campaign: 2016 wasn't a fluke" >
        Trump campaign: 2016 wasn't a fluke      </a>
    </h4>
    <div class="section date">
      <a href="/hilltv/rising" title="Rising" class="section_flag">Rising</a>      <span class="submitted-date">&mdash; 3d ago</span>
          </div>
  </div>
</li>
<li>  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/hilltv/rising/498766-poor-peoples-campaign-pushes-for-covid-19-relief" title="Poor People's Campaign pushes for COVID-19 relief" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_215x121/public/coronavirus_unemployment_05142020getty.jpg?itok=SgQoZ6vW" width="215" height="121" alt="Poor People&#039;s Campaign pushes for COVID-19 relief" />        </a>
      </div>
        <h4>
      <a href="/hilltv/rising/498766-poor-peoples-campaign-pushes-for-covid-19-relief" title="Poor People's Campaign pushes for COVID-19 relief" >
        Poor People's Campaign pushes for COVID-19 relief      </a>
    </h4>
    <div class="section date">
      <a href="/hilltv/rising" title="Rising" class="section_flag">Rising</a>      <span class="submitted-date">&mdash; 3d ago</span>
          </div>
  </div>
</li>
<li class="last">  <div class="top-story-item small ">
          <div class="story_image">
                
        <a href="/hilltv/what-americas-thinking/498845-poll-older-voters-slip-from-trump-younger-voters-turn-away-from" title="Poll: Older voters slip from Trump; younger voters turn away from Biden" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_215x121/public/bidenjoe_trumpdonald_050520gn_lead.jpg?itok=VWrOMCLa" width="215" height="121" alt="Poll: Older voters slip from Trump; younger voters turn away from Biden" />        </a>
      </div>
        <h4>
      <a href="/hilltv/what-americas-thinking/498845-poll-older-voters-slip-from-trump-younger-voters-turn-away-from" title="Poll: Older voters slip from Trump; younger voters turn away from Biden" >
        Poll: Older voters slip from Trump; younger voters turn away from Biden      </a>
    </h4>
    <div class="section date">
      <a href="/hilltv/america" title="What America&#039;s Thinking" class="section_flag">What America&#039;s Thinking</a>      <span class="submitted-date">&mdash; 2d ago</span>
          </div>
  </div>
</li>
</ul></div>  </div>

    <div class="block thehill_homepage_stories top">
    <div class="item-list"><ul><li class="first last">  <div class="top-story-item featured-story ">
          <div class="story_image">
                
        <a href="/hilltv/what-americas-thinking/499223-poll-majority-of-voters-support-mandatory-face-masks-in-some" title="Poll: Majority of voters support mandatory face masks in some public settings" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/article_full/public/ca_manmask_51420istock.jpg?itok=kgaP-9dG" width="645" height="363" alt="Poll: Majority of voters support mandatory face masks in some public settings" />        </a>
      </div>
        <div class="section article">
      <a href="/hilltv/america" title="What America&#039;s Thinking" class="section_flag">What America&#039;s Thinking</a>    </div>
        <h4>
      <a href="/hilltv/what-americas-thinking/499223-poll-majority-of-voters-support-mandatory-face-masks-in-some" title="Poll: Majority of voters support mandatory face masks in some public settings" >
        Poll: Majority of voters support mandatory face masks in some public settings      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/gabriela-schulte">Gabriela Schulte</a>            <span class="submitted-date">05/22/20 04:34 PM EDT</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/hilltv/what-americas-thinking/499223-poll-majority-of-voters-support-mandatory-face-masks-in-some"        class="social-share-count social-share-count-499223"
        data-nid="499223">
      </span>
    </div>
  </div>
</li>
</ul></div>  </div>

    <div class="block thehill_homepage_stories middle">
    <div class="item-list"><ul><li class="first">  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/hilltv/rising/499201-glenn-greenwald-a-lot-of-people-cant-get-past-their-ideological-or-political" title="Glenn Greenwald: 'A lot of people can't get past their ideological or political view' of Flynn" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/flynnmichael_062419as_lead.jpg?itok=L5R-0I1V" width="300" height="168" alt="Glenn Greenwald: &#039;A lot of people can&#039;t get past their ideological or political view&#039; of Flynn" />        </a>
      </div>
        <div class="section article">
      <a href="/hilltv/rising" title="Rising" class="section_flag">Rising</a>    </div>
        <h4>
      <a href="/hilltv/rising/499201-glenn-greenwald-a-lot-of-people-cant-get-past-their-ideological-or-political" title="Glenn Greenwald: 'A lot of people can't get past their ideological or political view' of Flynn" >
        Glenn Greenwald: 'A lot of people can't get past their ideological or political view' of Flynn      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/tal-axelrod" title="All articles by Tal Axelrod">Tal Axelrod</a>            <span class="submitted-date">05/22/20 03:17 PM EDT</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/hilltv/rising/499201-glenn-greenwald-a-lot-of-people-cant-get-past-their-ideological-or-political"        class="social-share-count social-share-count-499201"
        data-nid="499201">
      </span>
    </div>
  </div>
</li>
<li>  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/hilltv/rising/499177-david-sirota-on-why-warren-is-shifting-on-medicare-for-all" title="David Sirota on why Warren is shifting on Medicare for All" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/ca_warrenslimate_121919getty_0.jpg?itok=neIn2_H_" width="300" height="168" alt="David Sirota on why Warren is shifting on Medicare for All" />        </a>
      </div>
        <div class="section article">
      <a href="/hilltv/rising" title="Rising" class="section_flag">Rising</a>    </div>
        <h4>
      <a href="/hilltv/rising/499177-david-sirota-on-why-warren-is-shifting-on-medicare-for-all" title="David Sirota on why Warren is shifting on Medicare for All" >
        David Sirota on why Warren is shifting on Medicare for All      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/j-edward-moreno">J. Edward Moreno</a>            <span class="submitted-date">05/22/20 03:09 PM EDT</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/hilltv/rising/499177-david-sirota-on-why-warren-is-shifting-on-medicare-for-all"        class="social-share-count social-share-count-499177"
        data-nid="499177">
      </span>
    </div>
  </div>
</li>
<li class="last">  <div class="top-story-item ">
          <div class="story_image">
                
        <a href="/hilltv/rising/498768-trump-campaign-2016-wasnt-a-fluke" title="Trump campaign: 2016 wasn't a fluke" >
          <img typeof="foaf:Image" src="https://thehill.com/sites/default/files/styles/thumb_opinion/public/article_images/trumpdonald12272016getty.jpg?itok=BeQFeY-9" width="300" height="168" alt="Trump campaign: 2016 wasn&#039;t a fluke" />        </a>
      </div>
        <div class="section article">
      <a href="/hilltv/rising" title="Rising" class="section_flag">Rising</a>    </div>
        <h4>
      <a href="/hilltv/rising/498768-trump-campaign-2016-wasnt-a-fluke" title="Trump campaign: 2016 wasn't a fluke" >
        Trump campaign: 2016 wasn't a fluke      </a>
    </h4>
    <div class="submitted-by">
              By <a href="/author/justine-coleman">Justine Coleman</a>            <span class="submitted-date">05/20/20 02:27 PM EDT</span>
      <span
         data-behavior="social-share-count" data-href="https://thehill.com/hilltv/rising/498768-trump-campaign-2016-wasnt-a-fluke"        class="social-share-count social-share-count-498768"
        data-nid="498768">
      </span>
    </div>
  </div>
</li>
</ul></div>  </div>


</div>
  </div>
        <div class="region region-front-video-right">
    <div id="block-dfp-40f0bb96dcb43430d74aae69c206c2c5" class="block block-dfp first last odd">

      
  <div id="dfp-ad-second_rightrail_bottom_ros_asynch-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-second_rightrail_bottom_ros_asynch" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-second_rightrail_bottom_ros_asynch");
    });
  </script>
</div>

</div>
</div>
  </div>
    </div>
      <div class="region region-front-video-bottom">
    <div id="block-thehill-blocks-more-news" class="block block-thehill-blocks first last odd">

        <h2 class="block__title block-title">More News</h2>
    
    <div class="more-news-grid">
    <div class="list_wrapper">
      <div class="more-news-row">
                  <div class="more-news_category">
            <p class="more-news-title">
              <a href="/policy/defense" title="Defense">Defense</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/homenews/administration/499275-trump-admin-has-looked-at-conducting-first-us-nuclear-test-since-90s" title="Trump admin has looked at conducting first US nuclear test since &#039;90s citing threat from Russia, China: report">Trump admin has looked at conducting first US nuclear test since &#039;90s citing threat from Russia, China: report</a>                                          <span class="date">05/22/20 09:50 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/defense/499197-bipartisan-bill-seeks-to-improve-pandemic-preparedness" title="Bipartisan House bill seeks to improve pandemic preparedness">Bipartisan House bill seeks to improve pandemic preparedness</a>                                          <span class="date">05/22/20 02:44 PM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/defense/499169-125-lawmakers-urge-trump-administration-to-support-national-guard-troops" title="125 lawmakers urge Trump administration to support National Guard troops amid pandemic">125 lawmakers urge Trump administration to support National Guard troops amid pandemic</a>                                          <span class="date">05/22/20 01:05 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/defense/499166-va-gave-hydroxychloroquine-for-covid-19-to-1300-veterans" title="VA gave hydroxychloroquine for COVID-19 to 1,300 veterans">VA gave hydroxychloroquine for COVID-19 to 1,300 veterans</a>                                          <span class="date">05/22/20 12:32 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/defense/499164-house-chairmen-demand-explanation-on-trumps-illegal-withdrawal-from-open-skies" title="House chairmen demand explanation on Trump&#039;s &#039;illegal&#039; withdrawal from Open Skies Treaty">House chairmen demand explanation on Trump&#039;s &#039;illegal&#039; withdrawal from Open Skies Treaty</a>                                          <span class="date">05/22/20 12:28 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/defense" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide "></div>
                  <div class="more-news_category last-2">
            <p class="more-news-title">
              <a href="/policy/energy-environment" title="Energy &amp; Environment">Energy &amp; Environment</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/policy/energy-environment/499245-judge-throws-out-lawsuit-attempting-to-halt-federal-coal-leases" title="Judge throws out lawsuit attempting to halt federal coal leases">Judge throws out lawsuit attempting to halt federal coal leases</a>                                          <span class="date">05/22/20 05:59 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/energy-environment/overnights/499235-overnight-energy-coal-company-sues-epa-over-power-plant" title="OVERNIGHT ENERGY: Coal company sues EPA over power plant pollution regulation | Automakers fight effort to freeze fuel efficiency standards | EPA watchdog may probe agency&#039;s response to California water issues">OVERNIGHT ENERGY: Coal company sues EPA over power plant pollution regulation | Automakers fight effort to freeze fuel efficiency standards | EPA watchdog may probe agency&#039;s response to California water issues</a>                                          <span class="date">05/22/20 05:05 PM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/energy-environment/499227-automakers-fight-effort-to-freeze-fuel-efficiency-standards" title="Automakers fight effort to freeze fuel efficiency standards">Automakers fight effort to freeze fuel efficiency standards</a>                                          <span class="date">05/22/20 04:54 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/energy-environment/499198-republicans-push-for-help-for-renewable-fossil-fuel-industries" title="Republicans push for help for renewable energy, fossil fuel industries">Republicans push for help for renewable energy, fossil fuel industries</a>                                          <span class="date">05/22/20 03:11 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/energy-environment/499180-epa-watchdog-may-probe-agencys-response-to-california-water-issues" title="EPA watchdog may probe agency&#039;s response to California water issues">EPA watchdog may probe agency&#039;s response to California water issues</a>                                          <span class="date">05/22/20 01:54 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/energy-environment" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide  last-2"></div>
                  <div class="more-news_category">
            <p class="more-news-title">
              <a href="/policy/finance" title="Finance">Finance</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/policy/finance/499279-hertz-files-for-bankruptcy-amid-drop-in-demand" title="Hertz files for bankruptcy amid drop in demand">Hertz files for bankruptcy amid drop in demand</a>                                          <span class="date">05/22/20 11:03 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/healthcare/abortion/499272-senate-republicans-call-on-justice-dept-to-investigate-planned" title="Senate Republicans call on DOJ to investigate Planned Parenthood loans">Senate Republicans call on DOJ to investigate Planned Parenthood loans</a>                                          <span class="date">05/22/20 09:20 PM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/finance/overnights/499260-on-the-money-unemployment-rate-exceeded-20-percent-in-three-states" title="On The Money: Jobless rate exceeds 20 percent in three states | Senate goes on break without passing small business loan fix | Biden pledges to not raise taxes on those making under $400K">On The Money: Jobless rate exceeds 20 percent in three states | Senate goes on break without passing small business loan fix | Biden pledges to not raise taxes on those making under $400K</a>                                          <span class="date">05/22/20 07:13 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/finance/499157-senators-offer-bill-to-prevent-relief-payments-from-being-seized-by-private" title="Senators offer bill to prevent relief payments from being seized by private debt collectors">Senators offer bill to prevent relief payments from being seized by private debt collectors</a>                                          <span class="date">05/22/20 11:55 AM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/homenews/state-watch/499154-unemployment-rate-exceeded-20-percent-in-three-states-last-month" title="Unemployment rate exceeded 20 percent in three states last month">Unemployment rate exceeded 20 percent in three states last month</a>                                          <span class="date">05/22/20 11:43 AM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/finance" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide "></div>
                  <div class="more-news_category last-2">
            <p class="more-news-title">
              <a href="/policy/healthcare" title="Healthcare">Healthcare</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/homenews/senate/499298-senate-democrats-call-on-trump-administration-to-let-planned-parenthood" title="Senate Democrats call on Trump administration to let Planned Parenthood centers keep PPP loans">Senate Democrats call on Trump administration to let Planned Parenthood centers keep PPP loans</a>                                          <span class="date">05/23/20 12:12 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/homenews/state-watch/499238-us-enters-risky-new-phase-of-coronavirus-fight" title="US enters risky new phase of coronavirus fight">US enters risky new phase of coronavirus fight</a>                                          <span class="date">05/23/20 11:50 AM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/healthcare/499293-as-nations-hydroxychloroquine-supply-runs-low-patients-who-rely-on-it-begin" title="As nation&#039;s hydroxychloroquine supply dwindles, patients who rely on it begin to worry: &#039;Like survival of the fittest&#039;">As nation&#039;s hydroxychloroquine supply dwindles, patients who rely on it begin to worry: &#039;Like survival of the fittest&#039;</a>                                          <span class="date">05/23/20 11:14 AM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/healthcare/abortion/499272-senate-republicans-call-on-justice-dept-to-investigate-planned" title="Senate Republicans call on DOJ to investigate Planned Parenthood loans">Senate Republicans call on DOJ to investigate Planned Parenthood loans</a>                                          <span class="date">05/22/20 09:20 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/healthcare/499271-read-the-hills-interview-with-anthony-fauci" title="READ: The Hill&#039;s interview with Anthony Fauci">READ: The Hill&#039;s interview with Anthony Fauci</a>                                          <span class="date">05/22/20 09:00 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/healthcare" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide  last-2"></div>
                  <div class="more-news_category last">
            <p class="more-news-title">
              <a href="/policy/technology" title="Technology">Technology</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/policy/technology/499288-trump-mulls-forming-panel-to-investigate-anticonservative-bias-on-social" title="Trump mulls forming panel to investigate anticonservative bias on social media: report">Trump mulls forming panel to investigate anticonservative bias on social media: report</a>                                          <span class="date">05/23/20 10:19 AM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/technology/499267-house-to-consider-amendment-blocking-warrantless-web-browsing-surveillance" title="House to consider amendment blocking warrantless web browsing surveillance">House to consider amendment blocking warrantless web browsing surveillance</a>                                          <span class="date">05/22/20 07:52 PM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/technology/overnights/499249-hillicon-valley-lawmakers-demand-answers-on-chinese-covid-hacks" title="Hillicon Valley: Lawmakers demand answers on Chinese COVID hacks | Biden re-ups criticism of Amazon | House Dem bill seeks to limit microtargeting">Hillicon Valley: Lawmakers demand answers on Chinese COVID hacks | Biden re-ups criticism of Amazon | House Dem bill seeks to limit microtargeting</a>                                          <span class="date">05/22/20 06:37 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/technology/499132-biden-amazon-should-start-paying-their-taxes" title="Biden: &#039;Amazon should start paying their taxes&#039;">Biden: &#039;Amazon should start paying their taxes&#039;</a>                                          <span class="date">05/22/20 10:34 AM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/technology/499137-house-democrat-to-introduce-bill-cracking-down-on-ad-targeting" title="House Democrat to introduce bill cracking down on ad targeting">House Democrat to introduce bill cracking down on ad targeting</a>                                          <span class="date">05/22/20 10:33 AM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/technology" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide  last-5"></div>
                  <div class="more-news_category last-2">
            <p class="more-news-title">
              <a href="/policy/transportation" title="Transportation">Transportation</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/business-a-lobbying/499199-memorial-day-weekend-deals-latest-economic-blow-to-travel-industry" title="Memorial Day weekend deals latest economic blow to travel industry">Memorial Day weekend deals latest economic blow to travel industry</a>                                          <span class="date">05/23/20 12:39 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/international/china/499280-tensions-with-china-escalate-as-us-accuses-it-of-blocking-us" title="Tensions with China escalate as US accuses it of blocking US airlines">Tensions with China escalate as US accuses it of blocking US airlines</a>                                          <span class="date">05/23/20 07:37 AM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/finance/499279-hertz-files-for-bankruptcy-amid-drop-in-demand" title="Hertz files for bankruptcy amid drop in demand">Hertz files for bankruptcy amid drop in demand</a>                                          <span class="date">05/22/20 11:03 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/transportation/498883-ford-temporarily-shuts-down-two-plants-after-employees-test-positive" title="Ford temporarily shuts down two plants after employees test positive for coronavirus ">Ford temporarily shuts down two plants after employees test positive for coronavirus </a>                                          <span class="date">05/20/20 08:49 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/technology/498829-tesla-drops-lawsuit-against-california-county-after-plant-allowed-to-reopen" title="Tesla drops lawsuit against California county after plant allowed to reopen">Tesla drops lawsuit against California county after plant allowed to reopen</a>                                          <span class="date">05/20/20 05:17 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/transportation" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide  last-2"></div>
                  <div class="more-news_category">
            <p class="more-news-title">
              <a href="/policy/international" title="International">International</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/homenews/campaign/499270-trump-gop-go-all-in-on-anti-china-strategy" title="Trump, GOP go all-in on anti-China strategy">Trump, GOP go all-in on anti-China strategy</a>                                          <span class="date">05/23/20 03:09 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/international/china/499280-tensions-with-china-escalate-as-us-accuses-it-of-blocking-us" title="Tensions with China escalate as US accuses it of blocking US airlines">Tensions with China escalate as US accuses it of blocking US airlines</a>                                          <span class="date">05/23/20 07:37 AM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/international/americas/499276-brazils-supreme-court-releases-video-of-bolsonaro-discussing" title="Brazil&#039;s Supreme Court releases video of Bolsonaro discussing replacing security officials">Brazil&#039;s Supreme Court releases video of Bolsonaro discussing replacing security officials</a>                                          <span class="date">05/22/20 10:24 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/international/499263-officials-drop-fines-against-australian-man-who-broke-law-to-save-baby" title="Officials drop fines against Australian man who broke law to save baby whale stuck in net">Officials drop fines against Australian man who broke law to save baby whale stuck in net</a>                                          <span class="date">05/22/20 07:16 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/homenews/administration/499253-trump-to-attend-spacex-launch-in-florida" title="Trump to attend SpaceX launch in Florida">Trump to attend SpaceX launch in Florida</a>                                          <span class="date">05/22/20 06:43 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/international" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide "></div>
                  <div class="more-news_category last-2">
            <p class="more-news-title">
              <a href="/policy/cybersecurity" title="Cybersecurity">Cybersecurity</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/policy/technology/overnights/499249-hillicon-valley-lawmakers-demand-answers-on-chinese-covid-hacks" title="Hillicon Valley: Lawmakers demand answers on Chinese COVID hacks | Biden re-ups criticism of Amazon | House Dem bill seeks to limit microtargeting">Hillicon Valley: Lawmakers demand answers on Chinese COVID hacks | Biden re-ups criticism of Amazon | House Dem bill seeks to limit microtargeting</a>                                          <span class="date">05/22/20 06:37 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/cybersecurity/499225-lawmakers-ask-for-briefings-on-chinese-targeting-of-coronavirus-research" title="Lawmakers ask for briefings on Chinese targeting of coronavirus research">Lawmakers ask for briefings on Chinese targeting of coronavirus research</a>                                          <span class="date">05/22/20 04:50 PM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/policy/technology/overnights/499071-hillicon-valley-facebook-permanently-shifting-thousands-of-jobs" title="Hillicon Valley: Facebook permanently shifting thousands of jobs to remote work | Congressional action on driverless cars hits speed bump during pandemic | Republicans grill TikTok over data privacy concerns">Hillicon Valley: Facebook permanently shifting thousands of jobs to remote work | Congressional action on driverless cars hits speed bump during pandemic | Republicans grill TikTok over data privacy concerns</a>                                          <span class="date">05/21/20 06:50 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/cybersecurity/499067-senators-introduce-bill-to-protect-seniors-from-coronavirus-scams" title="Senators introduce bill to protect seniors from coronavirus scams">Senators introduce bill to protect seniors from coronavirus scams</a>                                          <span class="date">05/21/20 06:19 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/technology/overnights/498864-hillicon-valley-trump-threatens-michigan-nevada-over-mail-in" title="Hillicon Valley: Trump threatens Michigan, Nevada over mail-in voting | Officials call for broadband expansion during pandemic | Democrats call for investigation into Uber-Grubhub deal">Hillicon Valley: Trump threatens Michigan, Nevada over mail-in voting | Officials call for broadband expansion during pandemic | Democrats call for investigation into Uber-Grubhub deal</a>                                          <span class="date">05/20/20 07:16 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/cybersecurity" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide  last-2"></div>
                  <div class="more-news_category">
            <p class="more-news-title">
              <a href="/policy/national-security" title="National Security">National Security</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/policy/national-security/499236-fbi-director-wray-orders-internal-review-of-flynn-case" title="FBI director Wray orders internal review of Flynn case">FBI director Wray orders internal review of Flynn case</a>                                          <span class="date">05/22/20 05:15 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/policy/national-security/499178-grenell-says-intelligence-community-working-to-declassify-some-flynn" title="Grenell says intelligence community working to declassify Flynn-Kislyak transcripts">Grenell says intelligence community working to declassify Flynn-Kislyak transcripts</a>                                          <span class="date">05/22/20 02:04 PM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/homenews/news/499045-fbi-says-corpus-christi-shooting-is-terror-related-one-person-of-interest-still" title="FBI says Corpus Christi shooting is terror-related, one person of interest still at large">FBI says Corpus Christi shooting is terror-related, one person of interest still at large</a>                                          <span class="date">05/21/20 04:45 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/policy/national-security/499020-ukraine-is-investigating-alleged-biden-phone-call" title="Ukraine investigating alleged Biden audio">Ukraine investigating alleged Biden audio</a>                                          <span class="date">05/21/20 03:23 PM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/policy/national-security/499007-house-chair-threatens-subpoenas-if-pompeo-doesnt-provide-biden-docs" title="House chair threatens subpoenas if Pompeo doesn&#039;t provide Biden docs he gave Senate GOP">House chair threatens subpoenas if Pompeo doesn&#039;t provide Biden docs he gave Senate GOP</a>                                          <span class="date">05/21/20 02:45 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/policy/national-security" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide "></div>
                  <div class="more-news_category last last-2">
            <p class="more-news-title">
              <a href="/regulation" title="Regulation">Regulation</a>            </p>
            <div class="more-news-headlines">
                              <ul class="more_headlines">
                                  <li class="number-1">
                    <a href="/regulation/court-battles/499312-muslim-police-officer-sues-department-for-discrimination-alleging" title="Muslim police officer sues department for discrimination, alleging his peers called him &#039;terrorist&#039;">Muslim police officer sues department for discrimination, alleging his peers called him &#039;terrorist&#039;</a>                                          <span class="date">05/23/20 02:52 PM EDT</span>
                                      </li>
                                  <li class="number-2">
                    <a href="/homenews/media/499294-judge-dismisses-one-america-news-defamation-lawsuit-against-rachel-maddow" title="Judge dismisses One America News defamation lawsuit against Rachel Maddow">Judge dismisses One America News defamation lawsuit against Rachel Maddow</a>                                          <span class="date">05/23/20 11:05 AM EDT</span>
                                      </li>
                                  <li class="number-3">
                    <a href="/regulation/court-battles/499261-appeals-court-agrees-to-delay-executions-while-inmates-appeal-to" title="Appeals court agrees to delay executions while inmates appeal to Supreme Court">Appeals court agrees to delay executions while inmates appeal to Supreme Court</a>                                          <span class="date">05/22/20 07:14 PM EDT</span>
                                      </li>
                                  <li class="number-4">
                    <a href="/regulation/court-battles/499072-states-companies-set-up-their-own-covid-19-legal-shields" title="States, companies set up their own COVID-19 legal shields">States, companies set up their own COVID-19 legal shields</a>                                          <span class="date">05/22/20 06:00 AM EDT</span>
                                      </li>
                                  <li class="number-5">
                    <a href="/regulation/499044-appeals-court-orders-judge-to-respond-to-flynns-emergency-bid-to-dismiss-charges" title="Appeals court orders judge to respond to Flynn&#039;s emergency bid to dismiss charges">Appeals court orders judge to respond to Flynn&#039;s emergency bid to dismiss charges</a>                                          <span class="date">05/21/20 04:28 PM EDT</span>
                                      </li>
                                </ul>
                          </div>
            <div class="more-news-see-all">
              <a href="/regulation" title="See all">See all</a>            </div>
          </div>
          <div class="clearfix hide  last-5 last-2"></div>
              </div>
    </div>
    <div class="clearfix"></div>
  </div>

</div>
  </div>
  </div>
    <div style="display: none;">
</div>
      <div class="page-bottom">
      <div class="region region-footer-bottom">
    <div id="block-thehill-blocks-footer-signup" class="block block-thehill-blocks first last odd">

      
  <div class="simple-signup-form">
  <div class="text">Don't miss a brief. <span>Sign up for our daily email.</span></div>
  <form action="/" method="post" id="thehill-blocks-signup-form" accept-charset="UTF-8"><div><div class="form-item form-type-textfield form-item-email">
  <label for="edit-email">Your Email </label>
 <input placeholder="" type="text" id="edit-email" name="email" value="" size="60" maxlength="128" class="form-text" />
</div>
<div class="form-item form-type-textfield form-item-list">
 <input class="hidden form-text" type="text" id="edit-list" name="list" value="" size="60" maxlength="128" />
</div>
<input type="submit" id="edit-submit--2" name="op" value="Submit" class="form-submit" /><input type="hidden" name="form_build_id" value="form-WTxMW0b7RlcD8771Z-rHjjWPRcTKLW_Cn-2CDKFIw1I" />
<input type="hidden" name="form_id" value="thehill_blocks_signup_form" />
</div></form></div>


</div>
  </div>
    <a href="/" title="TheHill" rel="home" alt="TheHill.com">
      <img class="logo" alt="TheHill.com" src="/sites/all/themes/thehill/images/redesign/thehill-logo-footer.png" />
    </a>
      <div class="region region-bottom-column1">
    <div id="block-menu-menu-home" class="block block-menu first odd" role="navigation">

        <h2 class="block__title block-title">News</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/homenews/senate" class="menu__link menu__link">Senate</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/house" class="menu__link menu__link">House</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/campaign" class="menu__link menu__link">Campaign</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/administration" class="menu__link menu__link">Administration</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/regulation" class="menu__link menu__link">Regulation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/media" class="menu__link menu__link">Media</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/blog-briefing-room" class="menu__link menu__link">Briefing Room</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/latino" class="menu__link menu__link">Latino</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/1230-report" class="menu__link menu__link">12:30 Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/coronavirus-report" class="menu__link menu__link">Coronavirus Report</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/floor-action" class="menu__link menu__link">Floor Action</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/in-the-know" class="menu__link menu__link">In The Know</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/homenews/sunday-talk-shows" class="menu__link menu__link">Sunday Talk Shows</a></li>
<li class="menu__item is-active-trail is-leaf menu__item is-active-trail is-leaf last leaf active-trail depth-1"><a href="/" class="menu__link is-active-trail menu__link is-active-trail active-trail active">More</a></li>
</ul>
</div>
<div id="block-menu-menu-policy-menu" class="block block-menu even" role="navigation">

        <h2 class="block__title block-title">Policy</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/policy/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/policy/national-security" class="menu__link menu__link">National Security</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/policy" class="menu__link menu__link">More</a></li>
</ul>
</div>
<div id="block-menu-menu-video" class="block block-menu odd" role="navigation">

        <h2 class="block__title block-title">Video</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/video/hilltube" class="menu__link menu__link">Latest</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/defense" class="menu__link menu__link">Defense</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/energy-environment" class="menu__link menu__link">Energy &amp; Environment</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/finance" class="menu__link menu__link">Finance</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/healthcare" class="menu__link menu__link">Healthcare</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/technology" class="menu__link menu__link">Technology</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/transportation" class="menu__link menu__link">Transportation</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/international" class="menu__link menu__link">International</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/cybersecurity" class="menu__link menu__link">Cybersecurity</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/national-security" class="menu__link menu__link">National Security</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/sunday-shows" class="menu__link menu__link">Sunday Shows</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/video/events" class="menu__link menu__link">Events</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/hill-tube" class="menu__link menu__link">More</a></li>
</ul>
</div>
<div id="block-menu-menu-opinion" class="block block-menu last even" role="navigation">

        <h2 class="block__title block-title">Opinion</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/opinion/columnists/brent-budowsky" class="menu__link menu__link">Brent Budowsky</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/opinion/columnists" class="menu__link menu__link">Columnists</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/congress-blog" class="menu__link menu__link">Congress Blog</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/blogs/pundits-blog" class="menu__link menu__link">Contributors</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/opinion" class="menu__link menu__link">More</a></li>
</ul>
</div>
  </div>
      <div class="region region-bottom-column2">
    <div id="block-menu-menu-anchor-menu" class="block block-menu first odd" role="navigation">

        <h2 class="block__title block-title">TheHill.com</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/privacy-policy" class="menu__link menu__link">Privacy Policy</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/terms-and-conditions" class="menu__link menu__link">Terms &amp; Conditions</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/contact" class="menu__link menu__link">Contact</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/contact/subscriptions" class="menu__link menu__link">Subscriptions</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/contact/advertise" class="menu__link menu__link">Advertise</a></li>
</ul>
</div>
<div id="block-menu-menu-resources" class="block block-menu even" role="navigation">

        <h2 class="block__title block-title">Resources</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/hill-apps" class="menu__link menu__link">The Hill Apps</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/people/" class="menu__link menu__link">People</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/resources/rss-feeds" class="menu__link menu__link">RSS</a></li>
</ul>
</div>
<div id="block-menu-menu-menu-contributors" class="block block-menu odd" role="navigation">

        <h2 class="block__title block-title">Contributors</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first last leaf depth-1"><a href="/contributor-application-form" class="menu__link menu__link">Become a Contributor</a></li>
</ul>
</div>
<div id="block-menu-menu-contact-us" class="block block-menu last even" role="navigation">

        <h2 class="block__title block-title">Other Areas</h2>
    
  <ul class="menu"><li class="menu__item is-leaf menu__item is-leaf first leaf depth-1"><a href="/special-reports/special-reports" class="menu__link menu__link">Special Reports</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/galleries" class="menu__link menu__link">Galleries</a></li>
<li class="menu__item is-leaf menu__item is-leaf leaf depth-1"><a href="/classifieds" class="menu__link menu__link">Classifieds</a></li>
<li class="menu__item is-leaf menu__item is-leaf last leaf depth-1"><a href="/resources/classifieds/employer" class="menu__link menu__link">Jobs</a></li>
</ul>
</div>
  </div>
    <div class="clearer"></div>
    <div class="copyright-wrp">
        <div class="region region-copyright">
    <div id="block-thehill-blocks-copyright" class="block block-thehill-blocks first odd">

      
  <p>The Hill 1625 K Street, NW Suite 900 Washington DC 20006 | 202-628-8500 tel | 202-628-8503 fax</p><p>The contents of this site are &copy;2020 Capitol Hill Publishing Corp., a subsidiary of News Communications, Inc.</p>
</div>
<div id="block-dfp-new-1x1-asynch" class="block block-dfp even">

      
  <div id="dfp-ad-new_1x1_asynch-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-new_1x1_asynch" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-new_1x1_asynch");
    });
  </script>
</div>

</div>
</div>
<div id="block-dfp-1x1-oop" class="block block-dfp odd">

      
  <div id="dfp-ad-1x1_oop-wrapper" class="dfp-tag-wrapper"><!-- dfp_tag.tpl.php -->
<a href="#" class="hide_overlay"></a>
<div  id="dfp-ad-1x1_oop" class="dfp-inner">
  <script type="text/javascript">
    googletag.cmd.push(function() {
      googletag.display("dfp-ad-1x1_oop");
    });
  </script>
</div>
  <div id="dfp-ad-1x1_oop-oop" class="dfp-tag-wrapper">
    <script type="text/javascript">
      googletag.cmd.push(function() {
        googletag.display("dfp-ad-1x1_oop-oop");
      });
    </script>
  </div>

</div>
</div>
<div id="block-block-70" class="block block-block last even">

      
  <style>
 #do-not-sell-button {
padding-top: 15px;margin-left: 0px; width: 100%;padding-bottom: 15px;
}
@media only screen and (min-width:768px) {
 #do-not-sell-button {
margin-left: -150px;
}	
}
</style>
<div id="do-not-sell-button"></div>
    
   
</div>
  </div>
    </div>
  </div>
</div>
    <div class="region region-page-bottom">
    <script type="text/javascript">
  var _sf_async_config=Drupal.settings.chartbeat;
  
  
  
  (function(){
    function loadChartbeat() {
      window._sf_endpt=(new Date()).getTime();
      var e = document.createElement('script');
      e.setAttribute('language', 'javascript');
      e.setAttribute('type', 'text/javascript');
      e.setAttribute('src', '//static.chartbeat.com/js/chartbeat.js');
      document.body.appendChild(e);
    }
    var oldonload = document.ready;
    document.ready = (typeof document.ready != 'function') ?
       loadChartbeat : function() { oldonload(); loadChartbeat(); };
  })();
</script><!-- Begin comScore Tag -->
          <script>
            var _comscore = _comscore || [];
            _comscore.push({"c1":"2","c2":"10314615","c3":"","c4":"https:\/\/thehill.com\/","c5":"","c6":"","c15":""});
            (function() {
              var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true;
              s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js";
              el.parentNode.insertBefore(s, el);
            })();
          </script>
          <noscript>
            <img src="https://sb.scorecardresearch.com/p?c1=2&c2=10314615&c3=&c4=https%3A//thehill.com/&c5=&c6=&c15=&cv=2.0&cj=1" />
          </noscript>
      <!-- End comScore Tag --><script type="text/javascript">
  if(typeof(ga) !== 'undefined') {
    jQuery('#block-thehill-blocks-homepage-video a').on('click', function(e) {
      ga('send', 'event', 'HomepageVideoSection', 'click');
    });
setTimeout(function() {
	 ga('send', 'event', 'AutoRefresh', 'refreshed', document.URL);
}, 840000);

	jQuery(document).ready(function(e) {
		var allowedValues = {25 : '25%', 50 : '50%', 75 : '75%', 100 : '100%'};
	    var recordedData = [];
		var docHeight = jQuery(document).height();
	    jQuery(window).on('scroll.scrollDepth', function(event) {
	    	var winHeight = window.innerHeight ? window.innerHeight : jQuery(window).height();
	    	var scrollDistance = jQuery(window).scrollTop() + winHeight;
	        var pct = Math.round((scrollDistance / docHeight) * 100);
	        var value = false; 
	    	if(pct >= 25 && pct < 50) {
	    		value = allowedValues[25];
	    	} else if(pct >= 50 && pct < 75) {
	    		value = allowedValues[50];
	    	} else if(pct >= 75 && pct < 100) {
	    		value = allowedValues[75];
	    	} else if(pct >= 100) {
	    		value = allowedValues[100];
	    	}
			if(typeof(value) !== 'boolean' && !recordedData.includes(value)) {
				recordedData.push(value);
				ga('send', 'event', 'Scroll', 'Desktop', value);
			}
	    });
	});
  }
</script>
<script>
	(function($) {
		if($('.thehill_homepage_stories.top').length === 3) {
			$('.thehill_homepage_stories.top').addClass('top-section');
			$('.thehill_homepage_stories.top').removeClass('top');
		}
	})(jQuery)
</script><!--START Lightbox Javascript-->
<script type="text/javascript">
    /*<![CDATA[*/ window.lightboxjs || function (c) { function g(b, d) { d && (d += (/\?/.test(d) ? "&" : "?") + "lv=1"); c[b] || function () { var i = window, h = document, j = b, g = h.location.protocol, l = "load", k = 0; (function () { function b() { a.P(l); a.w = 1; c[j]("_load") } c[j] = function () { function m() { m.id = e; return c[j].apply(m, arguments) } var b, e = ++k; b = this && this != i ? this.id || 0 : 0; (a.s = a.s || []).push([e, b, arguments]); m.then = function (b, c, h) { var d = a.fh[e] = a.fh[e] || [], j = a.eh[e] = a.eh[e] || [], f = a.ph[e] = a.ph[e] || []; b && d.push(b); c && j.push(c); h && f.push(h); return m }; return m }; var a = c[j]._ = {}; a.fh = {}; a.eh = {}; a.ph = {}; a.l = d ? d.replace(/^\/\//, (g == "https:" ? g : "http:") + "//") : d; a.p = { 0: +new Date }; a.P = function (b) { a.p[b] = new Date - a.p[0] }; a.w && b(); i.addEventListener ? i.addEventListener(l, b, !1) : i.attachEvent("on" + l, b); var q = function () { function b() { return ["<head></head><", c, ' onload="var d=', n, ";d.getElementsByTagName('head')[0].", d, "(d.", g, "('script')).", i, "='", a.l, "'\"></", c, ">"].join("") } var c = "body", e = h[c]; if (!e) return setTimeout(q, 100); a.P(1); var d = "appendChild", g = "createElement",
    i = "src", k = h[g]("div"), l = k[d](h[g]("div")), f = h[g]("iframe"), n = "document", p; k.style.display = "none"; e.insertBefore(k, e.firstChild).id = o + "-" + j; f.frameBorder = "0"; f.id = o + "-frame-" + j; /MSIE[ ]+6/.test(navigator.userAgent) && (f[i] = "javascript:false"); f.allowTransparency = "true"; l[d](f); try { f.contentWindow[n].open() } catch (s) { a.domain = h.domain, p = "javascript:var d=" + n + ".open();d.domain='" + h.domain + "';", f[i] = p + "void(0);" } try { var r = f.contentWindow[n]; r.write(b()); r.close() } catch (t) { f[i] = p + 'd.write("' + b().replace(/"/g, String.fromCharCode(92) + '"') + '");d.close();' } a.P(2) }; a.l && q() })() }(); c[b].lv = "1"; return c[b] } var o = "lightboxjs", k = window[o] = g(o); k.require = g; k.modules = c }({}); /*]]>*/</script><script type="text/javascript">window.lightboxlib = lightboxjs.require("lightboxlib", "//www.lightboxcdn.com/vendor/ee48a214-dcd9-4d76-af7b-dd194f9094db/lightbox.js?mb=" + (new Date().getTime()));</script>
<!--END Lightbox Javascript-->

<script>
if(typeof(ga) !== 'undefined') {
  jQuery('.hill-tv').on('click', function(e) {
    ga('send', 'event', 'HillTVTopNav', 'click', e.currentTarget.pathname);
  });

  jQuery('#main-menu img').on('click', function(e) {
    ga('send', 'event', 'HillTVTopNavShowImg', 'click', e.currentTarget.currentSrc);
  });
jQuery('document').ready(function() {
    jQuery('#block-mostpopular-1').on('click', '#thehill-mostpopular-block li a', function(e) {
      var meta = 'index-';
      try {
        meta = meta + e.currentTarget.parentElement.parentElement.previousElementSibling.innerHTML;
      } catch(error) {
        console.log(error);
      }
      ga('send', 'event', 'MostPopularItem', 'click', meta);
    });
    if(jQuery('#block-views-articles-articles-just-in').length) {
        jQuery('#block-views-articles-articles-just-in').on('click', '#block-views-articles-articles-just-in li', function(e) { 
            var justInMeta = 'index-';
            try {
                var regex = /\d+/g;
                var matches = e.currentTarget.className.match(regex); 
                justInMeta = justInMeta + matches[0];
            } catch(e) {
                console.log(e);
            }
            ga('send', 'event', 'JustInItemClick', 'click', justInMeta);
        });
    }
  });

  if(typeof(pbjs) !== "undefined" && typeof(pbjs.version) === "undefined") {
    ga('send', 'event', 'Ad Setting', 'Adblock', 'Enabled');
  }
}
</script>

  </div>
<script>
    var param = (new URL(window.location)).searchParams;
    var uid = param.get("userid");
    uid = uid === null ? "" : uid;

    var dataLayer = {
      "page": {
        "author": "",
        "section": "",
        "keywords": ""
      },
      "user": {
        "userid" : uid
      }
    };
</script>
<script>    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=566538590082898&version=v2.9";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
  <div id="fb-root"></div>
  <script src="//platform.twitter.com/widgets.js"></script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"962df17ac8","applicationID":"409941798","transactionName":"YwRXYBQFWhEEUUYNV1pOdFcSDVsMSldfFExNPlNGCQpAPRVTVQFnVwBZWAQFVwk=","queueTime":0,"applicationTime":533,"atts":"T0NUFlwfSR8=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>
