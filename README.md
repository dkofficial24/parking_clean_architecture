# 🧼 Flutter Clean Architecture Template

A Flutter starter project demonstrating **Clean Architecture** with proper separation of concerns. It uses **Bloc** for state management, **GetIt + Injectable** for dependency injection, and supports **unit tests** and **BDD-style widget tests**.

---

## 📦 Features

- Clean Architecture: Presentation, Domain, Data layers
- Dependency Injection using GetIt and Injectable
- State Management using flutter_bloc
- Unit Tests for use cases and core logic
- BDD-style Widget Tests for UI flows
- Scalable and maintainable project structure

---

# Code Generation Command
flutter pub run build_runner build --delete-conflicting-outputs

# Test Folder Structure
test/
├── parking/
│   ├── data/
│   └── domain/
├── feature/ 
│   ├── parking.feature
│   └── parking_test.dart

