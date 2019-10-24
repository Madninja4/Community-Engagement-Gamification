<?php
$servername = "localhost";
$username = "root";
$password = "ass";
$dbname = "betterflye";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "select u.username,o.orgName,r.rating,re.reviewText from organizations o, users u, orgRatings r, orgReviews re where u.userID = r.userID and o.orgID = r.orgID and re.reviewerID = u.$
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Organization: " . $row["orgName"]. " - Rating: " . $row["rating"] . " - Review Text : " . $row["reviewText"] . " - reviewer:" . $row["username"] .  "<br>";
    }
} else {
    echo "0 results";
}
$conn->close(); ?>







