<?php

include "db.php";   

$query = "SELECT * FROM prodotti";
$result = $conn->query($query);

if($result->num_rows > 0){

    function Crea_Card (){
        echo "<div class='col-md-4'>
                    
        <div class='card my-3' style='width: 18rem;'>
            <img src='https://img.freepik.com/premium-photo/tomato-with-sunglasses-pair-sunglasses-sits-pink-background_916191-1872.jpg?w=2000' class='card-img-top img-fluid' alt='...'>
            <div class='card-body'>
                <h5 class='card-title'>" . $row['NomeProdotto'] . "Card title</h5>
                <p class='card-text'>" .$row['Descrizione'] . "</p>
            </div>
            <ul class='list-group list-group-flush'>
                <li class='list-group-item'>An item</li>
                <li class='list-group-item'>A second item</li>
                <li class='list-group-item'>A third item</li>
            </ul>
            <div class='card-body'>
                <a href='#' class='card-link'>Card link</a>
                <a href='#' class='card-link'>Another link</a>
            </div>
        </div>
    </div>";
    }
}




?>