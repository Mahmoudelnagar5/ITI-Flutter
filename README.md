# 🚀 ITI Flutter App

A modern multi-screen Flutter application that features smooth animations, user authentication, OTP verification, player listing, and profile display. Designed with clean architecture and reusable components.

---

## ✨ Features

- 🎨 Elegant, animated, and responsive UI
- 🔐 Full authentication flow (Sign In / Sign Up)
- 🔢 OTP verification screen (6-digit input)
- ⚽ Players list with image, name, and position
- 👤 Profile screen with user image and personal info
- 🧱 Reusable custom widgets (e.g., `CustomTextField`)
- 💫 Animations with [animate_do](https://pub.dev/packages/animate_do)
- 📱 Adaptive layout for different screen sizes

---

## 📱 Screens Overview

### 🔑 Login Screen
- Input fields for phone number and password
- Form validation and styled button
- Animated login form using `FadeInLeft`
- Navigation to Sign Up or Home

### 🆕 Sign Up Screen
- Styled similar to login
- Allows creating new accounts

### 📩 OTP Screen
- 6-digit verification input
- Clean and simple UI with confirmation button

### 🏠 Home View
- List of football players using `ListView.builder`
- Each player shows:
  - Image (from URL)
  - Name
  - Position
- Animated list items (`FadeInLeft`)

### 👤 Profile View
- Contains:
  - User image (from assets)
  - Name
  - Job title
  - Email
  - Phone number
- Card-based layout for neat presentation

---

## 🖼️ Screenshots

| 🔐 Login Screen | 🔑 Sign Up Screen | 📩 OTP Screen | ⚽ Players List | 👤 Profile View |
| <img width="434" height="814" alt="Image" src="https://github.com/user-attachments/assets/135ab619-3f54-49f1-a11d-97d8df78f520" /> | <img width="425" height="827" alt="Image" src="https://github.com/user-attachments/assets/685b99f1-8a23-41f3-9261-955b5591caf8" /> |
 <img width="426" height="825" alt="Image" src="https://github.com/user-attachments/assets/213e8fdf-fb64-49f5-9d64-9581ed3e7169" /> |
 <img width="445" height="825" alt="Image" src="https://github.com/user-attachments/assets/60c5c319-ab13-476e-b5fe-46621d666c5a" /> |  <img width="447" height="818" alt="Image" src="https://github.com/user-attachments/assets/699b1bde-e2a3-4bfe-a317-08ae4ac95312" /> |  

---

## 🛠️ Getting Started

### 📋 Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio, VS Code, or any preferred IDE

### ⚡ Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/iti-flutter-app.git
   cd iti-flutter-app
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the app:**
   ```sh
   flutter run
   ```

## 📂 Project Structure

```
lib/
  main.dart                   # App entry point
  screens/
    login_screen.dart         # Login UI
    sign_up_screen.dart       # Sign Up UI
    otp_screen.dart           # OTP verification
    home_view.dart            # Player list
    profile_view.dart         # User profile
    main_sceewn.dart          # Bottom Navigation main screen
  widgets/
    custom_text_field.dart    # Reusable text field widget
assets/
  elnagar.png                 # User image
```

## 🚦 Usage

- Launch the app and use the Sign In or Sign Up screens to authenticate.
- The UI is animated and responsive.
- Custom widgets are used for consistent design.

## 🤝 Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## 📄 License

This project is licensed under the [BSD License](LICENSE).

## 📧 Contact

For questions or support, contact [your.email@example.com](mailto:your.email@example.com).

---

> A new Flutter project.

## 🏁 Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

