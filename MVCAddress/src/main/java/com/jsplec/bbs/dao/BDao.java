package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto;

public class BDao {

	// F
	DataSource dataSource;
	
	// C
	// 생성시 데이터베이스에 바로 연결하기
	public BDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Test");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 전체 검색
	public ArrayList<BDto> list(String queryName, String queryContent){
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select seq, name, tel, address, email , connect from AddressBook ";
			 String query2 = "where " + queryName + " like '%" + queryContent + "%'";
			preparedStatement = connection.prepareStatement(query + query2);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int seq = resultSet.getInt("seq");
				String name = resultSet.getString("name");
				String tel = resultSet.getString("tel");
				String bContent = resultSet.getString("address");
				String email = resultSet.getString("email");
				String connect = resultSet.getString("connect");
				
				BDto dto = new BDto(seq, name, tel, bContent, email, connect);
						
				dtos.add(dto);
				}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
	} // list
	
	
	public void write(String name, String tel , String address, String email, String connect) {
		//write
		Connection connection = null;
		PreparedStatement preparedStatement = null;
	
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into AddressBook (name,tel,address,email,connect) values(?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, tel);
			preparedStatement.setString(3, address);
			preparedStatement.setString(4, email);
			preparedStatement.setString(5, connect);
			
			preparedStatement.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
		
	}//write
	
	public BDto contentView(String sseq) {
		BDto dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select * from AddressBook where seq = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(sseq));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				int seq = resultSet.getInt("seq");
				String name = resultSet.getString("name");
				String tel = resultSet.getString("tel");
				String address = resultSet.getString("address");
				String email = resultSet.getString("email");
				String connect = resultSet.getString("connect");
			
				
				dto = new BDto(seq, name, tel, address, email, connect);
				}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
		
		
	}// content_view
	
	public void contentUpdate(String seq,String name, String tel , String address, String email, String connect) {
		//write
				Connection connection = null;
				PreparedStatement preparedStatement = null;
			
				
				try {
					connection = dataSource.getConnection();
					
					String query = "update AddressBook set name = ?, tel = ? , address= ?, email = ?, connect = ? where seq = ?";
					preparedStatement = connection.prepareStatement(query);
					
					preparedStatement.setString(1, name);
					preparedStatement.setString(2, tel);
					preparedStatement.setString(3, address);
					preparedStatement.setString(4, email);
					preparedStatement.setString(5, connect);
					preparedStatement.setInt(6, Integer.parseInt(seq));
					
					preparedStatement.executeUpdate();
				
				}catch(Exception e) {
					e.printStackTrace();
				}finally {
					try {
						if(preparedStatement != null) preparedStatement.close();
						if(connection != null) connection.close();
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
			
				
			}//update
	
	public void contentDelete(String seq) {
		
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	
	
	try {
		connection = dataSource.getConnection();
		
		String query = "delete from AddressBook where seq = ?";
		preparedStatement = connection.prepareStatement(query);
		
		
		preparedStatement.setInt(1, Integer.parseInt(seq));
		
		preparedStatement.executeUpdate();
	
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(preparedStatement != null) preparedStatement.close();
			if(connection != null) connection.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}//update
	
	
	
	
	
	
	
	
	
	
	
}// End
