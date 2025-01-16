# Grocery Application

A simple and interactive grocery application built for iOS using Swift and SwiftUI. This app showcases essential SwiftUI concepts, making it an excellent project for beginners to learn and practice core SwiftUI functionalities.

---

## Features

- **State Management**: Learn how to use `@State` variables to manage the app's state effectively.
- **Custom Styles**: Apply styles to various UI elements for a polished look.
- **Layouts**: Utilize `ZStack`, `VStack`, and other layout containers for intuitive design.
- **Navigation**: Implement `NavigationStack` for seamless navigation between screens.
- **Dynamic Data**: Work with arrays and `ForEach` loops to dynamically generate content.
- **List Operations**: Enable deletion of items with `onDelete` functionality.
- **Lifecycle Events**: Use `onAppear` to perform actions when a view appears.
- **Component Reusability**: Create reusable components to simplify the codebase.

---

## Getting Started

### Prerequisites

- Xcode 14.0 or later
- iOS 16.0 or later
- Basic knowledge of Swift and SwiftUI

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/raox1/BasicGrocery.git
   ```
2. Open the project in Xcode:
   ```bash
   cd BasicGrocery
   open GroceryApp.xcodeproj
   ```
3. Build and run the app on a simulator or a physical device.

---

## Code Highlights

### Managing State with `@State`
State variables are used to dynamically update the UI when the data changes.
```swift
@State private var groceries: [String] = ["Apples", "Bananas", "Carrots"]
```

### Dynamic Lists with `ForEach`
Generate UI elements dynamically from an array.
```swift
List {
    ForEach(groceries, id: \ .self) { item in
        Text(item)
    }
    .onDelete(perform: deleteItem)
}
```

### Navigation with `NavigationStack`
Enable navigation between screens easily.
```swift
NavigationStack {
    NavigationLink("Add Grocery", destination: AddGroceryView())
}
```

### Styling Components
Apply custom styles to elements for a polished look.
```swift
Text("Welcome to Grocery App")
    .font(.largeTitle)
    .foregroundColor(.blue)
```

---

## Demo Video

Here's the app video:



https://github.com/user-attachments/assets/17131c2e-376c-442b-835e-acb6a298e24d



---

## Learnings

This project helped us understand:

- How to manage state with `@State`.
- Styling SwiftUI elements.
- Working with layout stacks like `ZStack` and `VStack`.
- Implementing navigation with `NavigationStack`.
- Using arrays and `ForEach` for dynamic content.
- Handling list operations like deletion with `onDelete`.
- Reacting to lifecycle events with `onAppear`.
- Reusing components for cleaner and modular code.

---

## Contributing

Contributions are welcome! If you'd like to enhance this project, please:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature-name`.
3. Commit your changes: `git commit -m 'Add feature-name'`.
4. Push to the branch: `git push origin feature-name`.
5. Open a pull request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## Contact

For any questions or feedback, feel free to reach out:

- Email: [lalitkumaryadav9090@gmail.com](mailto:lalitkumaryadav9090@gmail.com)
- GitHub: [raox1](https://github.com/raox1)
- Website: [lalit.pro](https://lalit.pro)
