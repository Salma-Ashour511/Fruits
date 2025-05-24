# Fruits App

A modern iOS application built with SwiftUI that showcases various fruits and their details. This app provides an interactive and educational experience for users to learn about different fruits, their nutritional values, and health benefits.

## Project Structure

The project follows a clean architecture pattern with the following directory structure:

- `App/` - Contains the main application entry point and configuration
- `View/` - SwiftUI views and UI components
  - `Onboarding/` - Welcome and introduction screens
  - `FruitList/` - Main list of fruits
  - `FruitDetails/` - Detailed view of individual fruits
  - `Settings/` - App settings and preferences
- `Model/` - Data models and business logic
  - `Fruit.swift` - Core data model for fruits
- `Data/` - Data management and persistence
- `Assets.xcassets/` - Image assets and resources

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Getting Started

1. Clone the repository
2. Open `Fruits.xcodeproj` in Xcode
3. Build and run the project (⌘R)

## Features

- Interactive onboarding experience
- Comprehensive fruit catalog with detailed information
- Beautiful and intuitive user interface
- Smooth animations and transitions
- Dark mode support
- Settings customization
- Responsive design for all iOS devices
- Clean architecture implementation
- Asset management
- Data persistence

## Architecture

The project follows MVVM (Model-View-ViewModel) architecture pattern, which is well-suited for SwiftUI applications. This separation of concerns makes the code more maintainable and testable.

### Key Components:
- **Views**: SwiftUI views organized by feature
- **Models**: Data structures representing fruits and their properties
- **ViewModels**: Business logic and state management
- **Data Layer**: Handles data persistence and management

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is available under the MIT license. See the LICENSE file for more info. 
