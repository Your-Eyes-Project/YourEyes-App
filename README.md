# YourEyes

YourEyes is a mobile application designed to assist blind and visually impaired individuals in navigating their surroundings. The app livestreams video to a server in real-time using gRPC, where the server processes the video with an object detection model and returns labels, distances, and directions of detected objects.

## Features

- **Real-time Video Streaming**: The mobile app streams video to a server in real-time.
- **Object Detection**: The server runs an object detection model on the livestreamed video.
- **Feedback**: The app provides labels, distances, and directions of detected objects to the user.

## Project Structure

- **Flutter App**: Contains the code for the mobile application.
- **Server Code**: Located in the `servercode` directory, written in Python.

## Task List

- [x] Set up project structure
- [x] Implement real-time video streaming in Flutter app
- [x] Develop server code to process video streams
- [x] Integrate object detection model on the server
- [ ] Implement Word2Vec to approximate user search terms to known labels
- [ ] Optimize server performance for real-time processing
- [ ] Improve UI/UX for better accessibility
- [ ] Add support for additional languages
- [ ] Plan and implement edge device compatibility to enable standalone functionality without relying on a central server

## Contributing

We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a pull request.

