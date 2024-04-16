<p align="center"><br><img src="https://user-images.githubusercontent.com/236501/85893648-1c92e880-b7a8-11ea-926d-95355b8175c7.png" width="128" height="128" /></p>
<h3 align="center">DEVICE CHECK</h3>
<p align="center"><strong><code>@capacitor-community/device-check</code></strong></p>
<br>

The DeviceCheck API is used to reduce fraudulent use of your services by managing device state and asserting app integrity.

This plugin calls the DeviceCheck API [`generateToken`](<https://developer.apple.com/documentation/devicecheck/dcdevice/generatetoken(completionhandler:)>) method which returns a token that your App's server must verify with Apple Servers.

The call `generateToken` will return a `token` on success which you must send to your backend for verification. See [Apple's Docs on this](https://developer.apple.com/documentation/devicecheck/validating_apps_that_connect_to_your_server).

`token` is a base64 encoded string containing the token returned by []`DCDevice.current.generateToken`](https://developer.apple.com/documentation/devicecheck/dcdevice/generatetoken(completionhandler:)).

## Install

```bash
npm install @capacitor-community/device-check
npx cap sync
```

## Usage

```typescript
import { DeviceCheck } from '@capacitor-community/device-check';
...
try {
      const result = await DeviceCheck.generateToken();
      console.log(`DeviceCheck token`, result.token);
    } catch (err) {
        // Recommendation: Report to backend and exit the application
    }
```

## Versions

- If you are using Capacitor 5 use version 5.x
- If you are using Capacitor 6 use version 6.x

## API

<docgen-index>

* [`generateToken()`](#generatetoken)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### generateToken()

```typescript
generateToken() => Promise<{ token: string; }>
```

**Returns:** <code>Promise&lt;{ token: string; }&gt;</code>

--------------------

</docgen-api>

## Errors

The following errors can occur and should be handled.

On Web and Android the result of `generateToken` will be an empty token `""`.

On iOS these errors can be caught in a `catch`:

- `DeviceCheck is not supported on this device` - iOS reports that the device doesnt support the Device Check API (eg iOS less than v11)
- `DeviceCheck token encoding failed` - iOS failed to encode the token.
- `DeviceCheck error: [some-error]` - iOS reported some other error with the localized error description of `[some-error]`
