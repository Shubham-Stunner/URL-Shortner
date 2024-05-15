# URL Shortener

A simple URL shortening service built in Go.

## Overview

This project provides a basic URL-shortening service implemented in Go. It allows users to shorten long URLs into more manageable and shareable links. The service also includes a redirect feature to redirect users from the shortened URL to the original long URL.

## Installation

To use the URL shortener, you need to have Go installed on your system. You can download and install Go from the [official Go website](https://golang.org/dl/).

### Steps

1. **Clone the repository to your local machine**:
    ```sh
    git clone https://github.com/your-username/url-shortener.git
    cd url-shortener
    ```

2. **Run the Go server**:
    ```sh
    go run main.go
    ```

## Usage

1. **Open your web browser** and navigate to `http://localhost:5000` to access the frontend.
2. **Enter a URL** in the input field and click the "Shorten URL" button.
3. **Copy the generated short URL** and use it to be redirected to the original URL.

## Project Structure

/url-shortener
/static
index.html
main.go


- **`main.go`**: The main Go file that contains the backend logic for URL shortening and redirection.
- **`static/index.html`**: The frontend HTML file for user interaction.

## Detailed Breakdown

### Backend (`main.go`)

- **URL Struct and In-Memory Database**: Defines a struct to store URL information and uses a map for in-memory storage.
- **URL Shortening Function**: Uses MD5 hashing to generate a short URL.
- **Create and Retrieve URL Functions**: Implements functions to create a short URL and retrieve the original URL.
- **HTTP Handlers**:
  - `rootPageURL`: Serves the main HTML page.
  - `ShortURLHandler`: Handles the URL shortening request.
  - `redirectURLhandler`: Redirects the user to the original URL based on the shortened URL.

### Frontend (`static/index.html`)

- **HTML Structure**: A simple form to input the URL and display the shortened URL.
- **JavaScript**: Handles form submission, sends requests to the backend, and displays responses.

## Example

1. **Shortening a URL**:
   - Enter `https://www.example.com` in the input field.
   - Click the "Shorten URL" button.
   - Get a shortened URL like `http://localhost:5000/redirect/abcd1234`.

2. **Using the Shortened URL**:
   - Open `http://localhost:5000/redirect/abcd1234` in your browser.
   - You will be redirected to `https://www.example.com`.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## Contact

For any inquiries or issues, please open an issue in this repository.
