<form action="" method="post">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Your Name" name = "name">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Your Email" name ="email">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Subject" name ="subject">
					</div>
					
					<div class="form-group">
						<textarea cols="30" rows="7" class="form-control" placeholder="Message" name="message"></textarea>
					</div>
					<div class="form-group">
						<input name="submit" type="submit" value="Send Message" class="btn btn-primary py-3 px-5" data-toggle="modal">
						
					</div>
				
	</form>
	        	<?php
	
$servername = "localhost";
$username = "root";
$password = "";
$database = "blog";
// Create connection
		$conn = mysqli_connect($servername, $username, $password, $database);
				
		$name = $_POST['name'];
		$email = $_POST['email'];
		$subject = $_POST['subject'];
		$message = $_POST['message'];
 	

	$sql = "INSERT INTO contact(name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";

	if(!empty($name) && !empty($email) && !empty($subject) && !empty($message)){
	$result = $conn->query($sql);

	echo '<script>alert("Form has been submitted!")</script>';
	// echo"Đã thêm thành công!";

	} 	

	        	 ?>