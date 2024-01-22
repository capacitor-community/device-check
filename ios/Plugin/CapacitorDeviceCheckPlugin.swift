import Foundation
import Capacitor
import DeviceCheck

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorDeviceCheckPlugin)
public class CapacitorDeviceCheckPlugin: CAPPlugin {
    @objc func generateToken(_ call: CAPPluginCall) {
        guard DCDevice.current.isSupported == true else {
            call.reject("DeviceCheck is not supported on this device")
            return
        }
        DCDevice.current.generateToken { tokenData, error in
            guard error == nil,
                  let deviceToken = tokenData?.base64EncodedString() else {
                switch error {
                case .none: call.reject("DeviceCheck token encoding failed")
                case .some(let error):
                    call.reject("DeviceCheck error:\(error.localizedDescription)")
                }
                return
            }
            call.resolve(["token": deviceToken])
        }
    }
}
