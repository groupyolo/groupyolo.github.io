package com.yol.web.main.log;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yol.web.DTO.MemberDTO;

@Service
public class LogService implements ILogService{
	
	@Autowired
	private LogDAO dao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public MemberDTO logIn(MemberDTO dto) {
		
		return dao.logIn(dto);
	}
	
	@Transactional
	@Override
	public void sign(MemberDTO dto) {
		int result1 = dao.sign(dto);
		int result2 = dao.addStateMember(dto);
		
		if(result1==1&&result2==1) {
			
			System.out.println("메일 보내기");
	    	
			String mEmail = dto.getmEmail();
	    	String mSeq = dto.getmSeq();
			
	        try {
	        	MailHandler sendMail = new MailHandler(mailSender);
	        	sendMail.setSubject("[이메일 인증]");
				sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
				        //.append("<a href='http://211.63.89.36:8080/web/emailConfirm?key=")
						.append("<a href='http://localhost:8081/web/main/authok.action?mEmail=")
						.append(mEmail)
						.append("&mSignal=54d5c5ddkjckjckadk")
				        .append("' target='_blank'>이메일 인증 확인</a>")
				        .toString());
				sendMail.setFrom("finalprojectjung@gmail.com", "기무하");
				sendMail.setTo(mEmail);
				sendMail.send();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
	}
	
	@Override
	public int authok(MemberDTO dto) {
		
		return dao.authok(dto);
	}
	
	@Override
	public int apiLoginCheck(MemberDTO dto) {
		return dao.apiLoginCheck(dto);
	}
	
	@Override
	public MemberDTO apiLoginok(MemberDTO dto) {
		return dao.apiLoginok(dto);
	}
	
	@Transactional
	@Override
	public int apiSign(MemberDTO dto) {
		
		int result = dao.apiSign(dto);
		dao.addapiStateMember(dto);
		dao.apiAuthok(dto);
		return result;
	}
	
	@Override
	public int mEmailCheck(String mEmail) {
		return dao.mEmailCheck(mEmail);
	}
	
	@Override
	public int mNickNameCheck(String mNickName) {
		return dao.mNickNameCheck(mNickName);
	}

	@Override
	public int findPassword(String mEmail) {
		
		int result = dao.findPassword(mEmail);
		
		if(result==1) {
			System.out.println("비번 찾기");
			
	        try {
	        	MailHandler sendMail = new MailHandler(mailSender);
	        	sendMail.setSubject("[비밀번호 변경]");
				sendMail.setText(new StringBuffer().append("<h1>비밀번호 변경</h1>")
				        //.append("<a href='http://211.63.89.36:8080/web/emailConfirm?key=")
						.append("<a href='http://localhost:8081/web/main/findpasswordchange.action?mEmail=")
						.append(mEmail)
				        .append("' target='_blank'>비밀번호 재설정</a>")
				        .toString());
				sendMail.setFrom("finalprojectjung@gmail.com", "기무하");
				sendMail.setTo(mEmail);
				sendMail.send();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public int findPasswordChange(MemberDTO dto) {
		return dao.findPasswordChange(dto);
	}
	
	@Override
	public MemberDTO editProfile(MemberDTO ldto) {
		MemberDTO dto=null;
		if (dao.editProfile(ldto)==1) {
			dto = dao.getNewSession(ldto);
		}
		return dto;
	}
	
//	파일업로드
	
	
	   
//  프로젝트 내 지정된 경로에 파일을 저장하는 메소드
//  DB에는 업로드된 전체 경로명으로만 지정되기 때문에(업로드한 파일 자체는 경로에 저장됨)
//  fileUpload() 메소드에서 전체 경로를 리턴받아 DB에 경로 그대로 저장   
   /* public String fileUpload(MultipartHttpServletRequest request,
                                        MultipartFile uploadFile, Object obj) {
        String path = "";
        String fileName = "";
        
        OutputStream out = null;
        PrintWriter printWriter = null;
        
        try {
            fileName = uploadFile.getOriginalFilename();
            byte[] bytes = uploadFile.getBytes();
            path = getSaveLocation(request, obj);
            
            System.out.println("UtilFile fileUpload fileName : " + fileName);
            System.out.println("UtilFile fileUpload uploadPath : " + path);
            
            File file = new File(path);
            
//          파일명이 중복으로 존재할 경우
            if (fileName != null && !fileName.equals("")) {
                if (file.exists()) {
//                    파일명 앞에 업로드 시간 초단위로 붙여 파일명 중복을 방지
                    fileName = System.currentTimeMillis() + "_" + fileName;
                    
                    file = new File(path + fileName);
                }
            }
            
            System.out.println("UtilFile fileUpload final fileName : " + fileName);
            System.out.println("UtilFile fileUpload file : " + file);
            
            out = new FileOutputStream(file);
            
            System.out.println("UtilFile fileUpload out : " + out);
            
            out.write(bytes);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (printWriter != null) {
                    printWriter.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        
        return path + fileName;
    }*/
    
//  업로드 파일 저장 경로 얻는 메소드
//  업로드한 파일의 경로가 도메인 별로 달라야 했기 때문에 도메인의 형을 비교하여 파일 저장 정로를 다르게 지정함
    /*private String getSaveLocation(MultipartHttpServletRequest request, Object obj) {
        
        String uploadPath = request.getSession().getServletContext().getRealPath("/");
        String attachPath = "resources/files/";
        
//      Reward인 경우
        if (obj instanceof Reward) {
            attachPath += "reward/";
//      Approval인 경우
        } else if(obj instanceof Draft) {
            attachPath += "approval/";
//      Document인 경우            
        } else {
            attachPath += "document/";
        }
        
        System.out.println("UtilFile getSaveLocation path : " + uploadPath + attachPath);
        
        return uploadPath + attachPath;
    }

*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
