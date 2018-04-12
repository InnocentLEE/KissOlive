package util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class Validate {
	public static boolean validateTelphone(String telphone){
		String regex = "^1[3|4|5|7|8][0-9]{9}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher match = pattern.matcher(telphone);
        return match.matches();
	}
	public static boolean validatePassword(String password){
		String regex = "^[a-zA-Z]\\w{5,17}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher match = pattern.matcher(password);
        return match.matches();
	}
}
