<?php 
include 'core/init.php'; 
include 'includes/overall/header.php';

$value_searching = $_POST['search'];
$empty = empty($value_searching);
$set = isset($value_searching);

if( $set && !$empty){
	$keyword = $_POST['search'];

	$search_sql = "SELECT * FROM pages WHERE name LIKE '%$keyword%' OR description LIKE '%$keyword%'";
	$search_query = mysql_query($search_sql);
	if(mysql_num_rows($search_query) != 0){
		$search_rs = mysql_fetch_assoc($search_query);
	}
	?>

	<p> serch results</p>
	<?php if(mysql_num_rows($search_query)!=0){
		do{ ?>
	<p><?php echo $search_rs['name']; ?></p>

	<?php	}while($search_rs = mysql_fetch_assoc($search_query));

	}else {
		echo "No results found";
	}
}
?>