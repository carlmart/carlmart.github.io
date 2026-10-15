# Mac Tech notes
<small>
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

**MacPorts still publishes prebuilt x86_64 binaries** for every macOS an Intel Mac can run (11 through 26) - fast installs without compiling.

**Practical caveats:**
- MacPorts has **fewer graphical apps** than Homebrew casks — you'll install those manually.
- Coverage on macOS 26 Tahoe is good but not 100% complete; a few ports will compile from source.
- You can run **both** side by side if you want to keep existing Homebrew packages around until 2027.

**TL;DR:** If you're on an Intel Mac and want a package manager that will keep working with prebuilt binaries, switch to MacPorts now. Homebrew is a ticking clock that expires in ~11 months.

 - [ from brew to macports ](https://mac.install.guide/homebrew/macports)
 - [ guide.macports.org Macports download ](https://guide.macports.org/)

### Random links
 - [ myactivity.google ](https://myactivity.google.com/)
 - [ search.brave.com/search?q=%s ]()
 - [ Firefox ESR ](https://www.firefox.com/en-US/browsers/enterprise/#download)
### MacApps
 - [ blackhole ](https://existential.audio/blackhole/)


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
