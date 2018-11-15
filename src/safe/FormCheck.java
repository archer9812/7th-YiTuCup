package safe;

import javax.swing.text.StyledEditorKit;
import java.math.BigDecimal;

public class FormCheck {
    public static int check(String content, int defaultValue) {
        int temp;
        try{
            temp = Integer.parseInt(content);
        } catch (Exception e) {
            System.out.println(e);
            temp = defaultValue;
        }
        return temp;
    }
    public static BigDecimal check(String content, BigDecimal defaultValue) {
        BigDecimal temp;
        try{
            temp = new BigDecimal(content);

        } catch (Exception e) {
            System.out.println(e);
            temp = defaultValue;
        }
        return temp;
    }
    public static boolean check(String content) {
        try {
            String mid = content;
            if (mid.equals("1")) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
}
