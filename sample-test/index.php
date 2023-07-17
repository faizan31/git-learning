
<?php require_once("includes/connection.php");?>
<!DOCTYPE html>
<html>
<head>
    <title>Star Wars Films</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">


<script type='text/javascript'  src="js/jquery.min.js"></script>
<script type='text/javascript' src="js/jquery-ui.min.js"></script>

<script src="js/bootstrap.min.js"></script>

<style type="text/css">
#main-div, #griddata{
		width: 50%;
    margin-left: 400px;
    padding-top: 10px;
}
#lgout{
	margin-left:1117px;
}

</style>
<script type="text/javascript">

 $(document).ready(function() {
			  
							
	$("#submit").click(function () 
							{
								
								
								var datastring = $("#fld_selc").serialize();
								
									var selecboxpage = "filter_ajax.php"; 
			
								$.ajax({
										  type: "get",
										  url: selecboxpage,
										  async: false,
										  data : datastring,
										   success: function(data) {
													$("#griddata").html("")
														$("#main-div").html("")
												
													$("#griddata").html(data)
													 return false;			
										  }
										});
										
										

										return false;
							   });
							   
							   
							                 
			   
			});
			</script>
	
</head>
<body>
    <h1 style="margin-left:400px">Star Wars Films</h1>
<div id="main-div">

    <?php
   
    
$jsonData = file_get_contents('https://swapi.dev/api/films/');
$films = json_decode($jsonData, true)['results'];

if (empty($films)) {
        echo '<p>No films found.</p>';
    } else {  ?>
	
	<form id= "fld_selc" name= "fld_selc"  action="#" method="POST">
        <label for="keyword">Search by Title:</label>
        <input type="text" name="keyword" required>
     
			<button  id='submit' value="Search">Search</button>
    </form>
	<?php
        echo '<ul class="list-group">';
        foreach ($films as $film) {
            echo '<li class="list-group-item">';
            echo '<strong>Title:</strong> ' . $film['title'] . '<br>';
            echo '<strong>Director:</strong> ' . $film['director'] . '<br>';
            echo '<strong>Release Date:</strong> ' . $film['release_date'] . '<br>';
            echo '</li>';
        }
        echo '</ul>';
    }
function getAllFilms()
{
    global $con;

    // Perform database query to fetch films
    $query = "SELECT * FROM films";
    $result = $con->query($query);

    $films = array();
    while ($row = $result->fetch_assoc()) {
        $films[] = $row;
    }

    return $films;
}

// Provide detailed information for a specific film
function getFilmDetails($filmId)
{
    global $con;

    // Perform database query to fetch film details
    $query = "SELECT * FROM films WHERE id = " . $filmId;
    $result = $con->query($query);

    if ($result->num_rows > 0) {
        $film = $result->fetch_assoc();
        return $film;
    }

    return null;
}

// Modify a film item
function modifyFilm($filmId, $newData)
{
    global $con;

    // Perform database update query
    $query = "UPDATE films SET title = '" . $newData['title'] . "', director = '" . $newData['director'] . "' WHERE id = " . $filmId;
    $con->query($query);

    // Return true if modification is successful
    return true;
}

// Delete a film item
function deleteFilm($filmId)
{
    global $con;

    // Perform database delete query
    $query = "DELETE FROM films WHERE id = " . $filmId;
    $con->query($query);

    // Return true if deletion is successful
    return true;
}
// Filter films by title
function filterFilmsByTitle($searchKeyword)
{
    global $con;

    // Perform database query to fetch filtered films
    $query = "SELECT * FROM films WHERE title LIKE '%" . $searchKeyword . "%'";
    $result = $con->query($query);

    $films = array();
    while ($row = $result->fetch_assoc()) {
        $films[] = $row;
    }

    return $films;
}



// API endpoint routing
 
if (isset($_GET['endpoint'])) {
    $endpoint = $_GET['endpoint'];
	echo $endpoint;

switch ($endpoint) {
    case 'list':
        $films = getAllFilms();
        echo json_encode($films);
        break;
    case 'details':
        $filmId = $_GET['filmId'];
        $film = getFilmDetails($filmId);
        echo json_encode($film);
        break;
    case 'modify':
        $filmId = $_POST['filmId'];
        $newData = $_POST['data'];
        $isModified = modifyFilm($filmId, $newData);
        if ($isModified) {
            echo 'Film modified successfully.';
        } else {
            echo 'Failed to modify film.';
        }
        break;
    case 'delete':
        $filmId = $_POST['filmId'];
        $isDeleted = deleteFilm($filmId);
        if ($isDeleted) {
            echo 'Film deleted successfully.';
        } else {
            echo 'Failed to delete film.';
        }
        break;
    case 'filter':
        $searchKeyword = $_GET['keyword'];
        $filteredFilms = filterFilmsByTitle($searchKeyword);
        echo json_encode($filteredFilms);
        break;
    default:
        echo 'Invalid endpoint.';
        break;
}
}


?>
<br />



</div>
<div id="griddata"></div>
 <a id="lgout" href="logout.php">Log Out</a>
</body>
</html>
