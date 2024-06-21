# YourEyes Mobile App

YourEyes is a mobile application designed to assist blind and visually impaired individuals in navigating their surroundings. The app livestreams video to a server in real-time using gRPC, where the server processes the video with an object detection model and returns labels, distances, and directions of detected objects.

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Task List](#task-list)
- [Contributing](#contributing)
- [Usage](#usage)
- [License](#license)
- [Contact](#contact)

## Features

- **Real-time Video Streaming**: The mobile app streams video to a server in real-time.
- **Feedback**: The app provides labels, distances, and directions of detected objects to the user.
- **User-Friendly Interface**: Designed to be accessible for blind and visually impaired users.

## Project Structure

Please follow this structure that helps in maintaining a clean, organized, and scalable project.

- **controllers/**: Contains controllers for managing request and response cycles.
- **models/**: Contains data models.
- **services/**: Contains business logic and services.
- **screens/**: Contains the different screens of the application.
- **widgets/**: Contains reusable widgets used across the app.
- **repositories/**: Contains data access and storage logic.
- **providers/**: Contains state management logic.
- **helpers/**: Contains utility functions and helper classes.
- **constants/**: Contains constant values used throughout the app.
- **themes/**: Contains app themes and design-related configurations.
- **routes/**: Contains navigation logic.
- **assets/**: Contains static files such as images, fonts, and JSON files.

## Task List

- [x] Set up project structure
- [x] Implement real-time video streaming
- [ ] Make the project to support IOS
- [ ] Improve UI/UX for better accessibility
- [ ] Add support for additional languages
- [ ] Implement settings for customization (e.g., voice speed, language)
- [ ] Develop user tutorials and help sections
- [ ] Write code documentation
- [ ] Provide test cases

## Contributing

We welcome contributions! Please follow these steps to contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

Please read our [Contributing Guidelines](CONTRIBUTING.md) before making any contributions

##  Usage

To get a local copy up and running, follow these simple steps:
1. **Clone the repository**:
    ```sh
    git clone https://github.com/your-username/YourEyes-App.git
    ```
2. **Navigate to the project directory**:
    ```sh
    cd YourEyes-App
    ```
3. **Install dependencies**:
    ```sh
    flutter pub get
    ```
4. **Run the app**:
    ```sh
    flutter run
    ```

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions, feedback, or support, please contact us at:

- **Email**: [Link](mailto:lafi.odeh0294@gmail.com)
- **GitHub Issues**: [YourEyes-App Issues](https://github.com/Your-Eyes-Project/YourEyes-App/issues)