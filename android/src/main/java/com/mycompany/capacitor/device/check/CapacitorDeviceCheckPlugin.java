package com.mycompany.capacitor.device.check;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "CapacitorDeviceCheck")
public class CapacitorDeviceCheckPlugin extends Plugin {

    private CapacitorDeviceCheck implementation = new CapacitorDeviceCheck();

    @PluginMethod
    public void generateToken(PluginCall call) {        
        JSObject ret = new JSObject();
        ret.put("token", implementation.generateToken());
        call.resolve(ret);
    }
}
