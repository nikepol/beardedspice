[![Release](https://github.com/nikepol/beardie/actions/workflows/release.yml/badge.svg)](https://github.com/nikepol/beardie/actions/workflows/release.yml)

# About this fork

Beardie is a fork of [BeardedSpice](https://github.com/beardedspice/beardedspice), updated to build and run on current macOS. The app was renamed, so its bundle identifier changed from `com.beardedspice.BeardedSpice` to `com.beardie.Beardie` — macOS treats it as a new application, which means Accessibility has to be granted again and settings from a BeardedSpice install do not carry over.

Media strategies are still fetched from the upstream repository, so support for new sites lands here automatically.

# Common Issues

Check the upstream [Wiki](https://github.com/beardedspice/beardedspice/wiki) before opening an issue — most of it still applies.

# Users Guide

[![Beardie](images/bs.jpg)](images/bs.jpg)

## What?
Beardie allows you to control web based media players (Like *SoundCloud*, and *YouTube* ... [List of supported sites to date](#supported-sites)) and some native apps with the media keys found on Mac keyboards.

## How?
All you need to do is just open your favorite [supported media site](#supported-sites) in either Chrome or Safari, then click on Beardie's Menubar icon <img src="images/icon20x19.png" /> and select the website you want to control using your media keys.

#### Interested in doing it with a keyboard-shortcut?
We've got you covered, give the [Shortcuts section](#keyboard-shortcuts) a look below!

## Install

Ready to give Beardie a spin? Grab the DMG from the [latest release](https://github.com/nikepol/beardie/releases/latest), drag it to Applications, and grant Accessibility access when asked (System Settings → Privacy & Security → Accessibility) — the media keys will not work until you do.

macOS 12 or later required. That floor comes from the toolchain: Xcode 27 refuses deployment targets below 12.0.

Releases are built in CI without a Developer ID certificate, so they are unsigned. Gatekeeper will refuse the first launch — right-click the app and choose *Open* to get the override prompt.

If you're using Safari (≥9.1.1), you should enable developer preference. [See detailed guide how to do it.](https://github.com/beardedspice/beardedspice/wiki/Wont-Work-issue-after-Safari-Update-(9.1.1-and-later))

## Features

### *Smart* Mode
> This feature is a **work-in-progress**, we are currently working on bringing it to all our supported sites!

Beardie tries to automatically guess which tab it should control for you. When you press any media key or Beardie shortcut with Beardie open, it will automatically control the site currently playing media, if you have no playing sites, it will try to control the currently focused tab (if it is one of our supported sites) if Beardie failed to do either, it will automatically control the first.

### Updates
Beardie does not update itself — there is no Sparkle or equivalent in the app, so new versions are downloaded from the [releases page](https://github.com/nikepol/beardie/releases). Media strategies are a separate matter and do refresh in place; see below.

### Up to Date Media Strategies
First, what is a Media Strategy? This is what we call a [template](https://github.com/beardedspice/beardedspice/blob/master/template-explained.js) with custom javascript aimed at a specific website, allowing the Beardie program to control it with the media keys.

Second, the Compatibility Updates option allows you to check for added or changed Media Strategies that were contributed since the last official release.

You can also exchange strategies between users in the form of files with the extension `bsstrategy`. In the application *Preferences*, in the *Controllers* section there are corresponding *Export/Import* buttons. There is a [repository with untested strategies](https://github.com/beardedspice/BS-Strategies).

### Keyboard Shortcuts
Beardie comes with a handy list of Keyboard Shortcuts that can be configured under the `Shortcuts` tab of Beardie Preferences (available through the menubar icon). Here is a table of Default Keyboard Shortcuts:

Default Shortcut | Action
:---------------:|:------:
`⌘` + `F8` |  Set Focused Browser tab as *Active Player* (effectively directing your commands to that tab)
`⌘` + `F6` | Focus *Active Player* (Shows the tab currently controlled by Beardie)
`⌘` + `F10` | Toggle Favorite (Add currently playing track to your favorites on it's site)
`⌘` + `F11` | Show Track information (shows a notification with info about the currently playing tab)

### Multimedia keys of non-Apple keyboards
Using a 3rd-party keyboard? Or even a keyboard with no multimedia keys? No problems, Beardie allows you to set your multimedia keys under the shortcuts tab, so you can use any key (or key combination) of your liking.

### Disabling certain handlers
From the preferences tab, uncheck any types of webpages that you don't want Beardie to have control over. By default, all implemented handlers are enabled.

### Supported Mac OS X applications
- [iTunes](http://www.apple.com/itunes/)
- [Spotify](https://www.spotify.com/)
- [VLC](http://www.videolan.org/vlc/)
- [VOX](http://coppertino.com/)
- [Downcast](http://downcast.fm/)
- [TIDAL Desktop](http://tidal.com/ru/download)

### Supported Browsers
 - [Safari](https://www.apple.com/safari/)
 - [Google Chrome](https://www.google.com/chrome/browser/desktop/)
 - [Vivaldi](https://vivaldi.com/)


### Supported Sites
- [8Tracks](http://8tracks.com)
- [22Tracks](http://22tracks.com)
- [Amazon Music](https://www.amazon.com/gp/dmusic/cloudplayer/player)
- [Apple Developer](https://developer.apple.com/videos/)
- [Audible](http://www.audible.com/)
- [Audiomack](http://www.audiomack.com/)
- [BandCamp](http://bandcamp.com)
- [BBC Radio](http://www.bbc.co.uk/radio)
- [Beatguide](https://beatguide.me/)
- [Beatport](https://beatport.com)
- [Blitzr](http://blitzr.com)
- [Bop.fm](http://bop.fm)
- [Brain.fm](https://brain.fm/)
- [BugsMusic](http://www.bugs.co.kr)
- [Chorus](http://wiki.xbmc.org/index.php?title=Add-on:Chorus)
- [Coursera](https://www.coursera.org)
- [Composed](https://www.composed.com/)
- [Cozy Cloud](https://cozy.io/en/) ([cozy-music](https://github.com/cozy-labs/cozy-music) application)
- [Dailymotion](https://www.dailymotion.com)
- [Deezer](http://deezer.com)
- [Digitally Imported](http://www.di.fm/)
- [focus@will](https://www.focusatwill.com)
- [Gaana](http://gaana.com)
- [Genie Music](http://www.genie.co.kr/)
- [Google Music](https://play.google.com/music/)
- [GrooveShark](http://grooveshark.com)
- [HotNewHipHop Mixtapes](http://www.hotnewhiphop.com/mixtapes/)
- [HypeMachine](http://hypem.com)
- [iHeart Radio](http://www.iheart.com/)
- [IndieShuffle](http://www.indieshuffle.com)
- [Jango](http://www.jango.com/)
- [Kollekt.FM](https://kollekt.fm/)
- [Last.fm](http://www.last.fm/)
- [Le Tournedisque](http://www.letournedisque.com/)
- [ListenOnRepeat](http://listenonrepeat.com/)
- [Logitech Media Server](http://www.mysqueezebox.com/) (`Default` web interface only)
- [Mixcloud](https://www.mixcloud.com/)
- [Music For Programming](http://musicforprogramming.net/)
- [Music Unlimited](https://music.sonyentertainmentnetwork.com)
- [Napster](https://www.napster.com/)
- [Netflix](http://www.netflix.com)
- [NoAdRadio.com](http://www.noadradio.com/)
- [NoonPacific.com](http://noonpacific.com)
- [NPR One](http://one.npr.org/)
- [NRK Radio](https://radio.nrk.no/)
- [Odnoklassniki](http://ok.ru)
- [Overcast.fm](https://overcast.fm)
- [Pakartot](http://www.pakartot.lt)
- [Pandora](http://www.pandora.com)
- [Phish.in](http://phish.in)
- [PhishTracks](http://PhishTracks.com)
- [PinchyDon](https://pinchyandfriends.com/)
- [Plex Web](https://app.plex.tv)
- [Pocket Casts](https://play.pocketcasts.com/)
- [ProductHunt](https://www.producthunt.com/podcasts/)
- [Qobuz](http://player.qobuz.com/)
- [Radio Swiss Jazz](http://www.radioswissjazz.ch/)
- [Rdio](http://rdio.com)
- [Saavn](http://www.saavn.com/)
- [Shuffler.fm](http://shuffler.fm/)
- [SiriusXM](http://www.siriusxm.com)
- [Slacker](http://www.slacker.com/)
- [SomaFM](http://somafm.com)
- [SoundCloud](https://soundcloud.com)
- [Spotify (Web)](https://play.spotify.com)
- [Stingray](https://webplayer.stingray.com)
- [STITCHER](http://www.stitcher.com/)
- [Style Jukebox](http://play.stylejukebox.com/)
- [Subsonic (personal media streamer)](http://www.subsonic.org/)
- [Synology](http://synology.com)
- [TuneIn](http://tunein.com/)
- [Twitch TV](http://www.twitch.tv/)
- [Udemy](https://www.udemy.com/)
- [Vimeo](https://vimeo.com/)
- [Vessel](https://www.vessel.com/)
- [VK ("My Music" from vk.com)](http://vk.com/)
- [Watcha Play](https://play.watcha.net/)
- [Wonder FM](http://wonder.fm/)
- [XboxMusic](http://music.xbox.com)
- [Xiami](http://www.xiami.com)
- [Yandex Music](https://music.yandex.ru/)
- [Yandex Radio](https://radio.yandex.ru/)
- [YouTube](https://www.youtube.com/)
- [YouTube Music](https://music.youtube.com/)
- [Zing MP3](https://mp3.zing.vn)
- [Zvooq](http://zvooq.com)

#### Don't see your favorite site in the list ?
No Problem, Just [submit an issue](https://github.com/beardedspice/beardedspice/issues/new?title=[App%20Support]).

## Building from source

Requires Xcode and CocoaPods.

```sh
pod install
open Beardie.xcworkspace
```

Build the `Beardie` scheme. Always open the `.xcworkspace`, never the `.xcodeproj` — the pods are not linked otherwise.

To produce a DMG the way CI does:

```sh
./release.sh
```

That builds Release, stages the app with an `/Applications` symlink, and writes `Beardie-<version>.dmg` next to the script. Pass extra arguments straight through to `xcodebuild`, for example `./release.sh CODE_SIGNING_ALLOWED=NO` to build without a signing identity.

## Cutting a release

Bump `CFBundleShortVersionString` and `CFBundleVersion` in `Beardie/Beardie-Info.plist`, then tag:

```sh
git tag v2.3.0 && git push origin v2.3.0
```

The [release workflow](.github/workflows/release.yml) verifies the tag matches the version in `Info.plist`, builds the DMG and publishes it as a GitHub Release. A mismatched tag fails the build rather than shipping a mislabelled binary.

The app icon lives in `Beardie/Beardie.icon` and is edited with Icon Composer (bundled with Xcode). `actool` compiles it into both the layered form macOS 26+ renders and the classic icon sizes older versions use.

#### Want to Contribute?
Please do! Contributions are the lifeblood of the project, and yours helps keep us moving forward.

If you just want to add a new website to the list above, checkout the [app support request list](https://github.com/beardedspice/beardedspice/labels/app%20support). The **[Developer How-To Guide](docs/developers-guide-web.md)** has the information needed to get started (and don't be afraid to ask questions!).
Websites only need some (easily learned) knowledge of javascript and maybe [webpage delving with devtool](https://zapier.com/blog/inspect-element-tutorial/) (also [Chrome's official documentation](https://developers.google.com/web/tools/chrome-devtools/)). 

Integrating a new native app (aka Chrome, Firefox, Spotify) in Beardie is a little more complicated and requires **NO objective-c experience**. Many [good](https://github.com/beardedspice/beardedspice/blob/master/BeardedSpice/Tabs/SpotifyTabAdapter.m) [examples](https://github.com/beardedspice/beardedspice/blob/master/BeardedSpice/Tabs/iTunesTabAdapter.m) exist. However, some apps simply aren't compatible at this time. See the [wiki article](https://github.com/beardedspice/beardedspice/wiki/Native-App-Developers'-Guide) on getting started importing a Native app.

## Unsupported Beardie Strategies

**[Unsupported Beardie Strategies repository](https://github.com/beardedspice/BS-Strategies)**
