
import javax.swing.JButton;

import java.awt.Container;
import java.awt.Dimension;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPopupMenu.Separator;
import javax.swing.JTabbedPane;
import javax.swing.JTextField;

//import net.miginfocom.swt.MigLayout;

//import org.jdesktop.application.SingleFrameApplication;

public class NewClass extends SingleFrameApplication {

    private static final int FIXED_WIDTH = 550;
    private static final Dimension INITAL_SIZE = new Dimension(FIXED_WIDTH, 230);

    public static void main(String[] args) {
        System.out.println("DENTRO: LoginFrame() ---> main()");
  //      launch(LoginFrame2.class, args);
    }

   // @Override
    protected void startup() {
        // TODO Auto-generated method stub
        System.out.println("Inside startup()");


        JFrame mainFrame = this.getMainFrame();         // main JFrame that represents the Windows
        mainFrame.setTitle("XCloud Login");

        mainFrame.setPreferredSize(INITAL_SIZE);
        mainFrame.setResizable(false);

        Container mainContainer = mainFrame.getContentPane();       // main Container into the main JFrame

        mainContainer.add(new JLabel(new ImageIcon("1.jpg")));

        // JPanel creation and settings of the MigLayout on it:
        JPanel externalPanel = new JPanel();
   //     externalPanel.setLayout(new net.miginfocom.swing.MigLayout("fill"));

        externalPanel.add(new JLabel("Username"), "w 50%, wrap");

        JTextField userNameTextField = new JTextField(20);

        externalPanel.add(userNameTextField, "w 90%, wrap");

        externalPanel.add(new JLabel("Password"), "w 50%, wrap");
        JTextField pswdTextField = new JTextField(20);
        externalPanel.add(pswdTextField, "w 90%, wrap");

        JButton loginButton = new JButton("Login");

        externalPanel.add(loginButton, "w 25%, wrap");

        mainContainer.add(externalPanel);
        //mainFrame.add(mainContainer);

        show(mainFrame);


    }

    private JFrame getMainFrame() {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    private void show(JFrame mainFrame) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

}