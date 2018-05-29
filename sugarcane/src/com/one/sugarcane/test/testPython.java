package com.one.sugarcane.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
/**
 * java程序里调用python以及python的第三方模块
 * @author 秦晓宇
 * @time 2018.5.3
 */
public class testPython {
	public static void main(String[] args) throws IOException {
		File directory = new File("");
		//获取文件根目录
        String courseFile = directory.getCanonicalPath();
		String[] args1 = new String[] { "python", courseFile+"\\src\\com\\one\\sugarcane\\test\\k-means\\test3.py" };
		ProcessBuilder builder = new ProcessBuilder();
		builder.command(args1);
		Process process;
		try {
			process = builder.start();
			process.waitFor();
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
			bufferedReader.lines().forEach(System.out::println);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
