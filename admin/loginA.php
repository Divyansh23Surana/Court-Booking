<?php
require_once('../config.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Example query to check credentials (use prepared statements to prevent SQL injection)
    $stmt = $conn->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Successful login
        session_start();
        $_SESSION['user'] = $result->fetch_assoc();
        header("Location: dashboard.php");
        exit;
    } else {
        // Invalid credentials
        echo "<script>alert('Invalid username or password');</script>";
    }
}
?>
