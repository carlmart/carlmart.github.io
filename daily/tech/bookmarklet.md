
# Javascript 
## bookmarklets
 - [online marklet generator ](https://caiorss.github.io/bookmarklet-maker/)
 - [online test marklet ](https://make-bookmarklets.com/)
 - [tutorial ](https://dev.to/ahandsel/introduction-to-bookmarklets-javascript-everywhere-280m)

Bookmarklets are browser bookmarks containing JavaScript code that executes when clicked, allowing you to manipulate the current webpage or URL. To replace or modify a URL, you typically use the window.location object combined with string manipulation methods like .replace(), .split(), or .href assignment. 

Here are common patterns for replacing URL parts:

### Test code
```
javascript:(() => {
  // Your code here
  alert('Hello, World!');
})();   
```

### Simple String Replacement: Use regex or .replace() to swap specific domains or paths.
```
javascript:(function() {
  window.location = window.location.toString().replace(/^http:\/\/www\./, 'https://admin.');
})()   
```
### 1 Switching hosts " reddit.com to redlib.catsarch.com
```
javascript:(function() {  window.location.replace("http://redlib.catsarch.com" + window.location.pathname + window.location.search);})()
```
### take 2 reddit.com to redlib
```
javascript:(function(){
  location.href = "https://viewstats.com" + location.pathname + "/channelytics"
})()
```
### take 3 reddit.com to redlib
```
javascript:location.href = "https://viewstats.com" + location.pathname + "/channelytics"
```
### 2 Switching hosts for toggling local dev and production
```
javascript:(function() {
  window.location.replace("http://localhost:8000" + window.location.pathname + window.location.search);
})()   
```
### Appending parameters
```
javascript:(function() {
  const params = new URLSearchParams(window.location.search);
  params.set("KEY", "VALUE");
  window.location.href = window.location.origin + window.location.pathname + "?" + params.toString();
})()   
```
### Changing domain suffix
```
javascript: document.location = document.URL.replace(/(?:www\.)?reddit\.com/i, 'redlib.catsarch.com'); 
```

```
javascript: document.location = document.URL.replace(/(?:old\.)?reddit\.com/i, 'removeddit.com');   
```

### Generic replacement from www to cms
```
javascript:(function() { window.location=window.location.toString().replace(/^http:\‌​/\/www\./,'http://cms.'); })()
```
### Change sytle of page
```
javascript: (() => {
  var style = document.createElement("style");
  style.innerHTML = "body{background:#000;color:rebeccapurple}";
  document.head.appendChild(style);
})();
```

### Screenshot
```
javascript:void(async()=>{let d=document,e=t=>d.createElement(t),s=e('style');s.textContent='*{cursor:none!important;scrollbar-width:none!important}::-webkit-scrollbar{display:none!important}';d.head.append(s);try{let m=await navigator.mediaDevices.getDisplayMedia({video:{displaySurface:'browser'},preferCurrentTab:!0,selfBrowserSurface:'include'}),v=e('video');v.srcObject=m;await v.play();await new Promise(r=>setTimeout(r,99));let c=e('canvas');c.width=v.videoWidth;c.height=v.videoHeight;c.getContext('2d').drawImage(v,0,0);m.getTracks().map(t=>t.stop());c.toBlob(async b=>{try{await navigator.clipboard.write([new ClipboardItem({'image/png':b})])}catch(x){let u=URL.createObjectURL(b),a=e('a');a.download=((location.host+location.pathname).replace(/\W+/g,'-').replace(/^-|-$/g,'').slice(0,50)||'ss')+'.png';a.href=u;a.click();setTimeout(()=>URL.revokeObjectURL(u),99)}})}catch(x){x.name!='NotAllowedError'&&alert(x)}finally{s.remove()}})()
```

### Youtube Stats
from:  https://www.youtube.com/@Themaryburke
to:    https://www.viewstats.com/@Themaryburke/channelytics
```
javascript:(function(){var u=new URL(location.href);u.hostname='www.viewstats.com';u.pathname=u.pathname.replace(/\/$/,'')+'/channelytics';location.href=u.href;})();
```


[list of Bookmarkelts](https://www.hongkiat.com/blog/100-useful-bookmarklets-for-better-productivity-ultimate-list/)
