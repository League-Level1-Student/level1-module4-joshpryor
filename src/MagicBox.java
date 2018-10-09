/*
 *    Copyright (c) The League of Amazing Programmers 2013-2018
 *    Level 1
 */


import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MagicBox extends JPanel implements Runnable, MouseListener {
	MediaPalace med = new MediaPalace();
	
	/*
	 * Work together as a TEAM of 2 or 3 to make this project. We are going to hide secrets within the magic box. 
	 * When the user .
	 * 
	 * 
	 * 
	 * 
	 * 
	 * ...
	 * 0clicks on a secret place, stuff will happen.
	 * 
	 * 1. Make the frame respond to mouse clicks.
	 * 
	 * 2. When the mouse is clicked, use the Media Palace (bit.ly/media-palace) to play sounds, show images or speak.
	 * 
	 * 3. backgroundImage.getRGB(keyEvent.getX(), keyEvent.getY()) will give you the color of the current pixel.
	 */

	BufferedImage backgroundImage;

	public static void main(String[] args) throws Exception {
		SwingUtilities.invokeLater(new MagicBox());
	
		
		
	}

	@Override
	public void run() {
		try {
			loadBackgroundImage();
			createUI();
		} catch (Exception w) {
			System.err.println(w.getMessage());
		}
	}

	private void createUI() {
		JFrame frame = new JFrame("The Magic Box contains many secrets...");
		frame.add(this);
		frame.addMouseListener(this);
		setPreferredSize(new Dimension(backgroundImage.getWidth(), backgroundImage.getHeight()));
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		frame.setVisible(true);
		frame.pack();
		
		
	}

	private void loadBackgroundImage() throws Exception {
		String imageFile = "src/magic-box.jpg";
		try {
			backgroundImage = ImageIO.read(new File(imageFile));
		} catch (IOException e) {
			throw new Exception("Could not load image: " + imageFile);
		}
	}

	@Override
	public void paintComponent(Graphics g) {
		g.drawImage(backgroundImage, 0, 0, null);
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated m
	if (e.getX()>43&&e.getX()<102&&e.getY()>74&&e.getY()<118) {
	med.speak("marc is smart");	
	}
	
	if (e.getX()>180 && e.getX()<215 && e.getY()>518 && e.getY()<574) {
		System.out.println("yeet");
		
	
	
	
	JFrame window = new JFrame("bird");
	JPanel panel = new JPanel();
	JLabel lable = med.loadImageFromWithinProject("bird-image.png");
	panel.add(lable);
	window.add(panel);
	window.setVisible(true);
	lable.setVisible(true);
	panel.setVisible(true);
	window.pack();
	}
	
	if (e.getX()>166 && e.getX()<198 && e.getY()>834 && e.getY()<898) {

		JFrame wind = new JFrame("dude");
		JPanel pan = new JPanel();
		JLabel lab = med.loadImageFromWithinProject("dude.jpeg");
		pan.add(lab);
		wind.add(pan);
		wind.setVisible(true);
		lab.setVisible(true);
		pan.setVisible(true);
		wind.pack();
	}
	// it
	
	if (e.getX()>277 && e.getX()<386 && e.getY()>142 && e.getY()<212) {

		JFrame windo = new JFrame("the totem");
		JPanel pano = new JPanel();
		JLabel labo = med.loadImageFromWithinProject("tot.jpeg");
		pano.add(labo);
		windo.add(pano);
		windo.setVisible(true);
		labo.setVisible(true);
		pano.setVisible(true);
		windo.pack();
	}
	
	
	//med.speak("uof");
    //med.speak"the cow goes meow, the dog goes tweet, and the bird goes mooooooooo");
	System.out.println(e.getX());
	System.out.println(e.getY());
	System.out.println(backgroundImage.getRGB(e.getX(), e.getY()));
	
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
	//	if (backgroundImage.getRGB(50>e.getY() &&  ) {
			
		//}
		//med.speak("uof ");
		//backgroundImage.getRGB(keyEvent.getX(), keyEvent.getY()) 
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		//med.speak("uof");
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		//med.speak("oof");
	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		//med.speak("oof");
	}

}


