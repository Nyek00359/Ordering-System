<?php
require_once "connect.php";
require_once "functions.php";
if (isset($_GET['status'])) {
    $date = date('Y-m-d H:i');
    $stmt = $conn->prepare("SELECT * FROM order_slip INNER JOIN product ON order_slip.product_id = product.product_id INNER JOIN order_price ON order_slip.price_id = order_price.price_id  WHERE (username = ? OR email=?) AND `status`=?");
    $stmt->bind_param('sss', $_SESSION['userid'], $_SESSION['userid'], $_GET['status']);
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    $date = date('Y-m-d H:i');
    $stmt = $conn->prepare("SELECT * FROM order_slip INNER JOIN product ON order_slip.product_id = product.product_id INNER JOIN order_price ON order_slip.price_id = order_price.price_id  WHERE username = ? OR email=?");
    $stmt->bind_param('ss', $_SESSION['userid'], $_SESSION['userid']);
    $stmt->execute();
    $result = $stmt->get_result();
}

if (!$result) {
    die("Invalid query" . $conn->error);
}
while ($row = $result->fetch_assoc()) {
    if (isset($_GET['status'])) {
        if ($_GET['status'] == '0') {
            $option = "
            <a  class='btn btn-danger btn-sm' href= '?deleteOrder=" . $row["order_id"] . "' id='Delete' name='Delete' > Cancel </a>";
        } else {
            $option = " ";
        }
    } else {
        $option = "";
    }
    echo "
    
            <tr>
                <td colspan='2'>
                <div class='row'>
                    <div class='col-12 col-sm-12 col-md-6'>
                    <img class='img-fluid offset-1' style='height:180px;width:auto;' src='../assets/img/poster/" . $row["poster"] . "'>
                    </div>
                    <div  class='text-break text-center col-1 col-md-6 productname'>
                    <strong>" . $row["product"] . "</strong>
                    </div>
                </td>
                <td >" . $row["Quantity"] . "</td>
                <td >" . $row["price"] . "</td>
                <td >" . $row["Quantity"] * $row["price"] . "</td>
                <td>
                    " . $option . "
                </td>
            </tr>

            ";

}
if (isset($_GET['deleteOrder'])) {
    $id = $_GET['deleteOrder'];
    $status = $_GET['status'];
    $status = (int) $status + 4;
    $id = $_GET['deleteOrder'];
    orderStatus($conn, $status, $id);
    echo "<script>alert('Order Cancelled');";
    echo "setTimeout(function(){window.location = 'index.php?title=" . $title . "';}, 10);</script>";
}

hideTags('productname', 1080);
?>