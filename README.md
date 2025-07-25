# 🚀 ITI Flutter App

A modern Flutter e-commerce UI showcasing products, with authentication, OTP verification, and modular architecture using reusable widgets.

---

## ✨ Features

- 🎨 Clean and modern UI with layered layout
- 🔐 Full authentication flow (Sign In / Sign Up)
- 🔢 OTP verification screen
- 🛍️ Home screen with product list and categories
- 👤 Profile screen with user info
- 🧱 Modular widget structure (e.g., `ProductCard`, `CategoryListView`)
- 📱 Responsive and adaptive design

---

## 📱 Screens Overview

### 🔐 Login Screen
- Phone number + password input
- Validation + animations
- Navigation to Sign Up or Home

### 🆕 Sign Up Screen
- Styled similar to login
- Create new account

### 📩 OTP Screen
- 6-digit verification input field
- Confirm button

### 🏠 Home View (Updated)
- Layered design with:
  - Welcome header
  - Search bar
  - Category horizontal list
  - Product vertical list using `ProductCard`
- Products include:
  - Image
  - Title
  - Price
  - Description
  - Add to Cart button
  - Favorite toggle button

### 👤 Profile View
- Shows user image, name, job, contact
- Card layout with details

---

## 📂 Project Structure
```
lib/
├── core/
│   ├── themes/
│   │   └── light_theme.dart
│   └── utils/
│       └── app_color.dart
│
├── screens/
│   ├── home_view.dart          # Updated home screen with product list
│   ├── main_view.dart
│   ├── otp_screen.dart
│   ├── profile_view.dart
│   ├── search_view.dart
│   ├── sign_in_screen.dart
│   └── sign_up_screen.dart
│
├── widgets/
│   ├── category_item.dart
│   ├── category_list_view.dart
│   ├── custom_app_bar.dart
│   ├── custom_text_field.dart
│   ├── product_card.dart       # Product display widget
│   ├── product_list_view.dart  # List of products
│   └── search_dield.dart       # Search bar widget
│
└── main.dart                   # App entry point


```
## 🖼️ Screenshots

| 🔐 Login Screen | 🔑 Sign Up Screen |
|:-----------------:|:----------------:|
| <img width="434" height="814" alt="Image" src="https://github.com/user-attachments/assets/135ab619-3f54-49f1-a11d-97d8df78f520" /> | <img width="425" height="827" alt="Image" src="https://github.com/user-attachments/assets/685b99f1-8a23-41f3-9261-955b5591caf8" /> |

| 📩 OTP Screen | 🏠 Home Screen |
|:-----------------:|:----------------:|
| <img width="426" height="825" alt="Image" src="https://github.com/user-attachments/assets/213e8fdf-fb64-49f5-9d64-9581ed3e7169" /> | <img width="436" height="822" alt="Image" src="https://github.com/user-attachments/assets/aa8c0823-9e52-44d6-bd7f-0b491c457005" /> |  

|👤 Profile View |
|:----------------:|

<img width="410" height="816" alt="Image" src="https://github.com/user-attachments/assets/51d5354b-d93d-434e-8814-cf78fe031129" />
---

## 📱 Demo

https://github.com/user-attachments/assets/f33f1308-3f26-47b6-aa36-f95699be1b48

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

