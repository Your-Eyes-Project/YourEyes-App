
# Contributing to AInak

First off, thank you for considering contributing to our project! It's people like you that make it such a great community.

## Getting Started

### Fork the Repository

1. Fork the repository by clicking the "Fork" button on the project page.
2. Clone the forked repository to your local machine:

```bash
git clone https://github.com/lafi-odeh/AInak.git
cd AInak
```

### Set Up Your Environment

#### For Dart

1. Install Dart by following the [official instructions](https://dart.dev/get-dart).
2. Install the required dependencies:

```bash
dart pub get
```

3. Run the project locally:

```bash
dart run
```

#### For Python

1. Install Python by following the [official instructions](https://www.python.org/downloads/).
2. Create a virtual environment:

```bash
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
```

3. Install the required dependencies:

```bash
pip install -r requirements.txt
```

4. Run the Python scripts:

```bash
python script.py
```

### Running Tests

#### For Dart

Run the test suite to ensure everything is working correctly:

```bash
dart test
```

#### For Python

Run the test suite to ensure everything is working correctly:

```bash
pytest
```

## How to Contribute

### Reporting Bugs

If you find a bug, please open an issue and include the following information:

- A clear and descriptive title
- A detailed description of the problem
- Steps to reproduce the issue
- Any relevant logs or screenshots

### Suggesting Features

We welcome feature suggestions! To suggest a new feature, please open an issue and provide:

- A clear and descriptive title
- A detailed description of the feature and why it would be useful
- Any additional context or examples

### Improving Documentation

Help us improve our documentation by submitting pull requests with updates or new content. 

### Writing Code

#### For Dart

1. Create a branch for your feature or bug fix:

```bash
git checkout -b feature/your-feature-name
```

2. Make your changes, ensuring you follow our [Dart coding standards](#dart-coding-standards).
3. Commit your changes with a descriptive commit message:

```bash
git commit -m "Add feature X to improve Y"
```

4. Push your branch to your fork:

```bash
git push origin feature/your-feature-name
```

5. Open a pull request from your branch to the `main` branch of the original repository.

#### For Python

1. Create a branch for your feature or bug fix:

```bash
git checkout -b feature/your-feature-name
```

2. Make your changes, ensuring you follow our [Python coding standards](#python-coding-standards).
3. Commit your changes with a descriptive commit message:

```bash
git commit -m "Add feature X to improve Y"
```

4. Push your branch to your fork:

```bash
git push origin feature/your-feature-name
```

5. Open a pull request from your branch to the `main` branch of the original repository.

## Coding Standards

### Dart Coding Standards

- Follow the [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines.
- Use `dartfmt` to format your code:

```bash
dart format .
```

- Write clear, concise, and descriptive commit messages.
- Include comments in your code where necessary.

### Python Coding Standards

- Follow the [PEP 8](https://www.python.org/dev/peps/pep-0008/) style guide.
- Use `flake8` to check your code for style violations:

```bash
flake8 .
```

- Write clear, concise, and descriptive commit messages.
- Include comments in your code where necessary.

## Pull Request Process

1. Ensure your code follows the project's coding standards.
2. Write clear and detailed commit messages.
3. Ensure all tests pass before submitting your pull request.
4. Include a description of the changes in your pull request.
5. Reference any related issues or pull requests.

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md) to ensure a welcoming and respectful environment for everyone.
