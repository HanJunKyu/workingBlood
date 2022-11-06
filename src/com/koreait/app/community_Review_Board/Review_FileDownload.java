package com.koreait.app.community_Review_Board;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;

public class Review_FileDownload implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		String saveFolder = "C:\\gb_0900_hjk\\jsp\\workspace\\workingBlood_server\\WebContent\\upload";
		
		String file_name = req.getParameter("file_name");

		PrintWriter writer = resp.getWriter();
		
		InputStream in = null;		
		OutputStream out = null;	
		File file = null;
		
		boolean check = true;
		
		try {
			file = new File(saveFolder, file_name);
			
			in = new FileInputStream(file);
			
		} catch (FileNotFoundException e) {
			check = false;
			System.out.println(e + " FileDownload.java 다운실패");
		}
		
		resp.reset();
		resp.setContentType("application/octet-stream");	
		resp.setHeader("Content-Description", "JSP Generated Data"); 
		
		if(check) {
			try {
				file_name = new String(file_name.getBytes("UTF-8"), "ISO-8859-1");

				resp.setHeader("Content-Disposition", "attachment;filename=\"" + file_name + "\"");
				resp.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
				
				resp.setHeader("Content-Length", "" + file.length());
				
				writer.flush();
				
				out = resp.getOutputStream();
				
				byte b[] = new byte[(int)(file.length())];
				
				int data = 0;
				
				while((data = in.read(b)) > 0) {
					out.write(b, 0, data);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(in != null) {
						in.close();
					}
					if(out != null) {
						out.close();
					}
				} catch (Exception e) {
					throw new RuntimeException(e.getMessage());
				}
			}
		}
		return null;
	}

}
