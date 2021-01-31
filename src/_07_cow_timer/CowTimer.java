package _07_cow_timer;
/*
 *    Copyright (c) The League of Amazing Programmers 2013-2019
 *    Level 1
 */

import java.applet.AudioClip;
import java.io.IOException;
import javax.swing.JApplet;

public class CowTimer {
	public int seconds;
	/*
	 * 1. Make a constructor for the CowTimer class that initializes the seconds
	 * variable
	 */
	public CowTimer(int seconds) {
		this.seconds=seconds;
	}
	/* 4. Complete the main method of the CowTimerRunner class */

	

	public void setTime(int seconds) {
		this.seconds = seconds;
		System.out.println("Cow time set to " + seconds + " seconds.");
	}

	public void start() throws InterruptedException {
		/*
		 * 2. Count down the seconds, print the current seconds then sleep for the number
		 * of seconds using Thread.sleep(int milliseconds).
		 */
		for(int i=seconds;i>0;i--) {
		System.out.println(i);
		Thread.sleep(1000);
		}
			playSound("moo.wav");
		/*
		 * 3. When the timer is finished, use the playSound method to play a moo sound.
		 * You can use the .wav file in the default package, or you can download one
		 * from freesound.org, then drag it intothe default package.
		 */
		
		
	}

	private void playSound(String fileName) {
		AudioClip sound = JApplet.newAudioClip(getClass().getResource(fileName));
		sound.play();
	
	}

	static void speak(String words) {
		if (System.getProperty("os.name").contains("Windows")) {
			String cmd = "PowerShell -Command \"Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('"
					+ words + "');\"";
			try {
				Runtime.getRuntime().exec(cmd).waitFor();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				Runtime.getRuntime().exec("say " + words).waitFor();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
