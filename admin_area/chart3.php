<?php
function mesec($mesec) {
	$mesec_lang = [
		'Jan' => 'Januar',
		'Feb' => 'Februar',
		'Mar' => 'Mart',
		'Apr' => 'April',
		'May' => 'Maj',
		'Jun' => 'Jun',
		'Jul' => 'Jul',
		'Avg' => 'Avgust',
		'Sep' => 'Septembar',
		'Oct' => 'Oktobar',
		'Nov' => 'Novembar',
		'Dec' => 'Decembar',
	];

	$meseci = array_keys($mesec_lang);
	return $mesec_lang[$meseci[$mesec-1]];
}

if ($_POST) {
	$datum_od = $_POST['datum-od'];
	$datum_do = $_POST['datum-do'];
	$sql_where = "`order_date` BETWEEN '{$datum_od}' AND '{$datum_do}'";
}
else {
	$tekuci_mesec = date('m');
	$tekuca_godina = date('Y');
	$tekuci_dan = date('d');
	$sql_where = "`order_date` BETWEEN '{$tekuca_godina}-{$tekuci_mesec}-01' AND '{$tekuca_godina}-{$tekuci_mesec}-{$tekuci_dan}'";
}

$mesec = [];
$broj_transakcija = [];
$vrednost_transakcija = [];
$boje = [];

$db = mysqli_connect('localhost','root','','ecomerc3');
$sql = "SELECT 
			count(`order_id`) AS `brojac`, 
			sum(`due_amount`) AS `suma`, 
			MONTH(`order_date`) AS `mesec`
		FROM `customer_orders` 
		WHERE 
			$sql_where
		GROUP BY `mesec`";
$result = mysqli_query($db, $sql);
while ($row = mysqli_fetch_assoc($result)) {
	$mesec[] = mesec($row['mesec']);
	$vrednost_transakcija[] = $row['suma'];
	$broj_transakcija[] = $row['brojac'];
	$boje[] = '#ff0000';
}

$x_values_js = implode('", "', $mesec);
$y_values_js = implode(', ', $vrednost_transakcija);
$transactions_counter_js = implode(', ', $broj_transakcija);
$bar_colors_js = implode('", "', $boje);



	$data1 = '';
	$data2 = '';
	$buildingName = '';

	
   

	

		$data1 = $y_values_js;
		$data2 = $transactions_counter_js;
		$buildingName = $x_values_js;
	
/*
	$data1 = trim($data1,",");
	$data2 = trim($data2,",");
	$buildingName = trim($buildingName,",");*/

    $data1 = ($data1);
	$data2 = ($data2);
	$buildingName = ($buildingName);











?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Line Chart | Tutorialswebsite</title>
    <!-- Include Chart.js library -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>


<form method="post">
	<input type="date" name="datum-od">
	<input type="date" name="datum-do">
	<button>Pošalji</button>
</form>
    <canvas id="lineChart" width="800" height="600"></canvas>
 
    <script>
        // Fetch data from PHP backend
       
                const labels = ["<?= $x_values_js ?>"];
                const dataset1 = [<?= $y_values_js ?>];
                 const dataset2 =[<?= $transactions_counter_js ?>];
               
 
                // Create Chart.js line chart
                const ctx = document.getElementById('lineChart');
                new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: labels,
                        datasets: [{
                            label: 'Vrednost transakcija',
                            data: dataset1,
                            borderWidth: 1,
                            borderColor:'rgb(255, 99, 132)',
                            backgroundColor: 'rgb(255, 99, 132)',
                        },{
                            label: 'Broj transakcija',
                            data: dataset2,
                             borderWidth: 1,
                            borderColor: 'rgb(75, 192, 192)',
                            backgroundColor: 'rgb(75, 192, 192)',
                        }]
                    },
                    options: {
                        interaction: {
                             intersect: false,
                             mode: 'index',
                                  },
                        scales: {
                             yAxes: [{
                                ticks: {
                                  beginAtZero: true,
                                  min: 0
                                       }    
                                    }]
                            }
                    }
                });
            ;
    </script>
</body>
</html>