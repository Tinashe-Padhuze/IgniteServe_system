<?php
// **Warning:** md5 is not recommended for password storage due to security vulnerabilities.

function generateHash($password) {
  return md5($password);  // Example using md5 (not recommended)
}

$password = "admin123"; // Replace with your actual password
$hashed_password = generateHash($password);

echo "Hashed Password (md5): " . $hashed_password; // This is for demonstration only
?>
