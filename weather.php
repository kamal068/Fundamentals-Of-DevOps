<?php
	function getCurrentDatetime() {
    		return date('Y-m-d H:i:s');
	}
	function getAppVersion() {
    		return "version"; // Replace with your actual version
	}
	function getWeatherData() {
    		$api_key = "ecb7fd668b24589b7433110fad1d8ec1"; // Replace with your actual API key
    		$city = "Dhaka";
    		$api_url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api_key";
       		$response = file_get_contents($api_url);

    		if ($response === false) {
        		return "Error fetching weather data";
    		}

    		$data = json_decode($response, true);

    		if (isset($data['main']['temp'])) {
        		$temperature = $data['main']['temp'];
        		return "Weather in $city: Temperature - $temperature °C";
    		} else {
        		return "Error parsing weather data";
    		}
	}
	function mainEndpoint() {
    		$result = array(
        	'hostname' => getHostname(),
        	'datetime' => getCurrentDatetime(),
        	'version' => getAppVersion(),
        	'weather' => getWeatherData()
    	);
    		header('Content-Type: application/json');
    		echo json_encode($result, JSON_PRETTY_PRINT);
	}
	mainEndpoint();

?>

