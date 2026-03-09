<div align="center">

# 🏥 Mediverse

### A Modern Healthcare Management System

<img src="https://img.shields.io/badge/Java-Backend-orange?style=for-the-badge&logo=java">
<img src="https://img.shields.io/badge/JSP-Servlet-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/MySQL-Database-yellow?style=for-the-badge&logo=mysql">
<img src="https://img.shields.io/badge/Bootstrap-UI-purple?style=for-the-badge&logo=bootstrap">
<img src="https://img.shields.io/badge/Apache%20Tomcat-Server-red?style=for-the-badge&logo=apachetomcat">

<br>

✨ **Mediverse is a web-based healthcare management platform designed to streamline the interaction between patients, doctors, and administrators.**  
It helps manage appointments, doctor schedules, and patient records efficiently through a clean and responsive interface.

</div>

---

# 🌟 Overview

Mediverse simplifies hospital workflow by providing a centralized platform where:

👤 Patients can book and track appointments  
🩺 Doctors can manage consultations and schedules  
🏥 Administrators can manage doctors and monitor system operations  

The project was built as part of a **Java Full Stack development learning journey** using **Servlets, JSP, and MySQL**.

---

# 🚀 Features

## 👤 Patient Module
- Secure user registration and login
- Book appointments with available doctors
- View appointment history and status
- Track consultation updates

## 🩺 Doctor Module
- Doctor dashboard
- View patient appointments
- Manage consultation status
- Update appointment progress

## 🏥 Admin Module
- Manage doctors and staff
- Monitor appointments
- Control system records
- Maintain healthcare data

---

# 🛠 Tech Stack

| Layer | Technologies |
|------|--------------|
| Frontend | HTML5, CSS3, Bootstrap, JSP |
| Backend | Java, Servlets, JDBC |
| Database | MySQL |
| Server | Apache Tomcat |
| Tools | Eclipse IDE, Git, GitHub |

---

# 📂 Project Structure

```
Mediverse
│
├── src/
│ ├── com.hms.dao
│ ├── com.hms.entity
│ ├── com.hms.servlet
│ └── com.hms.db
│
├── WebContent/
│ ├── admin/
│ ├── doctor/
│ ├── user/
│ ├── component/
│ └── css/
│
├── img/
├── index.jsp
└── README.md
```

## ⚙️ Installation & Setup

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/Rashmiranjan07/Mediverse.git
```

### 2️⃣ Import Project

Open the project in one of the following IDEs:

- **Eclipse IDE**
- **IntelliJ IDEA**

Import the project as:

```text
Dynamic Web Project
```
### 3️⃣ Configure Database

Create a MySQL database:
```text
CREATE DATABASE mediverse_db;
```
Update the database connection inside:
```text
DBConnection.java
```
Example configuration:
```text
DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/mediverse_db",
    "root",
    "password"
);
```
### 4️⃣ Run on Apache Tomcat

- **Install Apache Tomcat**
- **Add the project to the Tomcat server**
- **Start the server**
  
Open the application in your browser:
```text
http://localhost:8080/Mediverse
```
---

# 📸 Screenshots

## 🏠 Homepage

<img width="1899" height="936" alt="m1" src="https://github.com/user-attachments/assets/15e6d9e9-b017-427c-8b9f-55734be7f600" />
<img width="1894" height="949" alt="m2" src="https://github.com/user-attachments/assets/dbf7f846-8ec0-4a42-9dad-f0c27febb410" />

## Doctor 

<img width="1904" height="946" alt="m3" src="https://github.com/user-attachments/assets/481b0bfa-bc03-4ffe-815e-d87c898a20a1" />
<img width="1905" height="938" alt="m4" src="https://github.com/user-attachments/assets/42010cbb-e6f9-4f91-872a-6a70ca0a1ed4" />
<img width="1910" height="935" alt="m5" src="https://github.com/user-attachments/assets/92167da2-aceb-4d72-8950-f7c3ff72df68" />









---
# 🤝 Contributing

Contributions, issues, and feature requests are welcome!

### Steps to contribute

1️⃣ **Fork the repository**

2️⃣ **Clone your fork**

```bash
git clone https://github.com/your-username/Mediverse.git
```
3️⃣ **Create a new branch**
```bash
git checkout -b feature-new
```
4️⃣ **Make your changes and commit**
```bash
git commit -m "Added new feature"
```
5️⃣ **Push to your branch**
```bash
git push origin feature-new
```
6️⃣ **Open a Pull Request**


# 📜 License

This project is created for educational and learning purposes.
You are free to use, modify, and improve the project.

# 👨‍💻 Author

Rashmiranjan Shaw

💼 Java Full Stack Developer
📚 Passionate about Backend Development, System Design & Web Applications




















