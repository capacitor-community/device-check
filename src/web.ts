import { WebPlugin } from '@capacitor/core';

import type { CapacitorDeviceCheckPlugin } from './definitions';

export class CapacitorDeviceCheckWeb
  extends WebPlugin
  implements CapacitorDeviceCheckPlugin {
  async generateToken(): Promise<{ token: string }> {
    return { token: '' };
  }
}
