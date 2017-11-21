package com.yol.web.member.creation;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.ConceptDTO;
import com.yol.web.DTO.LoginDTO;
import com.yol.web.DTO.VCreationDTO;

@Repository
public class CreationDAO {

	
	@Autowired
	private SqlSessionTemplate sql;
	
	public int insertJoinBoard(VCreationDTO dto) {
		// 
/*		System.out.println();
		System.out.println(dto.getmSeq());
		System.out.println(dto.getjStart());
		System.out.println(dto.getjEnd());
	*/
		
		int result = sql.insert("createproject.insertJoinBoard", dto);
		
		return result;
	}

	public void insertJoin(VCreationDTO dto) {
		// 
		sql.insert("createproject.insertJoin", dto);
	}

	public int insertProject(VCreationDTO dto) {
		/*System.out.println(dto.getReSeq());
		System.out.println(dto.getTeSeq());
		System.out.println(dto.getOpSeq());
		System.out.println(dto.getPrName());
		System.out.println(dto.getPrURL());
		
		System.out.println(dto.getSiteName());
		*/ 
		int result = sql.insert("createproject.insertProject", dto);
		
		return result;
	}

	public List<VCreationDTO> list(VCreationDTO dto, String mSeq) {
		
				
		return sql.selectList("createproject.getList", mSeq);
	}

	public int filewrt(ConceptDTO dto, VCreationDTO ldto) {
		
		System.out.println("여기부터 filewrt");
		
		System.out.println(ldto.getPrSeq());
		String fileName = ldto.getPrFileName().replace(".", "\\");
		
		
		String path = "C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\WEB-INF\\views";
		//path += "" + ldto.getmSeq();
		path +="\\" + fileName + ".jsp";
		
		System.out.println(path);
		
		String path2="C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\WEB-INF\\views";
		long time = System.currentTimeMillis();
		
		path2 +="\\" + fileName+time + ".jsp";
		
		fileCopy(path, path2);
		
		
		
		
		try {
			BufferedWriter wrtr = new BufferedWriter(new FileWriter(path));
			
			
			String encode = "<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>";
			encode += "<%@ taglib prefix=\"c\" uri=\"http://java.sun.com/jsp/jstl/core\" %>";
			
			wrtr.write(encode);
			wrtr.close();
			
			String txt = dto.getWhatda();
			/*System.out.println(txt);*/
			
			wrtr = new BufferedWriter(new FileWriter(path, true));
			wrtr.write(txt);
			wrtr.close();
			
					
			
			return 1;
		} catch (Exception e) {
			System.out.println("####CreationDAO.filewrt ####");
			e.printStackTrace();
		}
		
		
		return 0;
	}

	public int getPrSeq() {
		
		return sql.selectOne("createproject.getPrSeq");
	}

	
	
	//성공하면 경로를 반환
	public String[] copyTemplate(VCreationDTO dto, int prSeq) {

		//서버에 맞게 변경해야함
		String orgPath = "C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\resources\\files\\template1.html"; 
		String path = "C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\WEB-INF\\views\\works\\";

		path += "" +prSeq;
		path += "\\" + dto.getmSeq();
		
		
		System.out.println("================================================================================");
		System.out.println("path >>> " + path);
		System.out.println("================================================================================");
		
		
		try {
			
			System.out.println("step:1");
			File file = new File(path);
			System.out.println("step:2");
			//!표를 붙여주어 파일이 존재하지 않는 경우의 조건을 걸어줌
			if(!file.exists()){
				//디렉토리 생성 메서드
				file.mkdirs();
				System.out.println("Directory has been created");
				path +="\\" + dto.getPrName() + ".jsp";
				
				
			}else {
				path +="\\" + dto.getPrName() + ".jsp";
				
				
			}
					
			fileCopy(orgPath, path);
			
			//path 스플릿 작업
			path = splitFile1(path);
			
			
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("prSeq", ""+prSeq);
			map.put("path", path);
			sql.update("createproject.updateFilePath", map);
			
			String plist[] = splitFile2(path);
			
			
			return plist;
			
		} catch (Exception e) {
			System.out.println("####CreationDAO.copyTemplate ####");
			e.printStackTrace();
			
		}
		
		return null;
	}

	
    public static void fileCopy(String inFileName, String outFileName) {
    	
    	try {
    		
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(inFileName), StandardCharsets.UTF_8));
			Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFileName), StandardCharsets.UTF_8));
			
			String line = "";
			while((line = reader.readLine()) != null) {
				System.out.println(line);
				writer.write(line);
				writer.write("\r\n");
			}
			
			reader.close();
			writer.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
//		  try {
//		   FileInputStream fis = new FileInputStream(inFileName);
//		   FileOutputStream fos = new FileOutputStream(outFileName);
//		   
//		   int data = 0;
//		   while((data=fis.read())!=-1) {
//			   fos.write(data);
//		   }
//		   fis.close();
//		   fos.close();
//		   
//		  } catch (IOException e) {
//		   // TODO Auto-generated catch block
//		   e.printStackTrace();
//		  }
  	  
  	 }
	
    public static void fileMake(String makeFileName) {
    	  File f1 = new File(makeFileName);
    	  try {
    	   f1.createNewFile();
    	  } catch (IOException e) {
    	   // TODO Auto-generated catch block
    	   e.printStackTrace();
    	  }
 
    }

    
    public String splitFile1(String path) {
    	
   	 String plist[] = path.split("\\\\");
	 
   	 System.out.println(plist[plist.length-4]);
   	 System.out.println(plist[plist.length-3]);
   	 System.out.println(plist[plist.length-2]);
   	 System.out.println(plist[plist.length-1]);
   	 
   	 String fname="";
   		fname += plist[plist.length-4] +"\\";
   		fname += plist[plist.length-3] +"\\";
   		fname += plist[plist.length-2] +"\\";
   		fname += plist[plist.length-1];
   	   	
   		return fname;
    }
    
    public String[] splitFile2(String path) {
    	
      	 String plist[] = path.split("\\\\");
      	   	
      		return plist;
       }
       
    
	public String projectedit(int prSeq) {
		
		System.out.println("projectedit 에서 prSeq 는 >>>>");
		System.out.println(prSeq);
		
		return sql.selectOne("createproject.getPrFileName", prSeq);
	}

	public List<LoginDTO> getLogList(String mSeq) {
		// 
		return sql.selectList("log.loglist", mSeq);
	}

	
    
    
}
