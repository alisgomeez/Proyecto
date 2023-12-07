<?php include "includes/header.php";?>

<main class="container p-4">
    <div class="row">
        <div class="col-md-4">
            <!--Messages-->
            <?php
            if(isset($_SESSION['message'])){?>
            <div class="alert alert-<?=$_SESSION['message_type']?> alert-dismissible fade show" role="alert">
                <?= $_SESSION['message']?>
                <button class="close" data-dismiss type="button"></button>
            </div>




            }
            ?>
        </div>
    </div>
</main>

 <?php include "includes/footer.php"; ?>