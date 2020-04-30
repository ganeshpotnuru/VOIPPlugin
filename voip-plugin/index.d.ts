import { IonicNativePlugin } from '@ionic-native/core';
/**
 * @name V O I P Plugin
 * @description
 * This plugin does something
 *
 * @usage
 * ```typescript
 * import { VOIPPlugin } from '@ionic-native/voip-plugin';
 *
 *
 * constructor(private vOIPPlugin: VOIPPlugin) { }
 *
 * ...
 *
 *
 * this.vOIPPlugin.functionName('Hello', 123)
 *   .then((res: any) => console.log(res))
 *   .catch((error: any) => console.error(error));
 *
 * ```
 */
export declare class VOIPPluginOriginal extends IonicNativePlugin {
    /**
     * This function does something
     * @param arg1 {string} Some param to configure something
     * @param arg2 {number} Another param to configure something
     * @return {Promise<any>} Returns a promise that resolves when something happens
     */
    coolMethod(arg1: string): Promise<any>;
    newTestMethod(arg1: string): Promise<any>;
    listenForTimer(arg1: string): Promise<any>;
}

export declare const VOIPPlugin: VOIPPluginOriginal;