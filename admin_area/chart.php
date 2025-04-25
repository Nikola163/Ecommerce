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
?>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<body>

<form method="post">
	<input type="date" name="datum-od">
	<input type="date" name="datum-do">
	<button>Pošalji</button>
</form>

<h2>Vrednost transakcija</h2>
<canvas id="bar-chart-transakcije-vrednost" style="width:100%;max-width:600px"></canvas>
<h2>Broj transakcija</h2>
<canvas id="bar-chart-transakcije-broj" style="width:100%;max-width:600px"></canvas>

<script>

/* Bar chart */
new Chart("bar-chart-transakcije-vrednost", {
  type: "bar",
  data: {
    labels: ["<?= $x_values_js ?>"],
    datasets: [{
      backgroundColor: ["<?= $bar_colors_js ?>"],
      data: [<?= $y_values_js ?>]
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: ""
    },
	scales: {
		xAxes: [{
				display: true,
				scaleLabel: {
					display: true,
					labelString: 'Mesec' 
				}
		}],
		yAxes: [{
				display: true,
				ticks: {
					beginAtZero: true,
				}
			}]
	},
	}
});

new Chart("bar-chart-transakcije-broj", {
  type: "bar",
  data: {
    labels: ["<?= $x_values_js ?>"],
    datasets: [{
      backgroundColor: ["<?= $bar_colors_js ?>"],
      data: [<?= $transactions_counter_js ?>]
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: ""
    },
	scales: {
		xAxes: [{
				display: true,
				scaleLabel: {
					display: true,
					labelString: 'Mesec'
				}
		}],
		yAxes: [{
				display: true,
				ticks: {
					beginAtZero: true,
				}
			}]
	},
	}
});
</script>

</body>
</html>