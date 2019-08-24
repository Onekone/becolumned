
package net.gamephase.Audio;

public class LibModPlug 
{    
	public static native double ModPlug_Load(double loop_count, double size, long buffer_address);
	public static native double ModPlug_Unload();
	public static native double ModPlug_Read(long buffer_address);
	public static native double ModPlug_Stop();
	public static native double ModPlug_NumChannels();
	public static native double ModPlug_MuteChannel(double channel, double mute);
	public static native double ModPlug_GetChannelVolume(double channel);
	public static native double ModPlug_SetChannelVolume(double channel, double volume);
	public static native String ModPlug_GetName();
	public static native double ModPlug_GetLength();
	public static native double ModPlug_GetTempo();
	public static native double ModPlug_SetTempo(double tempo);

	static {
		System.loadLibrary("modplug");
	}        
}