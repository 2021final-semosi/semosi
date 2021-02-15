package kr.co.semosi.common;

import java.security.MessageDigest;

import org.springframework.stereotype.Component;


@Component("Sha256Util")
public class Sha256Util {

	public String encryData(String salt, String data) throws Exception {
		// TODO Auto-generated method stub
		
		MessageDigest mDigest = MessageDigest.getInstance("SHA-256");
		
		String str = data+salt; // str = memberPw + memberId
		
		mDigest.update(str.getBytes()); //문자열의 데이터를 꺼내서 암호화 처리 
		
		byte [] msgStr = mDigest.digest(); // SHA-256으로 변환하여 데이터를 가져오는 메소드
		
		//현재 데이터는 10 진수이므로 16진수로 변환
		StringBuffer hexString = new StringBuffer();
		
		for(byte d : msgStr){
			hexString.append(String.format("%02X", d));	
		}
		
		return hexString.toString();
	}

}
