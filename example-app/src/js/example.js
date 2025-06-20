import { DeviceCheck } from '@capacitor-community/device-check';

window.generateToken = async () => {
    try {
        const result = await DeviceCheck.generateToken();
        console.log(`DeviceCheck token`, result.token);
      } catch (err) {
        console.log('err', err);
        // Recommendation: Report to backend and exit the application
      }
}
