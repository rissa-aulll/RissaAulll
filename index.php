<?php
$con = mysqli_connect("localhost", "root", "", "googlemaps");
if (mysqli_connect_errno()) {
    echo "failed to connect " . mysqli_connect_errno();
    exit();
}

$query = "SELECT * FROM data_location";
$data = mysqli_query($con, $query);
// var_dump($data);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Google Maps</title>
    <style>
        /* Always set the map height explicitly to define the size of the div
 * element that contains the map. */
        #map {
            height: 100%;
        }

        /* Optional: Makes the sample page fill the window. */
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
</head>

<body>
    <div id="map"></div>
    <script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
    <!-- Replace the value of the key parameter with your own API key. -->
    <script>
        var labels = [];
        var locations = [];
        <?php
        while ($d = mysqli_fetch_array($data)) {
        ?>

            labels.push("<?= $d['desc']; ?>");
            locations.push({
                lat: <?= $d['lat']; ?>,
                lng: <?= $d['lon']; ?>
            });

        <?php
        }
        ?>

        function initMap() {

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 3,
                center: {
                    lat: -28.024,
                    lng: 140.887
                }
            });

            // Create an array of alphabetical characters used to label the markers.

            // Add some markers to the map.
            // Note: The code uses the JavaScript Array.prototype.map() method to
            // create an array of markers based on a given "locations" array.
            // The map() method here has nothing to do with the Google Maps API.
            var markers = locations.map(function(location, i) {
                return new google.maps.Marker({
                    position: location,
                    label: labels[i % labels.length]
                });
            });

            // Add a marker clusterer to manage the markers.
            var markerCluster = new MarkerClusterer(map, markers, {
                imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
            });
        }

        var markerCluster = new MarkerClusterer(map, markers, {
            imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
        });
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCBJzHkpgPrSgtx-aTqyFRq5_KNE1y9tkk&callback=initMap">
    </script>
    <script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
</body>

</html>
