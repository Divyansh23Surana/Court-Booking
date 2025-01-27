<?php
// Database connection
$conn = new mysqli("localhost", "root", "", "scbs_db");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch booked slots
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["date"])) {
    $date = $conn->real_escape_string($_POST["date"]);
    $query = "SELECT time_from FROM booking_list WHERE `date` = '$date' AND `status` = 1"; // Only confirmed bookings
    $result = $conn->query($query);

    $bookedSlots = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $time = date("g:i A", strtotime($row["time_from"])); // Convert to 12-hour format
            $bookedSlots[] = $time;
        }
    }

    echo json_encode($bookedSlots); // Return booked slots as JSON
}
$conn->close();
?>
