# Flask Notes App 📝

A personal notes web application built with **Flask** and **SQLite**, designed for learning, productivity, and project demonstration.  
Users can **sign up, log in, create, view, and manage their notes** in a simple, responsive interface.

---


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
- SQLite database to store users and notes 💾  
- Responsive UI built with HTML, CSS, and Bootstrap  

---

## Functionality
### **1. User Authentication**
- **Sign Up:** Users provide email, name, and password.  
  - Passwords are hashed using secure algorithms before saving to the database.  
  - Validation ensures emails are unique.
- **Login:** Users can log in with their registered credentials.  
  - Session management ensures users stay logged in across pages.
- **Logout:** Clears user session and redirects to login page.

### **2. Notes Management**
- **Create Note:** Logged-in users can create new notes with a title and content.  
- **View Notes:** Users can see all their notes in a list or dashboard.  
- **Edit/Delete Note:** Users can update or delete their own notes.  
  - Only the owner of the note can perform these actions for security.

### **3. Routing & Pages**
- `/` → Redirects to `/login` if not authenticated.  
- `/login` → User login page.  
- `/signup` → New user registration page.  
- `/dashboard` → User’s notes dashboard after login.  
- `/add-note` → Page to add a new note.  
- `/edit-note/<id>` → Edit a specific note.  
- `/delete-note/<id>` → Delete a specific note.  

### **4. Database**
- Uses **SQLite** (`database.db`) for storing users and notes.  
- Tables:
  - `User` → id, email, first_name, password  
  - `Note` → id, title, content, owner_id  

---

## Tech Stack
- **Python 3.x** 🐍  
- **Flask** 🌐  
- **SQLite** 🗄️  
- **HTML / CSS / Bootstrap** 🎨  
- **Werkzeug Security** 🔒 (for password hashing)

---

## key-points
- Passwords are never stored in plaintext — hashed using secure methods.
- Each user can only access their own notes.
- Sessions are managed using Flask’s built-in session mechanism.
- Application is fully modular, making it easy to extend features.
- Designed for learning Flask and web app development.

---

## future-improvements
- Add search and filter notes by keyword. 🔍
- Add note categories or tags. 🏷️
- Implement REST API for external app integration. 🌐
- Add user profile management (update name, email, password).
- Deploy on a cloud platform (Heroku / Render / Vercel). ☁️

## Setup & Configuration
### **1. Clone Repository**
```bash
git clone https://github.com/Prabhas9vegi/flask-notes-app.git
cd flask-notes-app
