package com.hmsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.hmsm.entity.Doctor;

public class DoctorDAO {
	private Connection conn;

	public DoctorDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerDoctor(Doctor doctor) {

		boolean f = false;

		try {

			String sql = "insert into doctor(fullName,dateOfBirth,qualification,specialist,email,phone,password) values(?,?,?,?,?,?,?)";

			PreparedStatement pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, doctor.getFullName());
			pstmt.setString(2, doctor.getDateOfBirth());
			pstmt.setString(3, doctor.getQualification());
			pstmt.setString(4, doctor.getSpecialist());
			pstmt.setString(5, doctor.getEmail());
			pstmt.setString(6, doctor.getPhone());
			pstmt.setString(7, doctor.getPassword());

			pstmt.executeUpdate();
			// if query inserted or all ok than
			f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
