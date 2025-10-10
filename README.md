# Flask Notes App 📝

A personal notes web application built with **Flask** and **PostgreSQL (Render Database)**, designed for learning, productivity, and project demonstration.  
Users can **sign up, log in, create, view, and manage their notes** in a simple, responsive interface.

---

## 🌐 Deployed Application
🚀 **Live URL:** [https://flask-notes-app-19q9.onrender.com/](https://flask-notes-app-19q9.onrender.com/)

---

## Project Structure
Flask-Web-App-Tutorial/
│   main.py          # Entry point of the app  
│   README.md        # Project documentation  
│   requirements.txt # Python dependencies  
│  
└───website/  
    │   __init__.py  # Flask app initialization  
    │   auth.py      # User authentication routes  
    │   models.py    # Database models (User, Note)  
    │   views.py     # Notes CRUD operations  
    └───templates/   # HTML templates (Jinja2)  
    └───static/      # CSS, images, JS  

---

## Table of Contents
1. [Features](#features)
2. [Functionality](#functionality)
3. [Tech Stack](#tech-stack)
4. [Setup & Configuration](#setup--configuration)
5. [Project Structure](#project-structure)
6. [Key Points](#key-points)
7. [Future Improvements](#future-improvements)

---

## Features
- User Authentication (Sign Up / Login / Logout) 🔒  
- Add, view, and manage personal notes ✍️  
- Secure password hashing using Werkzeug  
- **PostgreSQL database hosted on Render** 💾  
- Responsive UI built with HTML, CSS, and Bootstrap  

---

## Functionality
### **1. User Authentication**
- **Sign Up:** Users provide email, name, and password.  
  - Passwords are hashed securely before saving to the database.  
  - Validation ensures unique emails.  
- **Login:** Users can log in with registered credentials.  
  - Sessions maintain login state across pages.  
- **Logout:** Clears session and redirects to login page.

### **2. Notes Management**
- **Create Note:** Logged-in users can create notes with title and content.  
- **View Notes:** All notes displayed in a personal dashboard.  
- **Edit/Delete Note:** Users can modify or remove their own notes only.  

### **3. Routing & Pages**
- `/` → Redirects to `/login` if unauthenticated  
- `/login` → Login page  
- `/signup` → New user registration  
- `/dashboard` → User’s notes dashboard  
- `/add-note` → Add a new note  
- `/edit-note/<id>` → Edit an existing note  
- `/delete-note/<id>` → Delete a note  

### **4. Database**
- **Changed from SQLite → PostgreSQL (Render Cloud Database)**  
- Tables:
  - `User` → id, email, first_name, password  
  - `Note` → id, title, content, owner_id  

---

## Tech Stack
- **Python 3.x** 🐍  
- **Flask** 🌐  
- **PostgreSQL (Render)** 🗄️  
- **HTML / CSS / Bootstrap** 🎨  
- **Werkzeug Security** 🔒  

---

## Key Points
- Passwords are securely hashed before saving.  
- Users can only access their own notes.  
- Modular Flask app for easy scalability.  
- Deployed on **Render (Cloud Hosting)** with **PostgreSQL database integration**.  

---

## Future Improvements
- Add search and filter features 🔍  
- Note categories/tags 🏷️  
- REST API for external use 🌐  
- User profile updates  
- Dark mode toggle 🌙  

---

## Setup & Configuration
### **1. Clone Repository**
```bash
git clone https://github.com/Prabhas9vegi/flask-notes-app.git
cd flask-notes-app
