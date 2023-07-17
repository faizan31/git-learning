
<?php require_once("includes/connection.php");?>
<?php

if (isset($_GET['keyword'])) {
		  $searchKeyword = $_GET['keyword'];
		 
	}
$backto = "http://localhost/sample-test/index.php";
		
    //$searchKeyword = $_GET['keyword'];

    // Filter films by title using the SWAPI
    //$filteredFilms = filterFilmsByTitle($searchKeyword);
$filterQuery = "SELECT * FROM films WHERE title LIKE '%$searchKeyword%'";
//echo $filterQuery;

 $filterResult = mysqli_query($con,$filterQuery);

echo "Filtered Films:<br>";
  echo '<ul class="list-group">';
if ($filterResult->num_rows > 0) {
    while ($row = $filterResult->fetch_assoc()) {
		  echo '<li class="list-group-item">';
        echo "Title: " . $row['title'] . "<br>";
        echo "Director: " . $row['director'] . "<br>";
        echo "Release Date: " . $row['release_date'] . "<br><br>";
		  echo '<li class="list-group-item">';
		 
		  echo "<a href='{$backto}'>Back to Menu</a> <br />" ;
    }
	echo '</ul>';
} else {
	echo '<ul class="list-group">';
	echo '<li class="list-group-item">';
    echo "No films found <br /><br />";
	echo '</li></ul>';
	
	echo "<a href='{$backto}'>Back to Menu</a> <br />" ; 
}
	
	
  

?>
