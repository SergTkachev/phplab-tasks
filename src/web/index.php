<?php
require_once './functions.php';

$airports = require './airports.php';
$ch = 5;

// Filtering
/**
 * Here you need to check $_GET request if it has any filtering
 * and apply filtering by First Airport Name Letter and/or Airport State
 * (see Filtering tasks 1 and 2 below)
 */
if (isset($_GET['filter_name'])) {
    $result = [];

    foreach ($airports as $airport) {
        if (strtolower(substr($airport['name'], 0, 1)) === strtolower($_GET['filter_name'])) {
            $result[] = $airport;
        }
    }

    $airports = $result;
}

// Sorting
/**
 * Here you need to check $_GET request if it has sorting key
 * and apply sorting
 * (see Sorting task below)
 */
if (isset($_GET['filter_name'])) {
    $result = [];

    foreach ($airports as $airport) {
        if (strtolower(substr($airport['name'], 0, 1)) === strtolower($_GET['filter_name'])) {
            $result[] = $airport;
        }
    }

    $airports = $result;
}
// Pagination
/**
 * Here you need to check $_GET request if it has pagination key
 * and apply pagination logic
 * (see Pagination task below)
 */
$total_data = floor(count($airports) / $ch);
$last = ceil($total_data / $ch);

if ($last < 1) {
    $last = 1;
}
// Establish the $pagenum variable
$pagenum = 1;
// Get pagenum from URL vars if it is present, else it is = 1
if (isset($_GET['page'])) {
    $pagenum = preg_replace('#[^0-9]#', '', $_GET['page']);
}

if (empty($_GET['page']) || $pagenum == 1) {
    $start_val = 0;
//    $end_val = $ch - 1;
} else {
    $start_val = ($pagenum * $ch) - $ch;
//    $end_val = $start_val + ($ch - 1);
}
$result = array_slice($airports, $start_val, $ch);

$airports = $result;
// This makes sure the page number isn't below 1, or more than our $last page
if ($pagenum < 1) {
    $pagenum = 1;
} else if ($pagenum > $last) {
    $pagenum = $last;
}
// Establish the $paginationCtrls variable
$paginationCtrls = '';

if ($last != 1) {
    $url = getUrl($_GET, 'page');
    /* First we check if we are on page one. If we are then we don't need a link to
       the previous page or the first page so we do nothing. If we aren't then we
       generate links to the first page, and to the previous page. */
    if ($pagenum > 1) {
        $previous = $pagenum - 1;
        $paginationCtrls .= '<li class="page-item"><a class="page-link" href="?' . $url . 'page=' . $previous . '">Previous</a> </li>&nbsp; &nbsp; ';
        // Render clickable number links that should appear on the left of the target page number
        for ($i = $pagenum - 4; $i < $pagenum; $i++) {
            if ($i > 0) {
                $paginationCtrls .= '<li class="page-item"><a class="page-link" href="?' . $url . 'page=' . $i . '">' . $i . '</a> </li>&nbsp; ';
            }
        }
    }
    // Render the target page number, but without it being a link
    $paginationCtrls .= '<li class="page-item active"><a class="page-link" href="#">' . $pagenum . '</a></li>';
    // Render clickable number links that should appear on the right of the target page number
    for ($i = $pagenum + 1; $i <= $last; $i++) {
        $paginationCtrls .= '<li class="page-item"><a class="page-link" href="?' . $url . 'page=' . $i . '">' . $i . '</a> </li>&nbsp; ';
        if ($i >= $pagenum + 4) {
            break;
        }
    }
    // This does the same as above, only checking if we are on the last page, and then generating the "Next"
    if ($pagenum != $last) {
        $next = $pagenum + 1;
        $paginationCtrls .= ' &nbsp; &nbsp;  <li class="page-item"><a class="page-link" href="?' . $url . 'page=' . $next . '">Next</a></li>';
    }
}
 
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <title>Airports</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<main role="main" class="container">

    <h1 class="mt-5">US Airports</h1>

    <!--
        Filtering task #1
        Replace # in HREF attribute so that link follows to the same page with the filter_by_first_letter key
        i.e. /?filter_by_first_letter=A or /?filter_by_first_letter=B

        Make sure, that the logic below also works:
         - when you apply filter_by_first_letter the page should be equal 1
         - when you apply filter_by_first_letter, than filter_by_state (see Filtering task #2) is not reset
           i.e. if you have filter_by_state set you can additionally use filter_by_first_letter
    -->
    <div class="alert alert-dark">
        Filter by first letter:

        <?php foreach (getUniqueFirstLetters(require './airports.php') as $letter): ?>
            <a href="#"><?= $letter ?></a>
        <?php endforeach; ?>

        <a href="/" class="float-right">Reset all filters</a>
    </div>

    <!--
        Sorting task
        Replace # in HREF so that link follows to the same page with the sort key with the proper sorting value
        i.e. /?sort=name or /?sort=code etc

        Make sure, that the logic below also works:
         - when you apply sorting pagination and filtering are not reset
           i.e. if you already have /?page=2&filter_by_first_letter=A after applying sorting the url should looks like
           /?page=2&filter_by_first_letter=A&sort=name
    -->
    <table class="table">
        <thead>
        <tr>
            <th scope="col"><a href="#">Name</a></th>
            <th scope="col"><a href="#">Code</a></th>
            <th scope="col"><a href="#">State</a></th>
            <th scope="col"><a href="#">City</a></th>
            <th scope="col">Address</th>
            <th scope="col">Timezone</th>
        </tr>
        </thead>
        <tbody>
        <!--
            Filtering task #2
            Replace # in HREF so that link follows to the same page with the filter_by_state key
            i.e. /?filter_by_state=A or /?filter_by_state=B

            Make sure, that the logic below also works:
             - when you apply filter_by_state the page should be equal 1
             - when you apply filter_by_state, than filter_by_first_letter (see Filtering task #1) is not reset
               i.e. if you have filter_by_first_letter set you can additionally use filter_by_state
        -->
        <?php foreach ($airports as $airport): ?>
        <tr>
            <td><?= $airport['name'] ?></td>
            <td><?= $airport['code'] ?></td>
            <td><a href="#"><?= $airport['state'] ?></a></td>
            <td><?= $airport['city'] ?></td>
            <td><?= $airport['address'] ?></td>
            <td><?= $airport['timezone'] ?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>

    <!--
        Pagination task
        Replace HTML below so that it shows real pages dependently on number of airports after all filters applied

        Make sure, that the logic below also works:
         - show 5 airports per page
         - use page key (i.e. /?page=1)
         - when you apply pagination - all filters and sorting are not reset
    -->
    <nav aria-label="Navigation">
        <ul class="pagination justify-content-center">
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
        </ul>
    </nav>

</main>
</html>
