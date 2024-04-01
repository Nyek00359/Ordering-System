<?php

require_once "connect.php";
require_once "functions.php";

//get the title of the page 
if(isset($_GET['title'])){
    $add ="";
    if(isset($_GET["category"])){$add = "&category=".$_GET["category"];}
    if(isset($_GET["hiddenitems"])){$add = "&hiddenitems=".$_GET["hiddenitems"];}
$title =$_GET['title'].$add;}
//filter by category
if (isset($_GET['category'])) {
    $category = $_GET['category'];
    $stmt = $conn->prepare("SELECT * FROM product WHERE category='$category' AND `hidden`='0' ");
    $stmt->execute();
    $result = $stmt->get_result();
}
//display hidden items
 elseif (isset($_GET['hiddenitems'])) {
    $stmt = $conn->prepare("SELECT * FROM product WHERE `hidden`='1' ");
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    $stmt = $conn->prepare("SELECT * FROM product WHERE `hidden`='0' ");
    $stmt->execute();
    $result = $stmt->get_result();
}
if (!$result) {
    die("Invalid query" . $conn->error);
}
while ($row = $result->fetch_assoc()) {
    if (checkStock($conn,$row['product_id'])==0||checkStock($conn,$row['product_id'])==Null){
        $disabled ="hidden";
    } else {
        $disabled ="";
    }
    if($row['hidden']==1){
        $option="<a $disabled  class='fas fa-eye btn btn-coffee btn-xl' href= '?title=" . $title . "&showproductid=" . $row["product_id"] . "'onclick=\"javascript: return confirm('Please confirm this product will be shown');\" id='Show' name='Show' ></a> ";
    }
    else{
        $option="<a $disabled class='fas fa-eye-slash btn btn-secondary btn-xl' href= '?title=" . $title . "&hideproductid=" . $row["product_id"] . "'onclick=\"javascript: return confirm('Please confirm this product will be hidden');\" id='Hide' name='Hide' ></a> ";
    }
    echo "
            <tr>
            <td class='text-center'><img class=' img-fluid align-center' style='height:150px;width:150px;' src='../assets/img/poster/" . $row["poster"] . "'></td>
                <td class='text-sm'>" . $row["product"] . "</td>
                <td class='text-center'>
                    <a class='btn btn-primary btn-xl fa fa-cogs' href='?title=" . $title . "&updateproductid=" . $row["product_id"] . "' data-bs-toggle='modal' data-bs-target='#updateProduct" . $row["product_id"] . "'id='Update' name='Update'></a>
                     <a class='btn btn-warning btn-xl fa fa-image' href='?title=" . $title . "&updateposterid=" . $row["product_id"] . "' data-bs-toggle='modal' data-bs-target='#update-poster" . $row["product_id"] . "'id='Update' name='Update'></a>
                     ".$option."
                    <a  class='fas fa-trash btn btn-danger btn-xl' href= '?title=" . $title . "&deleteproductid=" . $row["product_id"] . "'onclick=\"javascript: return confirm('Please confirm deletion');\" id='Delete' name='Delete' ></a>
                </td>

            </tr>

            ";

}
//get the delete id 
if (isset($_GET['deleteproductid'])) {
    $id = $_GET['deleteproductid'];
    //prepare stmt 
    $stmt = $conn->prepare("SELECT * FROM product WHERE product_id = ? ");
    //bind parameters
    $stmt->bind_param("i", $id);
    //execute query
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();
    $stmtPicture = $row['poster'];
    //delete previous video and posters
    unlink('../assets/img/poster/' . $stmtPicture);
    deleteproductlist($conn, $id);
}
//get the hide id
if (isset($_GET['hideproductid'])) {
    $hide = '1';
    $id = $_GET['hideproductid'];
    productStatus($conn,$hide,$id);
    echo "<script>setTimeout(function(){window.location = '../Admin/index.php?title=".$title."';}, 10);</script>";

}
//get the show id
if (isset($_GET['showproductid'])) {
    $show = '0';
    $id = $_GET['showproductid'];
    productStatus($conn,$show,$id);
    echo "<script>setTimeout(function(){window.location = '../Admin/index.php?title=".$title."';}, 10);</script>";
}


?>