<?php
include 'core/init.php';

$_SESSION['startQuiz'] = 1;
$_SESSION['quizID'] = 7;
$_SESSION['last_id'] = first_question($_SESSION['quizID']);
$_SESSION['quiz_tally_array'] = array();
$_SESSION['exiting'] = "http://dynamath-dev.cs.fiu.edu/DynaMathVersion1.3/invariantgeometryactivity.php";

header('Location: quiz.php');

?>