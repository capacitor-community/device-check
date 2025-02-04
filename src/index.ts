import { registerPlugin } from '@capacitor/core';

import type { CapacitorDeviceCheckPlugin } from './definitions';

const DeviceCheck = registerPlugin<CapacitorDeviceCheckPlugin>('CapacitorDeviceCheck', {
  web: () => import('./web').then((m) => new m.CapacitorDeviceCheckWeb()),
});

export * from './definitions';
export { DeviceCheck };
