# 🏢 Leave Management System – Web Application

**Leave Management System** is a web-based application designed to simplify and automate the process of managing employee leave requests within an organization. The system allows employees to apply for leave online and enables administrators to review, approve, or reject requests efficiently. Built using **PHP + MySQL**, it ensures structured data handling and smooth workflow management.

---

## 📌 Project Objective

To build an **efficient and user-friendly leave management system** where organizations can:

- Digitally manage employee leave requests
- Reduce manual paperwork and errors
- Track leave history and status
- Provide a transparent approval workflow
- Improve overall administrative efficiency

---

## 🧑‍💻 Developer Role

As the developer, I was responsible for:

- Designing the **frontend UI** using HTML and CSS
- Developing the **backend logic** using Core PHP
- Implementing leave request and approval workflows
- Creating and managing the **MySQL database**
- Ensuring secure data handling and role-based access

---

## 🛠 Technologies Used

| Layer     | Tools / Languages |
|----------|------------------|
| Frontend | HTML, CSS, JavaScript |
| Backend  | PHP (Core PHP) |
| Database | MySQL |
| Tools    | XAMPP, phpMyAdmin, GitHub |

---

## 🧩 Key Features

- 👤 Employee Registration & Login
- 📝 Apply for Leave Online
- 📅 View Leave Status & History
- ✅ Admin Approval / Rejection System
- 🔐 Secure Authentication
- 🗄️ Centralized MySQL Database
- 🌐 Web-Based Application

---

## 🗂️ Project Structure

```
LeaveManagement/
├── Database/
│ └── leavemanagement.sql # MySQL database dump
│
├── PHP/
│ └── leavemanagement/
│ ├── connection.php # Database connection
│ ├── login.php # User authentication
│ ├── register.php # Employee registration
│ ├── apply_leave.php # Apply leave request
│ ├── approve_leave.php # Admin leave approval
│ ├── reject_leave.php # Admin leave rejection
│ └── leave_history.php # View leave records
│
├── public/
│ └── index.php # Main entry point
│
├── assets/
│ ├── css/ # Stylesheets
│ ├── js/ # JavaScript files
│ └── images/ # Image assets
│
└── README.md
```

---

## ⚙️ Installation & Setup

### 1️⃣ Backend Setup (PHP & MySQL)

1. **Start XAMPP** and run Apache & MySQL.
2. **Copy the project folder**:
3. **Import the database**:
- Open [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
- Create a database named `leavemanagement`
- Click **Import** and upload:
  ```
  Database/leavemanagement.sql
  ```

---

### 2️⃣ Run the Application

1. Open your browser and visit:
2. Login as **Employee** or **Admin** to manage leave requests.

---

## 🧠 Core Concepts Used

| Concept | Usage Description |
|------|------------------|
| Core PHP | Backend logic & form handling |
| MySQL | Data storage and retrieval |
| CRUD Operations | Leave request management |
| Role-Based Access | Admin & Employee roles |
| Session Management | Secure authentication |

---

## 💡 Usage Flow

1. Employee registers and logs in
2. Applies for leave by submitting details
3. Admin reviews leave requests
4. Leave is **approved or rejected**
5. Employee checks leave status and history

---

## 📄 License

This project is developed for **educational and learning purposes only**.  
You may modify and reuse the code with proper credit.

---

## 🙋‍♂️ Author

**Ansh Meghani**  
📧 Email: meghaniansh942005@gmail.com  

---

## 📫 Contact

For any queries, suggestions, or collaboration opportunities, feel free to reach out via email.

---
