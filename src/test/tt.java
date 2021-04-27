package test;

import java.io.FileNotFoundException;
import java.io.IOException;

public class tt {
	public static void main(String [] args) throws IOException {
		String url = "/Users/jiaojiao/eclipse-workspace/Parsing/WebContent/outfile/pre_out";
		java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.FileReader(url));
		String s = reader.readLine();
		int i=0,j=0;
		String [] arr = s.split("\t");
		i=arr.length;
		while (s != null) {
			
//			String [] arr = s.split("\t");
//			for(String string:arr)
//				System.out.print(string+",");
//		System.out.print("\n");
			s = reader.readLine();
			j++;
		}
		System.out.println("i= "+i+"  j = "+j);
		reader.close();
	}
	
}
