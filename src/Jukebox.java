/*
 *    Copyright (c) The League of Amazing Programmers 2013-2018
 *    Level 1
 */


import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.URL;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

import javazoom.jl.player.advanced.AdvancedPlayer;

/* 1. Download the JavaZoom jar from here: http://bit.ly/javazoom
 * 2. Right click your project and add it as an External JAR (Under Java Build Path > Libraries).*/

public class Jukebox implements Runnable, ActionListener {
	JFrame window = new JFrame();
	   JPanel panal = new JPanel();
	   JButton button1 = new JButton();
	   JButton button2 = new JButton();
	   JButton button3 = new JButton();
	   
	   Song ny = new Song("Nyan.mp3");
	   Song fx = new Song("fox.mp3");
	   Song dg = new Song("doge.mp3");
	   
	public static void main(String[] args) {
		SwingUtilities.invokeLater(new Jukebox());
	}

           public void run() {

		// 3. Find an mp3 on your computer or on the Internet.
        	   
		// 4. Create a Song

        	  
		// 5. Play the Song
        	   
        	  window.setTitle("jukebox");
        	  window.add(panal);
        	  panal.add(button1);
        	  panal.add(button2);
        	  panal.add(button3);
        	  window.setVisible(true);
		/*
		 * 6. Create a user interface for your Jukebox so that the user can to
		 * choose which song to play. You can use can use a different button for
		 * each song, or a picture of the album cover. When the button or album
		 * cover is clicked, stop the currently playing song, and play the one
		 * that was selected.
		 */
        	 
        	   button1.setText("Nyan cat");
        	   button2.setText("what does the fox say");
        	   button3.setText("what does the doge say ???");
        	   button1.addActionListener(this);
        	   button2.addActionListener(this);
        	   button3.addActionListener(this);
        	   
        	   //  }
        	   
        	   window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
window.pack();

          }
	/* Use this method to add album covers to your Panel. */
	private JLabel loadImage(String fileName) {
		URL imageURL = getClass().getResource(fileName);
		Icon icon = new ImageIcon(imageURL);
		return new JLabel(icon);
	}
//////////
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		
		
		
		
		
if (button1 == e.getSource()) {
	fx.stop();
	dg.stop();
	
			ny.play();
		}
if (button2 == e.getSource()) {
	ny.stop();
	dg.stop();
	
	fx.play();
}
if (button3 == e.getSource()) {
	fx.stop();
	ny.stop();
	
	dg.play();
}
		
		
		
		
		
		
	}
	
	

}

class Song {

	private int duration;
	private String songAddress;
	private AdvancedPlayer mp3Player;
	private InputStream songStream;

	/**
	 * Songs can be constructed from files on your computer or Internet
	 * addresses.
	 * 
	 * Examples: <code> 
	 * 		new Song("everywhere.mp3"); 	//from default package 
	 * 		new Song("/Users/joonspoon/music/Vampire Weekend - Modern Vampires of the City/03 Step.mp3"); 
	 * 		new	Song("http://freedownloads.last.fm/download/569264057/Get%2BGot.mp3"); 
	 * </code>
	 */
	public Song(String songAddress) {
		this.songAddress = songAddress;
	}

	public void play() {
		loadFile();
		if (songStream != null) {
			loadPlayer();
			startSong();
		} else
			System.err.println("Unable to load file: " + songAddress);
	}

	public void setDuration(int seconds) {
		this.duration = seconds * 100;
	}

	public void stop() {
		if (mp3Player != null)
			mp3Player.close();
	}

	private void startSong() {
		Thread t = new Thread() {
			public void run() {
				try {
					if (duration > 0)
						mp3Player.play(duration);
					else
						mp3Player.play();
				} catch (Exception e) {
				}
			}
		};
		t.start();
	}

	private void loadPlayer() {
		try {
			this.mp3Player = new AdvancedPlayer(songStream);
		} catch (Exception e) {
		}
	}

	private void loadFile() {
		if (songAddress.contains("http"))
			this.songStream = loadStreamFromInternet();
		else
			this.songStream = loadStreamFromComputer();
	}

	private InputStream loadStreamFromInternet() {
		try {
			return new URL(songAddress).openStream();
		} catch (Exception e) {
			return null;
		}
	}

	private InputStream loadStreamFromComputer() {
		try {
			return new FileInputStream(songAddress);
		} catch (FileNotFoundException e) {
			return this.getClass().getResourceAsStream(songAddress);
		}
	}
}

