package com.branch.jobboard.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ImageProcessService {
	private static ImageProcessService instance;
	private ImageProcessService() {};
	
	public static ImageProcessService getInstance() {
		if(instance == null) instance = new ImageProcessService();
		return instance;
	}
	
	/**
	 * @param is 저장할 데이터의 InputStream
	 * @param fileName 저장할 파일 경로와 이름
	 * @return 파일 저장 성공 여부
	 * @throws IOException 
	 * */
	public boolean imageSave(InputStream is, String fileName) throws IOException {
		boolean result = false;
		
		File file = new File(fileName);
		
		// 파일 이름에서 디렉토리 경로만 따로 가져와 File 객체를 생성하고 디렉토리를 로컬에 생성합니다.
		File dir = file.getParentFile();
		if(!dir.exists()) {dir.mkdirs(); }
		
		// 파일 저장을 합니다.
		try (OutputStream out = new FileOutputStream(file)){
			// 버퍼 크기
			final byte[] bytes = new byte[1024];
			
			// InputStream에서 데이터를 읽어와 OutputStream에 저장합니다.
			while(is.read(bytes) != -1) {
				out.write(bytes);
			}
			result = true;
		} catch (IOException e) {
			file.delete();
			log.error(fileName, e);
		} finally {
			is.close();
		}
		
		return result;
	}
}
