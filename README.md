# MiniMart-eCommerce
A mobile App Project for Alphatwelve Task

# 🛠️ Tech Stack Used 

- **Framework**: Flutter
- **Language**: Dart
- **Architecture**: MVVM (Model-View-ViewModel)
- **State Management**: GetX
- **UI Components**: Custom Flutter widgets
- **Dependencies**: flutter pub dev

# 🚀 Setup / Run Instructions

## Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / IDE (VS Code)
- iOS Simulator / Android Emulator

## Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/Dozie-dev/MiniMart-eCommerce.git
   cd MiniMart-eCommerce
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   # For Android
   flutter run

   # For iOS
   flutter run -d iosMore actions

4. **Build for release**
   ```bash
   # Android APK
   flutter build apk --release

   # iOS
   flutter build ios --release
   ```

   ## 🎯 Instructions

 **Browse Products**: Available products are displayed on the home screen 
 **Product Details**: Tapping any product navigates to the details page to view product details
 **Add to Cart**: The "Add to cart" button to add items to cart
 **Manage Cart**: The cart screen contains:
   - Added cart items
   - Adjust quantities using +/- buttons
   - Remove items using delete icon
   - See total cost including shipping
 **Checkout Button**: Complete and confirms purchase

   # 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web (with responsive design)


# 🏗️ Project Structure




# 📱 Screenshots


# ✨ Features

## Core Functionality
- **Display Available Products**: Products on the home screen with images and pricing
- **Product Details**: View detailed information about each product when clicked
- **Add to Cart Function**: Cart integration with visual user feedback
- **Cart Management**: 
  - View all added items
  - Adjust quantities of products
  - Remove items 
  - Real-time total calculation with addition of shipping fee 
- **Cart Badge**: Navigation bar shows item count for cart
- **Checkout Process**: Complete purchase flow with confirmation dialog
- **Favorites Feature**: Save preferred items for later

## User Experience
- **Smart Notifications**: Toast alerts for cart actions
- **Responsive Design**: Clean, modern UI with smooth navigation
- **State Persistence**: Cart state maintained across screens
- **Interactive Elements**: Quantity controls, delete actions, and checkout flow
