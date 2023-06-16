package kr.ac.kopo.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

	private Map<String, Controller> mappings;

	public HandlerMapping(String propLoc) {
		mappings = new HashMap<>();
		Properties prop = new Properties();
		try {
			InputStream is = new FileInputStream(propLoc);
			prop.load(is);
			
			Set<Object> keys = prop.keySet();
			for(Object key : keys) {
				System.out.println(key);
				String className = prop.getProperty(key.toString());
				System.out.println(key +","+className);
				
				Class<?> clz = Class.forName(className);
				Constructor<?> constructor = clz.getConstructor();

				mappings.put(key.toString(), (Controller)constructor.newInstance());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
//		mappings.put("/member/mypage.do", MyPageController);
		
		}
	public Controller getController(String uri) {
		
		return mappings.get(uri);
	}
	
//	public static void main(String[] args) throws Exception{
////		java.util.Random r = new java.util.Random(); 
////		System.out.println(r.nextInt());
//		
//		Class<?> clz = Class.forName("java.util.Random");
//		
////		clz.newInstance();
//		Constructor<?> constructor = clz.getConstructor();
//		Object obj = constructor.newInstance();
//		System.out.println(((java.util.Random)obj).nextInt());
//		
//	}
	
	
}