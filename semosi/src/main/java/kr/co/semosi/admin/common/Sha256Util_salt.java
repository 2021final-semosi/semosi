package kr.co.semosi.admin.common;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;


@Component("sha256Util_salt")
public class Sha256Util_salt {
    public String endcryData(String data, String salt) throws Exception{
	MessageDigest mDigest = MessageDigest.getInstance("SHA-256");
	String str = data+salt;
	
	mDigest.update(str.getBytes());
	byte [] msgStr = mDigest.digest();
	StringBuffer hexString = new StringBuffer();
	for(byte d : msgStr){
	    hexString.append(String.format("%02X", d));
	}
	return hexString.toString();
	
    }

}
