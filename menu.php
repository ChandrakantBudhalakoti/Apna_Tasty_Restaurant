<!DOCTYPE html>
<html>
<head>
    <title>Apna Tasty Restaurant Menu - List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <!--========== FAVICON ==========-->
     <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap");

      * {
        font-family: "Poppins", sans-serif;
      }
      .card {
        height: 100%;
        padding: 10px;
      }

      .card-body {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
      }

      .card-text {
        margin-top: auto;
      }

      .card-img-top {
        height: 350px; /* Adjust this as needed for uniformity */
        object-fit: cover;
      }
    </style>
</head>
<body>
    <h2 style="text-align: center; color: #069c54; font-weight: 800">
        Apna Tasty Restaurant Menu - List
    </h2>
    <br />
    <div class="container">
        <div class="row">
            <?php
            // Database connection details
            $servername = "localhost";
            $username = "root"; 
            $password = ""; 
            $dbname = "menu_db"; 

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Query to retrieve menu items from the database
            $sql = "SELECT * FROM menu";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='col-md-4'>";
                    echo "<div class='card'>";
                    echo "<img src='" . $row["image_url"] . "' class='card-img-top' alt='" . $row["name"] . "' style='border-radius: 16px'>";
                    echo "<div class='card-body'>";
                    echo "<h5 class='card-title'>" . $row["name"] . "</h5>";
                    echo "<p class='card-description'>" . $row["description"] . "</p>";
                    echo "<p class='card-text'>₹" . $row["price"] . "</p>";
                    echo "</div></div></div>";
                }
            } else {
                echo "0 results";
            }

            $conn->close();
            ?>
        </div>
    </div>
    <!-- ========== SCROLL REVEAL ========== -->
    <script src="https://unpkg.com/scrollreveal"></script>
    <script>
      /*==================== SCROLL REVEAL ANIMATION ====================*/
      const sr = ScrollReveal({
        origin: "top",
        distance: "30px",
        duration: 2000,
        reset: true,
      });

      sr.reveal(`.card`, {
        interval: 200,
      });
    </script>
</body>
</html>