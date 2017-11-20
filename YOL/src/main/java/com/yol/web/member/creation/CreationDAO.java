package com.yol.web.member.creation;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yol.web.DTO.ConceptDTO;
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
		
		
		String path = "C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\resources\\files\\";
		path += "" + ldto.getmSeq();
		path +="\\" + ldto.getPrName() + ".html";
		
		try {
			BufferedWriter wrtr = new BufferedWriter(new FileWriter(path));
			
			
			String txt = dto.getWhatda();
			System.out.println(txt);
						
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
	public String copyTemplate(VCreationDTO dto, int prSeq) {

		//서버에 맞게 변경해야함
		String orgPath = "C:\\Users\\cryin\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\resources\\files\\template1.html"; 
		String path = "C:\\Users\\cryin\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\WEB-INF\\views\\works\\";

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
				path +="\\" + dto.getPrName() + ".html";
				
				
			}else {
				path +="\\" + dto.getPrName() + ".html";
				
				
			}
					
			fileCopy(orgPath, path);
			
			return path;
			
		} catch (Exception e) {
			System.out.println("####CreationDAO.copyTemplate ####");
			e.printStackTrace();
			
		}
		
		return null;
	}

	
    public static void fileCopy(String inFileName, String outFileName) {
		  try {
		   FileInputStream fis = new FileInputStream(inFileName);
		   FileOutputStream fos = new FileOutputStream(outFileName);
		   
		   int data = 0;
		   while((data=fis.read())!=-1) {
		    fos.write(data);
		   }
		   fis.close();
		   fos.close();
		   
		  } catch (IOException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
		  }
  	  
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

 
    
    
}
