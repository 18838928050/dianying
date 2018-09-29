package adminManager;

import javax.swing.JOptionPane;

public class PubliInfo {
	public static void getMess(String meg) {
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信11息提示";
		JOptionPane.showMessageDialog(null, meg, title, type);
	}

}
