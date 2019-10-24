<?php
$servername = "localhost";
$username = "root";
$password = "pass";
$dbname = "betterflye";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "select initName,donationType,amountDonated from initiatives;";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Initiative: " . $row["initName"]. " - Donation Type: " . $row["donationType"]  . " - Amount Donated: " . $row["amountDonated"] . "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
