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

 -**Browse Products**: Available products are displayed on the home screen 
 
 -**Product Details**: Tapping any product navigates to the details page to view product details
 
 -**Add to Cart**: The "Add to cart" button to add items to cart
 
 -**Manage Cart**: The cart screen contains:
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
```
lib/
│
├── main.dart                        # App entry point
│
├── components/                      # Reusable UI components
│   ├── alert_dialogue.dart          # popup modal
│   ├── custom_toast.dart            # confirmation message
│   └── icon_badge.dart              # Cart icon count
│
├── controllers/                     # GetX controllers for state management
│   ├── btmnav_controller.dart       # Bottom navigation bar controller
│   ├── cart_controller.dart         # Cart controller
│   └── products_controller.dart     # Products controller
│
├── model/                           # Data models
│   └── product_model.dart           # Products static array
│
├── utils/                           # Constants and utility classes
│   ├── app_icons.dart               # Custom Icons
│   ├── app_images.dart              # Custom images
│   └── colors.dart                  # Custom colors
│
├── view/                            # UI-related structure
│   ├── app_bars/                    # App bar widgets
│   │   ├── customappbar.dart        # App bar for home page with search bar
│   │   └── customappbar2.dart       # App bar for other pages
│   │
│   ├── nav_bar/                     # Bottom navigation bar widget
│   │   └── btmnav_bar.dart    
│   │
│   └── pages/                       # Main screens/pages
│       ├── cart_page.dart           # Cart Page
│       ├── favorites.dart           # Favourites Page
│       ├── homepage.dart            # Home Page
│       ├── notifications.dart       # Notifications Page
│       ├── product_details.dart     # Products Page
│       └── profile_page.dart        # Profile Page
```



# 📱 Screenshots
## Home Page
![App screenshot](./assets/screenshot/homepage.jpg)
## Product Details Page
![App screenshot](./assets/screenshot/productdetails.jpg)
## Favorites Page
![App screenshot](./assets/screenshots/favoritespage.jpg)
## Profile Page
![App screenshot](./assets/screenshots/profilepage.jpg)
## Cart Operations Page
![App screenshot](./assets/screenshot/cartnoitems.jpg)
![App screenshot](./assets/screenshot/cartitems.jpg)
![App screenshot](./assets/screenshot/checkout.jpg)

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


# 📞 Contact

Amaechi Promise Chiedozie - promiseamaechi16@gmail.com

Project Link: https://github.com/Dozie-dev/MiniMart-eCommerce

---
