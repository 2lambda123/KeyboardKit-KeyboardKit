# KeyboardKit

<p align="center">
    <img src ="Resources/Logo.png" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/cocoapods/p/KeyboardKit.svg?style=flat" alt="Platform" />
    <img src="https://img.shields.io/badge/Swift-5.5-orange.svg" alt="Swift 5.5" />
    <img src="https://img.shields.io/github/license/KeyboardKit/KeyboardKit" alt="MIT License" />
    <a href="https://twitter.com/getkeyboardkit">
        <img src="https://img.shields.io/badge/contact-@getkeyboardkit-blue.svg?style=flat" alt="Twitter: @getkeyboardkit" />
    </a>
</p>



## About KeyboardKit

KeyboardKit helps you build custom keyboard extensions with Swift and SwiftUI. It extends the native keyboard APIs and provides you with a lot more functionality than is otherwise available. 

The end result can look something like this...or entirely different:

<p align="center">
    <img src ="Resources/Demo.gif" width="300" />
</p>

If you're new to iOS keyboard extensions, [this great guide][Guide] will help you get started. You can also have a look at the demo apps for inspiration.



## Supported Platforms

KeyboardKit supports the following platforms:

* iOS 13.0
* macOS 11.0
* tvOS 13.0
* watchOS 6.0

Although KeyboardKit builds on all platform, some features are unavailable on some platforms. 



## Installation

The best way to install KeyboardKit is to use the Swift Package Manager.

```
https://github.com/KeyboardKit/KeyboardKit.git
```

You can add the library to the main app, the keyboard extension and any other targets that need it.



## Getting started

Once KeyboardKit is added to your project, you can start using it in your application and keyboard extension.

[Read more here][Getting-Started]



## Documentation

The KeyboardKit documentation contains extensive information, code examples etc. and makes it easy to overview the various parts of the library.

You can either [download][Documentation] the documentation or build it directly in Xcode, using `Product/Build Documentation`.



## 🇸🇪 Localization

KeyboardKit is localized in 50 keyboard-specific locales:

🇺🇸 🇦🇱 🇦🇪 🇧🇾 🇧🇬 🇦🇩 🇭🇷 🇨🇿 🇩🇰 🇳🇱 <br />
🇧🇪 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 🇧🇪 🇨🇭 <br />
🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇭🇺 🇮🇸 🇮🇪 🇮🇹 🇹🇯 <br />
🇱🇻 🇱🇹 🇲🇰 🇲🇹 🇲🇳 🇳🇴 🇮🇷 🇵🇱 🇵🇹 🇧🇷 <br />
🇷🇴 🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 🇸🇪 🇹🇷 🇺🇦

[Read more here][Localization]



## Features 

KeyboardKit comes packed with features. Checkout the list below, and have a look at the documentation, demo apps and source code for even more information and examples.


### 💥 Actions

KeyboardKit comes with many keyboard-specific actions, like `character` inputs, `emojis`, `backspace`, `space`, `newline`, `image` etc. You can even create your own actions.

[Read more here][Actions]


### 🎨 Appearance

KeyboardKit comes with an appearance engine that lets you easily style your keyboards.

[Read more here][Appearance]


### 🔊 Audio

KeyboardKit defines system audio types and ways to play them.

[Read more here][Audio-Feedback]


### 💡Autocomplete

KeyboardKit can present autocomplete suggestions as users type.

[Read more here][Autocomplete]


### 🗯 Callouts

KeyboardKit lets you show input callouts as users type, as well as action callouts with alternate actions for the currently pressed key.

[Read more here][Callouts]


### 😊 Emojis

KeyboardKit defines emojis and emoji categories that you can use in your own keyboards.

[Read more here][Emojis]


### 🧩 Extensions

KeyboardKit provides a bunch of extensions to native types.

[Read more here][Extensions]


### ⌨️ External Keyboards

KeyboardKit lets you detect whether or not an external keyboard is used.

[Read more here][External]


### 👋 Feedback

KeyboardKit keyboards can give audio and haptic feedback as users type. 

Read more about [audio feedback][Audio-Feedback] and [haptic feedback][Haptic-Feedback].


### 👆 Gestures

KeyboardKit comes with keyboard-specific gestures that you can use in your own keyboards.

[Read more here][Gestures]


### 👋 Haptics

KeyboardKit defines haptic feedback types and ways to trigger them.

[Read more here][Haptic-Feedback]


### 🔤 Input Sets

KeyboardKit comes with an input set engine that make it easy to create `alphabetic`, `numeric` and `symbolic`  keyboards in different languages.

[Read more here][Input-Sets]


### ⌨️ Keyboard Layouts

KeyboardKit comes with a layout engine that makes it easy to create specific keyboard layouts for various devices, orientations and locales.

[Read more here][Keyboard-Layouts]


### 💱 Keyboard Types

KeyboardKit comes with many different keyboard types, like `alphabetic`, `numeric`, `symbolic`, `emoji` etc. You can even create your own types.

[Read more here][Keyboard-Types]


### 🌐 Locales

KeyboardKit defines keyboard-specific locales and provides localized content for the supported locales.

[Read more here][Localization]


### 👁 Previews

KeyboardKit defines a bunch of preview-specific types that simplify previewing keyboard views in SwiftUI.

[Read more here][Previews]


### ➡️ Proxy

KeyboardKit defines a bunch of extensions to `UITextDocumentProxy` and ways to route text to other sources.

[Read more here][Proxy]


### ⬅️ RTL

KeyboardKit supports RTL (right-to-left) locales, but your extension need to be configured to support it.

[Read more here][RTL]


### 🎨 Styles

KeyboardKit defines a bunch of styles that simplify customizing the look of various keyboard components.

[Read more here][Styles]


### 🖼 Views

KeyboardKit comes with a bunch of keyboard-specific views, like keyboards, toobars, buttons etc

[Read more here][Views]



## KeyboardKit Pro

KeyboardKit Pro is a license-based extensions that unlocks pro features, such as additional locales, autocomplete, convenience views etc. It can save you a lot of time when developing more complex keyboards.

KeyboardKit Pro is also a way to support this project, which is otherwise completely free and developed by a single person (with great help from the community). If you appreciate this project, consider going Pro.  

[Read more here][Pro]



## Demo Applications

This repository contains a `Demo` folder with two demo apps that lets you try out KeyboardKit and KeyboardKit Pro:

* The standard demo has a system keyboard that mimics an English keyboard and a unicode-based keyboard.
* The pro demo has a system keyboard with support for all keyboard locales and an `RTL` variant as well. 

To run the demo apps, open and run the projects, then enable the keyboards under system settings. Full access is required forfeatures like audio and haptic feedback.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* E-mail: [info@getkeyboardkit.com][Email]
* Twitter: [@getkeyboardkit][Twitter]
* Web site: [getkeyboardkit.com][Website]


## Sponsors and Clients

This project is proudly sponsored by the following companies:

<a href="https://www.oribi.se/en">
    <img src="Resources/sponsors/oribi.png" alt="Oribi Icon" title="Oribi" width=120 />
</a>
<a href="https://www.phonetoroam.com">
    <img src="Resources/sponsors/phonetoroam.png" alt="phonetoroam Icon" title="phonetoroam" width=120 />
</a>
<a href="https://vitalisapps.com">
    <img src="Resources/sponsors/vitalis.png" alt="Vitalis Icon" title="Vitalis" width=120 />
</a>
<a href="https://letterkey.eu">
    <img src="Resources/sponsors/letterkey.png" alt="LetterKey Icon" title="LetterKey" width=120 />
</a>
<a href="http://anomaly.net.au">
    <img src="Resources/sponsors/anomaly.png" alt="Anomaly Software Icon" title="Anomaly Software" width=120 />
</a>
<a href="https://www.milocreative.com">
    <img src="Resources/sponsors/milo.png" alt="Milo Creative Icon" title="Milo Creative" width=120 />
</a>

KeyboardKit is free, but please consider sponsoring the project if you find it useful. You can support KeyboardKit through [GitHub Sponsors][Sponsors], by signing up for a [Pro][Pro] license, paying for support, donations etc.



## License

KeyboardKit is available under the MIT license. See the [LICENSE][License] file for more info.



[Email]: mailto:info@getkeyboardkit.com
[Twitter]: https://twitter.com/getkeyboardkit
[Website]: https://getkeyboardkit.com
[Sponsors]: https://github.com/sponsors/danielsaidi
[Pro]: https://github.com/KeyboardKit/KeyboardKitPro

[Documentation]: https://github.com/danielsaidi/Documentation/blob/main/Docs/KeyboardKit.doccarchive.zip?raw=true
[License]: https://github.com/KeyboardKit/KeyboardKit/blob/master/LICENSE

[Actions]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Actions.md
[Appearance]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Appearance.md
[Audio-Feedback]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Audio-Feedback.md
[Autocomplete]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Autocomplete.md
[Callouts]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Callouts.md
[Emojis]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Emojis.md
[Extensions]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Extensions.md
[External]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/External.md
[Gestures]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Gestures.md
[Getting-Started]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Getting-Started.md
[Haptic-Feedback]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Haptic-Feedback.md
[Input-Sets]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Input-Sets.md
[Keyboard-Layouts]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Keyboard-Layouts.md
[Keyboard-Types]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Keyboard-Types.md
[Localization]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Localization.md
[Previews]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Previews.md
[Proxy]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Proxy.md
[RTL]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/RTL.md
[Styles]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Styles.md
[Views]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Views.md

[Guide]: https://shyngys.com/ios-custom-keyboard-guide
