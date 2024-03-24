import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.Random;
import javax.swing.JPanel;
public class GameFrame extends JFrame{

    GameFrame(){

        GamePanel gamePanel = new GamePanel();

        // Add the gamePanel to the frame
        this.add(gamePanel);

        // Set frame properties
        this.setTitle("Snake");
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setResizable(false);
        this.pack(); // Pack the components to fit the preferred size of subcomponents
        this.setLocationRelativeTo(null); // Center the frame on the screen
        this.setVisible(true); // Make the frame visible


    }

}