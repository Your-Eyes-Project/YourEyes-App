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

- **lib**: Contains the main Flutter application code.
- **assets**: Contains images, audio files, and other static resources.
- **test**: Contains unit and widget tests for the app.
- **android**: Contains the Android-specific code.
- **ios**: Contains the iOS-specific code.

## Task List

- [x] Set up project structure
- [x] Implement real-time video streaming
- [ ] Improve UI/UX for better accessibility
- [ ] Add support for additional languages
- [ ] Implement settings for customization (e.g., voice speed, language)
- [ ] Develop user tutorials and help sections
- [ ] Write code documentation

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