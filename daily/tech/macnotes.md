# Mac Tech notes

**For Intel Mac, MacPorts is now the recommended path.** 
The Homebrew team itself says this in its own warning:

> *"You will have better luck with MacPorts which still supports macOS Intel x86_64"*

Here's the timeline :

| Date | What happens |
|---|---|
| **Aug 28, 2026** | Homebrew disabled Intel CI runners (no new bottles) |
| **Sept 13, 2026** | Homebrew 7.0.0 moves Intel to **Tier 3** (source builds only) |
| **Sept 1, 2027** | Homebrew **stops running** on Intel Macs entirely |
| **Fall 2026** | macOS 27 Golden Gate ships — Apple Silicon only |
| **~2028** | Final security updates for Intel Macs on macOS 26 |

**MacPorts still publishes prebuilt x86_64 binaries** for every macOS an Intel Mac can run (11 through 26), so you get fast installs without compiling.

**Practical caveats:**
- MacPorts has **fewer graphical apps** than Homebrew casks — you'll install those manually.
- Coverage on macOS 26 Tahoe is good but not 100% complete; a few ports will compile from source.
- You can run **both** side by side if you want to keep existing Homebrew packages around until 2027.

**TL;DR:** If you're on an Intel Mac and want a package manager that will keep working with prebuilt binaries, switch to MacPorts now. Homebrew is a ticking clock that expires in ~11 months.

 - [ from brew to macports ](https://mac.install.guide/homebrew/macports)
 - [ guide.macports.org Macports download ](https://guide.macports.org/)

### random
 - [ myactivity.google ](https://myactivity.google.com/)
 - [ search.brave.com/search?q=%s ]()
 - [ Firefox ESR ](https://www.firefox.com/en-US/browsers/enterprise/#download)

### Bookmarklets
 - [ bookmarklet.md ](bookmarklet.md)

### Firefox 
```
about:preferences#accessibility   90%  - set settings
about:profiles   - lists all  profiles 
about:support    - displays current browser profile
about:addons     - all your addons
about:config     - caution 
```
 - [markdown viewer - first! ](https://addons.mozilla.org/en-US/firefox/addon/markdown-viewer-chrome/)
 - [new tab override - open your page ](https://addons.mozilla.org/en-US/firefox/addon/new-tab-override/)
 - [Google maps   ](https://addons.mozilla.org/en-US/firefox/addon/route-with-google-maps/)
 - [Firefox:selective bookmarks export tool ](https://addons.mozilla.org/en-US/firefox/addon/bookmarks-export-tool/)
 - [ublock origin 4 blocking google login](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
    - ||accounts.google.com/gsi/iframe/select$subdocument
 - [facebook container ](https://addons.mozilla.org/en-US/firefox/addon/facebook-container/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
 - [cookie remover ](https://addons.mozilla.org/en-US/firefox/addon/cookie-remover/)
 - [adblocker for youtube ](https://addons.mozilla.org/en-US/firefox/addon/adblock-for-youtube/)
 - [clear browsing data ](https://addons.mozilla.org/en-US/firefox/addon/clear-browsing-data/)
 - [clear cache ](https://addons.mozilla.org/en-US/firefox/addon/clearcache/)
 - [ Firefox Download Manager s3](https://addons.mozilla.org/en-US/firefox/addon/s3download-statusbar/)
    - || Add-ons Manager > Extensions and click Preference -> checkbox -> switch to downloads tab
    - [ or install downloadmanagers3.txt](downloadmanages3.txt)
 - [ multi-account containers ](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
 - [ BrowserSelector choose Profile ](https://addons.mozilla.org/en-US/firefox/addon/browserselector/)


### Google Chrome extensions
 - [Brave: selective bookmarks export tool ](https://chromewebstore.google.com/detail/selective-bookmarks-expor/dkbihgadoohejmlhpffffbmbhmkhjbfi)
 - [Clear mail ](https://chromewebstore.google.com/detail/clear-mail-for-gmail-priv/mjdjakmpongidgdifgmaenfgmacppknm)
 - [JSON viewer Pro](https://chromewebstore.google.com/detail/json-viewer-pro/eifflpmocdbdmepbjaopkkhbfmdgijcc)
 - [Markdown Viewer](https://chromewebstore.google.com/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk)
 - [Google maps](https://chromewebstore.google.com/detail/open-via-google-maps/klnpmiiahcfaocdklogefknajkpeolao)
 - [Show Password](https://chromewebstore.google.com/detail/showpassword/bbiclfnbhommljbjcoelobnnnibemabl)
 - [Cookie Remover](https://chromewebstore.google.com/detail/cookie-remover-clear-remo/kcgpggonjhmeaejebeoeomdlohicfhce)

### Security links
 - [ myactivity.google.com   ](https://myactivity.google.com/)

### search engines
use the following for search.brave.com
```
https://search.brave.com/search?q=%s
```

### Android apps not on App Store
Use F-Droid then search
 - WhoBIRD - works offline and no location services


### Self Hosted redlib ;)
 - [ redlib-instances ](https://github.com/redlib-org/redlib-instances/blob/main/instances.md?utm_source=akashrajpurohit.com)
 - [ redlib-selfhosted  ](https://akashrajpurohit.com/blog/redlib-selfhosted-reddit-browsing-without-the-bloat/)
 
### Self Hosted nit ;)
 - [ github 1 ](https://github.com/zedeus/nitter)


 - [ developer.apple.com download xcode tools  ](https://developer.apple.com/download/all/)
If that doesn't show you any updates, run:
  sudo rm -rf /Library/Developer/CommandLineTools
  sudo xcode-select --install

Alternatively, manually download them from:
  https://developer.apple.com/download/all/.
You should download the Command Line Tools for Xcode 26.3.

### Reddit  Curate your profile
 - [  /settings/profile ](https://www.reddit.com/settings/profile)
