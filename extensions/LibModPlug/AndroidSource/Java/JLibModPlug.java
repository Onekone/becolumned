package ${YYAndroidPackageName};

import android.util.Log;
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.String;

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib; 

import static net.gamephase.Audio.LibModPlug.ModPlug_Load;
import static net.gamephase.Audio.LibModPlug.ModPlug_Unload;
import static net.gamephase.Audio.LibModPlug.ModPlug_Read;
import static net.gamephase.Audio.LibModPlug.ModPlug_Stop;
import static net.gamephase.Audio.LibModPlug.ModPlug_NumChannels;
import static net.gamephase.Audio.LibModPlug.ModPlug_MuteChannel;
import static net.gamephase.Audio.LibModPlug.ModPlug_GetChannelVolume;
import static net.gamephase.Audio.LibModPlug.ModPlug_SetChannelVolume;
import static net.gamephase.Audio.LibModPlug.ModPlug_GetName;
import static net.gamephase.Audio.LibModPlug.ModPlug_GetLength;
import static net.gamephase.Audio.LibModPlug.ModPlug_GetTempo;
import static net.gamephase.Audio.LibModPlug.ModPlug_SetTempo;

public class JLibModPlug 
{        
	
	public double JModPlug_Load(double loop_count, double size, String buffer_address)
	{
		return ModPlug_Load(loop_count, size, StringAddressToLongPointer(buffer_address));
	}
	
	public double JModPlug_Unload()
	{
		return ModPlug_Unload();
	}
	
	public double JModPlug_Read(String buffer_address)
	{
		return ModPlug_Read(StringAddressToLongPointer(buffer_address));
	}
	
	public double JModPlug_Stop()
	{
		return ModPlug_Stop();
	}
	
	public double JModPlug_NumChannels()
	{
		return ModPlug_NumChannels();
	}
	
	public double JModPlug_MuteChannel(double channel, double mute)
	{
		return ModPlug_MuteChannel(channel, mute);
	}
	
	public double JModPlug_GetChannelVolume(double channel)
	{
		return ModPlug_GetChannelVolume(channel);
	}
	
	public double JModPlug_SetChannelVolume(double channel, double volume)
	{
		return ModPlug_SetChannelVolume(channel, volume);
	}
	
	public String JModPlug_GetName()
	{
		return ModPlug_GetName();
	}
	
	public double JModPlug_GetLength()
	{
		return ModPlug_GetLength();
	}
	
	public double JModPlug_GetTempo()
	{
		return ModPlug_GetTempo();
	}
	
	public double JModPlug_SetTempo(double tempo)
	{
		return ModPlug_SetTempo(tempo);
	}

	// This converts a memory address in string format to a long integer
	// It will be cast to a pointer in C++
	private long StringAddressToLongPointer(String address)
	{
		if(address.charAt(1) == 'x')
			return Long.parseLong(address.substring(2), 16);
		else
			return Long.parseLong(address, 16);
	}
	
}