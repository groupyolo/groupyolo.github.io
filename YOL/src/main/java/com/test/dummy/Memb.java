package com.test.dummy;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

public class Memb {
	
	static Calendar calendar=Calendar.getInstance();
	static int cYear = calendar.get(Calendar.YEAR);
	static int cMonth = calendar.get(Calendar.MONTH);
	static int cDay = calendar.get(Calendar.DATE)-1;
	static int cHour = calendar.get(Calendar.HOUR_OF_DAY);
	static int cMinute = calendar.get(Calendar.MINUTE);
	
	static List<String> tName= new ArrayList<String>();
	static Set<String> tNick= new HashSet<String>();
	static Set<String> tEmail= new HashSet<String>();
	static List<String> tDate= new ArrayList<String>();
	
	
	public static void main(String[] args) {
	
		
		member();
		//state();
	}

	private static void member() {
		Random rnd = new Random();
			

	
		String[] family = {"김","이","박","남궁","성","최","장","공", "우","정","조","제갈","주","한","방","천"};
		
		String[] name={"기하","건희","정희","선영","남혁","시현","희준","해나","남준","기태","찬희","병우","우혁","미희","희진","혜진","태현","윤아","혜나","호연","호진","후","얼","진","민","혁"};
		
		String[] nick1={"귀여운","아름다운","좋아하는","천하무적","상큼한","못난이","구리구리","고장난","웃는","초딩","죽일놈의","너와나의","울트라","슈퍼","더럽"};
		String[] nick2={"병아리","송사리","돌돔","오징어","삐약이","해나","정아","선영","희준","화영","김지현","오크","골렘"};
		String[] email={"abc","def","sexy","hothot","soso","baby","gogo","start","bibid","orange","apple","weare","web"};
		String[] email2={"naver.com","daum.com","yahoo.com","gmail.com","paran.com"};
		String[] year={"2016","2017"};
		String[] month={"2","3","4","5","8","9","10","11"};
		String[] day={"2","4","6","8","10","12","15","20","21","25"};

		
		int i=10;
		Boolean loop=true;
		while(loop){
			
			if(tNick.size()<tEmail.size()){
				tNick.add(nick1[rnd.nextInt(nick1.length)]+nick2[rnd.nextInt(nick2.length)]+i);
				
			}else if(tNick.size()>tEmail.size()){
				tEmail.add(email[rnd.nextInt(email.length)]+"19"+i+"@"+email2[rnd.nextInt(email2.length)]);
				
			}else if(tNick.size()==tEmail.size()){
				tEmail.add(email[rnd.nextInt(email.length)]+"@"+email2[rnd.nextInt(email2.length)]);
				tNick.add(nick1[rnd.nextInt(nick1.length)]+nick2[rnd.nextInt(nick2.length)]);
				
				i++;
			}
			
			if(tName.size()<100){
				tName.add(family[rnd.nextInt(family.length)]+name[rnd.nextInt(name.length)]);
			}
			
			String tYear = year[rnd.nextInt(year.length)];
			String tMonth = month[rnd.nextInt(month.length)];
			String tDay = day[rnd.nextInt(day.length)];
			
			if(tDate.size()<100){
				
				if(Integer.parseInt(tYear)<cYear) {
					tDate.add(tYear+"-"+tMonth+"-"+tDay);
				}else if(Integer.parseInt(tYear)==cYear && Integer.parseInt(tMonth)<cMonth) {
					tDate.add(tYear+"-"+tMonth+"-"+tDay);
					
				}else if(Integer.parseInt(tYear)==cYear && Integer.parseInt(tMonth)==cMonth && Integer.parseInt(tDay)<cDay) {
					tDate.add(tYear+"-"+tMonth+"-"+tDay);
					
					
				}
				
			}
			
			if(tNick.size()==tEmail.size()&& tNick.size()==100 && tDate.size()==100){
				loop=false;
			}
			
			
		}
		
		
		System.out.println("3");
		
		
		
		System.out.println("aa"+tNick.size()+":"+tEmail.size()+":"+tDate.size()+":"+tName.size());

		String[] tN = new String[tNick.size()];
		String[] tE = new String[tEmail.size()];
		tNick.toArray(tN);
		tEmail.toArray(tE);
		
		for(int j=0;j<100;j++){
			
			System.out.printf("insert into Member(mSeq,mName,mNickName,mDate,mEmail,mPassword,mgSeq) values(mSeq.nextval,'%s','%s','%s','%s','0000','%d');\r\n",tName.get(j),tN[j],tDate.get(j),tE[j],rnd.nextInt(2)+1);

		}
		
	}
	
		public static void logIn(){
			//로그인 1 로그아웃2

			//이건 프로시저로
			/*
			
			Random rnd = new Random();
			Set<Integer> dd = new HashSet<Integer>();
			
			for(int i=0;i<100;i++) {
				
				for(int j=0;j<100;j++) {
					int term=rnd.nextInt(200)+1;
					
					tDate.get(i);
					
					if(Integer.parseInt(tDate.get(i).substring(0,4))==2016) {
						
					}else if(Integer.parseInt(tDate.get(i).substring(0,4))==2017 ) {
						 Integer.parseInt(tDate.get(i).substring(5,7))
						
					}else if(Integer.parseInt(tDate.get(i).substring(0,4))==cYear && Integer.parseInt(tDate.get(i).substring(5,7))==cMonth && Integer.parseInt(tDate.get(i).substring(8,10))<cDay) {
						
						
					}
					
					Integer.parseInt(tDate.get(i).substring(0,4))+aa Integer.parseInt(tDate.get(i).substring(5,7))+    && Integer.parseInt(tDate.get(i).substring(8,10))+cc
					
					
					*/
				}
					
		/*		
			}
			
			
			
			
			
			
			String dd = ("select mDate from member where mseq=%d");
			
			for(int i=0;i<100;i++) {
				
				
				System.out.printf("");
			}
			
			
			
		}*/
		
	/*	public static void state(){
			
			//대기 1 활성 2 휴면 3 탈퇴 4			
			
			for(int i=1;i<=100;i++) {
				
				System.out.printf("insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,%d,default,(select mDate from member where mSeq=%d),null);\r\n",i,i);
			}
			for(int i=1;i<=100;i++) {
				W
				System.out.printf("insert into statemember(smSeq,mSeq, msSeq, smDate, smDetail) values(smSeq.nextval,%d,2,(select mDate from member where mSeq=%d)+1,null);\r\n",i,i);
			}
			
			
		}*/
		
	
}
