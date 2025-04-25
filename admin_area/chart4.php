

 
   <?php
    $naslov ;
    $vrednost_transakcija = [];
    $title = [];
    $jsonArray  = [];
    
         $db = mysqli_connect('localhost','root','','ecomerc3');
        $sql = "SELECT product_id as product_titlee,
        product_title as product_title,
         count(qty) as total_orders 
            FROM `pending_orders`
            GROUP BY product_id
            ORDER BY total_orders DESC
            LIMIT 5";

        $result = mysqli_query($db, $sql);

        
        while ($row = mysqli_fetch_assoc($result)) {
	      
	        $vrednost_transakcija[] = $row['total_orders'];
	        $naslov[] = $row['product_titlee'];
            $jsonArray[] = json_encode($row['product_title']);
            

};


$nazivii = implode(', ', $jsonArray);


//$nazivi = implode(', ', $title);


$y_values_js = implode(', ', $vrednost_transakcija);
$transactions_counter_js = implode(', ', $naslov);


$total_ord = [];

    $sqlll = "SELECT count(qty) as total_orders 
            FROM `pending_orders`
           ";

$ress = mysqli_query($db, $sqlll);
while ($row = mysqli_fetch_assoc($ress)) {

    $total_ord[] = $row['total_orders'];
};
 

$ukupno_transakcija = implode(', ', $total_ord);



$ostale_transakcije =  array_sum($total_ord) - array_sum($vrednost_transakcija);

    ?>




    <!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>



<body>

<canvas id="myChart" style="width:100%;max-width:600px"></canvas>

<script>

const dataset1 = [<?= $y_values_js ?> , <?= $ostale_transakcije ?>]
const dataset2 =[<?= $nazivii ?>, 'Ostale transakcija'];


var xValues = dataset2;
var yValues = dataset1;
var barColors = [
  "#b91d47",
  "#00aba9",
  "#2b5797",
  "#e8c3b9",
  "#1e7145"
];

new Chart("myChart", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    title: {
      display: true,
      text: "5 Najprodavanijih proizvoda"
    }
  }
});
</script>

</body>
</html>
