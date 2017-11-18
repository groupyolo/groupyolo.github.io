package com.yol.web.member.creation;

import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
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

	public int copyTemplate(VCreationDTO dto, int prSeq) {
		
		FileInputStream fis = null;
		FileOutputStream fos = null; 

		String path = "C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\resources\\files\\";
		path += "" + dto.getmSeq();
		path +="\\" + dto.getPrName() + ".html";
		
		try {

			fis = new FileInputStream("C:\\Users\\SIST06\\Documents\\GitHub\\groupyolo.github.io\\YOL\\src\\main\\webapp\\resources\\files\\template1.html");                             // 원본파일
			fos = new FileOutputStream(path);   // 복사위치
			   
			byte[] buffer = new byte[1024];
			int readcount = 0;
			  
			while((readcount=fis.read(buffer)) != -1) {
			fos.write(buffer, 0, readcount);    // 파일 복사 

			}
			
			fis.close();
			fos.close();
		
			
			return 1;
			
		} catch (Exception e) {
			System.out.println("####CreationDAO.copyTemplate ####");
			e.printStackTrace();
			
		}
		
		try {
			fis.close();
			fos.close();
		
		} catch (Exception e) {
			System.out.println("####CreationDAO.copyTemplate ####");
			e.printStackTrace();
		}
		
		return 0;
	}

	
	
	
}
