# 🚀 Campus Connect — Digital Portfolio

**Campus Connect** is a modern, responsive Flutter Web portfolio application designed to showcase academic qualifications, technical proficiencies, personal background, and contact details in an intuitive, multi-screen interface.

---

## 📱 Project Overview

Campus Connect consolidates essential student profile details into a single structured web app. Instead of relying on static resumes or disjointed documents, it presents personal achievements, core coursework, and development skills across dedicated, interactive views.

---

## 🎯 Main Objectives

* Build a responsive Flutter Web application with cross-platform layout support
* Implement multi-screen navigation using named routes (`/`, `/about`, `/qualifications`, `/skills`, `/contact`)
* Design modular, reusable card components for skills, contact channels, and education timelines
* Incorporate profile imagery using circular avatar framing
* Maintain structured version control using Git and GitHub

---

## ✨ Features

### 🏠 Home Screen
* Centered profile header with avatar framing
* Dedicated navigation menu with direct routes to all application sections:
  * About Me
  * Qualifications
  * Skills
  * Contact

### 👤 About Screen
* Expanded profile overview featuring student year and career aspirations
* Educational focus centered on Artificial Intelligence, Data Science, and mobile app development
* Direct "Back to Home" navigation action

### 🎓 Qualifications Screen
* Structured timeline cards detailing academic milestones:
  * **Bachelor of Technology**: Artificial Intelligence & Data Science, MLEW (2024 – 2028) — ★ CGPA: 7.99
  * **Intermediate**: MPC, NRI Junior College (2022 – 2024) — ★ Percentage: 81.9%
  * **SSC**: Secondary Education (Completed)

### 💡 Skills Screen
* Organized competency cards categorized by technical domain:
  * **Flutter**: Mobile App Development
  * **Dart**: Programming Language
  * **Database**: MySQL / Firebase
  * **Web Development**: HTML, CSS, JavaScript
  * **Communication**: Teamwork and Presentation

### 📞 Contact Screen
* Interactive contact directory with return navigation:
  * **Email**: [urjithatalluru@gmail.com](mailto:urjithatalluru@gmail.com)
  * **Phone Number**: +91 9876543210
  * **LinkedIn**: [linkedin.com/in/urjitha-talluru](https://www.linkedin.com/in/urjitha-talluru/)
  * **GitHub**: [github.com/urjithatalluru-2006](https://github.com/urjithatalluru-2006)

---

## 🛠️ Technologies Used

| Technology | Purpose |
| :--- | :--- |
| **Flutter** | Cross-platform UI development framework |
| **Dart** | Application logic and object-oriented programming |
| **Material Design** | Layout scaffolding, typography, and iconography |
| **Flutter Assets** | Profile image rendering via `AssetImage` / `NetworkImage` |
| **Git & GitHub** | Source code management and repository hosting |

---

## 📂 Project Structure

```text
campus_connect/
│
├── assets/
│   └── profile.jpeg          # Local image asset
│
├── lib/
│   └── main.dart             # Application entry point, theme & named routes
│
├── web/                      # Web support and index shell
├── pubspec.yaml              # App configuration, assets & dependencies
└── README.md                 # Project documentation
