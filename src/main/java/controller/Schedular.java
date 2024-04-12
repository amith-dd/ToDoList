package controller;

import java.sql.SQLException;

import dao.Dao;

public class Schedular implements Runnable{

	@Override
	public void run() {
		
		while(!Thread.currentThread().isInterrupted()) {
			Dao dao = new Dao();
			
			try {
				dao.updatePriorityBasedOnDuration();
				System.out.println("=============from schedular class==============");
				Thread.sleep(1000*30);
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InterruptedException e) {
				Thread.currentThread().interrupt();
			}
			
			
				  
		}	
			
		
		
	}

}
