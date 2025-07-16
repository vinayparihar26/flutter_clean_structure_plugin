# layer_maker

🧱 A simple Dart CLI tool to generate clean architecture folder structure for Flutter apps.

## 🚀 Features

- Creates a layered folder structure following clean architecture principles
- Helps you quickly scaffold `data`, `domain`, `presentation`, and `util` folders
- Subfolders like `bloc`, `usecases`, `entities`, etc., are auto-generated

## 📁 Generated Structure

lib/
├── data/
│ ├── data_source/
│ ├── models/
│ └── repositories/
│
├── domain/
│ ├── entities/
│ ├── repositories/
│ └── usecases/
│
├── presentation/
│ ├── bloc/
│ │ ├── bloc/
│ │ ├── event/
│ │ └── state/
│ ├── di/
│ └── pages/
│
└── util/

Happy coding! 💙
Made with ❤️ by Vinay
