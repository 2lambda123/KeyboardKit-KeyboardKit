# ``KeyboardKit``

KeyboardKit is a Swift SDK that lets you create fully customizable keyboards in SwiftUI.


## Overview

![KeyboardKit logo](Logo.png)

KeyboardKit is a Swift SDK that lets you create fully customizable keyboards in a few lines of code, using SwiftUI.

KeyboardKit extends Apple's native APIs and provides you with a lot more functionality. It lets you mimic the native iOS keyboard and tweak its style and behavior, or create completely custom keyboards.



## Installation

KeyboardKit can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKit.git
```

After installing KeyboardKit, make sure to link it to all targets that need it.

> Important: If you're a KeyboardKit Pro user, please note that unlike KeyboardKit, it's a binary target and must thus ONLY be added to the app target. If you add it to any other target, it may crash at runtime. 



## Gettings Started

The <doc:Getting-Started> article helps you get started with KeyboardKit.



## Features

KeyboardKit comes packed features to help you build amazing keyboard extensions:

* ⌨️ <doc:Essentials> - KeyboardKit comes with a bunch of essential features, types and views.
* 💥 <doc:Actions-Article> - KeyboardKit makes it easy to trigger actions like character insertion, locale switching, etc.
* 🤖 <doc:AI-Article> - KeyboardKit unlocks additional capabilities that are useful for AI-based tools.
* 💡 <doc:Autocomplete-Article> - KeyboardKit can perform on-device and remote autocomplete & autocorrect.
* 🔤 <doc:Buttons-Article> - KeyboardKit can style any view as a keyboard button, with rich customization capabilities.
* 🗯 <doc:Callouts-Article> - KeyboardKit can show input and secondary action callouts.
* 🌈 <doc:Colors-Article> - KeyboardKit defines keyboard-specific colors.
* 📱 <doc:Device-Article> - KeyboardKit provides device-specific utilities.
* 🎤 <doc:Dictation-Article> - KeyboardKit can perform dictation from the keyboard.
* 😀 <doc:Emojis-Article> - KeyboardKit defines an emoji type, categories, an emoji keyboard, etc.
* ⌨️ <doc:External-Keyboards-Article> - KeyboardKit can detect and react to external keyboards.
* 🔉 <doc:Feedback-Article> - KeyboardKit can trigger and customize audio and haptic feedback.
* 👆 <doc:Gestures-Article> - KeyboardKit has rich, customizable keyboard-specific gestures.
* 🖼️ <doc:Images-Article> - KeyboardKit defines keyboard-specific images.
* 🔣 <doc:Layout-Article> - KeyboardKit defines dynamic input sets and customizable keyboard layouts.
* 🌐 <doc:Localization-Article> - KeyboardKit supports 63 locales.
* 🗺️ <doc:Navigation-Article> - KeyboardKit lets you open urls and other apps from the keyboard.
* 👁 <doc:Previews-Article> - KeyboardKit has SwiftUI preview support and lets you show keyboard previews to your users.
* ➡️ <doc:Proxy-Article> - KeyboardKit extends the native `UITextDocumentProxy` with a lot more capabilities.
* ⚙️ <doc:Settings-Article> - KeyboardKit has a bunch of tools for managing in-app settings & System Settings.
* 🩺 <doc:State-Article> - KeyboardKit lets you detect if a keyboard is enabled, has full access, etc.
* 🎨 <doc:Styling-Article> - KeyboardKit provides pre-defined themes and lets you style your keyboards to great extent.
* 🚏 <doc:Text-Routing-Article> - KeyboardKit can route text input from the main app to in-keyboard textfields.
* 🌁 <doc:Views-Article> - KeyboardKit defines a bunch of keyboard-related views and modifiers.



## Supported Locales

KeyboardKit supports **63** keyboard-specific ``KeyboardLocale``s:

🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🇭🇷 🇨🇿 🇩🇰 <br />
🇳🇱 🇧🇪 🇺🇸 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 <br />
🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇺🇸 🇮🇱 🇭🇺 <br />
🇮🇸 🏳️ 🇮🇩 🇮🇪 🇮🇹 🇰🇿 🇹🇯 🇹🇯 🇹🇯 🇱🇻 <br />
🇱🇹 🇲🇰 🇲🇾 🇲🇹 🇲🇳 🇳🇴 🏳️ 🇮🇷 🇵🇱 🇵🇹 <br />
🇧🇷 🇷🇴 🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 🇰🇪 🇸🇪 <br />
🇹🇷 🇺🇦 🇺🇿 <br />

KeyboardKit provides a basic keyboard layout with basic callout actions. [KeyboardKit Pro][Pro] unlocks localized layouts, callouts & behaviors for all supported locales, as described in the <doc:Localization-Article> article.



## KeyboardKit Pro

[KeyboardKit Pro][Pro] is a commercial add-on that unlocks pro features, like localized keyboards, layouts & services for all supported locales, on-device and remote autocomplete & autocorrect, dictation, themes, etc.

The [KeyboardKit app][App] on the App Store lets you try many pro features directly on your iPhone & iPad, without having to write any code.

You can purchase a KeyboardKit Pro license from the [KeyboardKit website][Website].



## License

KeyboardKit is available under the MIT license.



[App]: https://keyboardkit.com/app
[Pro]: https://github.com/KeyboardKit/KeyboardKitPro
[Website]: https://keyboard.com



## Topics

### Getting Started

- <doc:Getting-Started>

### Features

- <doc:Essentials>
- <doc:Actions-Article>
- <doc:AI-Article>
- <doc:Autocomplete-Article>
- <doc:Buttons-Article>
- <doc:Callouts-Article>
- <doc:Colors-Article>
- <doc:Device-Article>
- <doc:Dictation-Article>
- <doc:Emojis-Article>
- <doc:External-Keyboards-Article>
- <doc:Feedback-Article>
- <doc:Gestures-Article>
- <doc:Images-Article>
- <doc:Layout-Article>
- <doc:Localization-Article>
- <doc:Navigation-Article>
- <doc:Previews-Article>
- <doc:Proxy-Article>
- <doc:Settings-Article>
- <doc:State-Article>
- <doc:Styling-Article>
- <doc:Text-Routing-Article>
- <doc:Views-Article>

### Essentials

- ``KeyboardInputViewController``
- ``Keyboard``
- ``KeyboardBehavior``
- ``KeyboardContext``
- ``KeyboardController``
- ``StandardKeyboardBehavior``
- ``SystemKeyboard``
- ``SystemKeyboardItem``

### Actions

- ``KeyboardAction``
- ``KeyboardActionHandler``
- ``StandardKeyboardActionHandler``

### Autocomplete

- ``Autocomplete``
- ``AutocompleteContext``
- ``AutocompleteProvider``
- ``AutocompleteToolbar``

### Buttons

- ``KeyboardButton``
- ``NextKeyboardButton``

### Callouts

- ``Callouts``
- ``CalloutContext``
- ``CalloutActionProvider``
- ``StandardCalloutActionProvider``
- ``BaseCalloutActionProvider``

### Device

- ``DeviceType``
- ``InterfaceOrientation``

### Dictation

- ``Dictation``
- ``DictationContext``
- ``DictationService``
- ``KeyboardDictationService``

### Emojis

- ``Emoji``

### Feedback

- ``AudioFeedback``
- ``HapticFeedback``
- ``FeedbackConfiguration``

### Gestures

- ``Gestures``
- ``DragGestureHandler``

### Layout

- ``InputSet``
- ``KeyboardLayout``
- ``KeyboardLayoutProvider``
- ``KeyboardLayoutProviderProxy``
- ``KeyboardLayoutRowIdentifiable``

- ``BaseKeyboardLayoutProvider``
- ``StandardKeyboardLayoutProvider``
- ``InputSetBasedKeyboardLayoutProvider``
- ``iPadKeyboardLayoutProvider``
- ``iPhoneKeyboardLayoutProvider``

### Localization

- ``KKL10n``
- ``KeyboardLocale``
- ``LocaleContextMenu``
- ``LocaleDictionary``
- ``LocalizedService``

### Previews

- ``KeyboardPreviews``

### Proxy

- ``Proxy``
- ``TextInputProxy``

### Settings

- ``KeyboardSettingsLink``

### State

- ``KeyboardStateContext``
- ``KeyboardStateInspector``
- ``KeyboardStateLabel``
- ``KeyboardStateLabelStyle``

### Styling

- ``Styling``
- ``KeyboardFont``
- ``KeyboardStyle``
- ``KeyboardStyleProvider``

- ``StandardKeyboardStyleProvider``
