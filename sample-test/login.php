
<?php require_once("includes/connection.php");?>
<?php require_once("includes/function.php");?>

<?php //if (logged_in()) {redirect_to("index.php");}?>
<?php
session_start();







$password="";
$username="";


// Connect to the database

if( isset($_POST['submit']) && !empty($_POST['username']) && !empty($_POST['password']))
{

					$username = $_POST['username'];
				
					$password = $_POST['password'];
					
					//$password=md5($password);

					$query = "SELECT username, password ";
					$query .= "FROM dbuser ";
					$query .= "WHERE username = '{$username}' ";
					$query .= "AND password = '{$password}' ";
					
					$result = mysqli_query($con,$query);
					$numberOfRows = mysqli_num_rows($result);
			
					
					if ($numberOfRows == 0) {
						session_destroy();
						$message =  "User Name or  Password is incorrect";
					}else {
						$found_user = mysqli_fetch_array($result);						
						$_SESSION['userid']=$found_user['username'];
						//mysqli_close($connection);
						?> 
						<script type='text/javascript'>
								window.location="index.php";
						</script>
						<?php
					}		
				}else{
						
						$message = "User Name or  password is empty";
				}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">


<script src="js/jquery.min.js"></script>
<script type='text/javascript' src="js/jquery-ui.min.js"></script>



<script src="js/bootstrap.min.js"></script>	
<style type="text/css">
#grid{
	width:20%;
	margin-left:300px;
}
 h1 {
    
    margin-left: 297px;
}
</style>

</head>


<body>

<div id="heading">
		<h1>Login</h1>
</div>
<div id ="grid">
<div class="form-group">
<form action="login.php" method="post" id="loginform">
				 <label for="exampleInputEmail1">UserName</label>
				<label for="username" id="lblfixlen"  >   </label>
		        <input class="form-control"   placeholder="username" id="username" name="username" type="text" value="<?php echo htmlentities($username); ?>" />
				<span id="usernameInfo"></span>
                </div>
				 <div class="form-group">
   
    
				 <label for="exampleInputPassword1">Password</label>
				
		        <input id="password" name="password" type="password" value="<?php echo htmlentities($password); ?>" class="form-control" id="exampleInputPassword1" placeholder="Password" />
				
            </div>
			   <input type="submit" name="submit" value="Submit" class="button btn btn-primary" />
  </form>
 </div>
 </div>
<?php 
	If (isset($_POST['submit'])){
		if (!empty($message)) {echo "<p class=\"message\">" . $message . "</p>";}
	}
	?>
</body>
</html>

