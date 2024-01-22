export interface CapacitorDeviceCheckPlugin {
  generateToken(): Promise<{ token: string }>;
}
