package model;


import java.util.ArrayList;
import java.util.Calendar;



public class test {

	public static void main(String[]args) {
		String Phone = "0344624777";
		ArrayList<Count> CountPhone =userDao.CheckPhone(Phone);
		  for(Count s: CountPhone){
				if(Integer.parseInt(s.getCount())==0){
					System.out.println("Oke");
				
		}else{
		System.out.println("FAIL");
		}}

}}
