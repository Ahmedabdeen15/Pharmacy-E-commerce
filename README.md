# **Pharmacy E-commerce App**

This project is a Pharmacy E-commerce app built using Flutter and Firebase, allowing users to browse and purchase medications and health products online. The app features real-time product listings, secure user authentication, order management, and payment integration.

## **Table of Contents**

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Firebase Setup](#firebase-setup)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## **Features**

- **User Authentication**: Secure user registration, login, and logout using Firebase Authentication (email/password, Google sign-in).
- **Product Browsing**: Users can browse and search for medications and health products by category.
- **Product Details**: Detailed product pages with descriptions, pricing, and availability information.
- **Shopping Cart**: Add to cart, update quantities, and remove items.
- **Order Management**: Place orders and view order history with status updates.
- **Payment Integration**: Secure payments using a mock or real payment gateway.
- **Notifications**: Push notifications for order status updates and promotions.
- **User Profile**: Manage personal information, addresses, and payment methods.
- **Admin Panel**: Manage products, categories, orders, and users (only accessible by admin users).

## **Technologies Used**

- **Frontend**: Flutter (Dart)
- **Backend**: Firebase (Firestore, Authentication, Cloud Functions, Storage)
- **State Management**: Provider / Riverpod / Bloc (choose based on preference)
- **Payment Gateway**: Stripe / PayPal (or any preferred gateway)
- **Push Notifications**: Firebase Cloud Messaging (FCM)

## **Getting Started**

### **Prerequisites**

- Flutter SDK installed ([Flutter installation guide](https://flutter.dev/docs/get-started/install))
- Dart installed
- Firebase account ([Create Firebase account](https://firebase.google.com/))
- Code editor (VS Code, Android Studio, etc.)

### **Installation**

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Ahmedabdeen15/pharmacy-ecommerce-app.git
   cd pharmacy-ecommerce-app
