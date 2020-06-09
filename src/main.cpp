#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>

#define AP_SSID "esp8266test"
#define CLIENT_TIMEOUT 2000

ESP8266WebServer server(80);

void serve_page() {
    Serial.println("Request received...");
    server.send(200, "text/html", "<html><body>HELLO WORLD</body></html>");
}

void setup()
{
    Serial.begin(115200);
    Serial.println();

    Serial.print("Setting soft-AP ... ");
    Serial.println(WiFi.softAP(AP_SSID) ? "Ready" : "Failed!");

    Serial.print("Soft-AP IP address = ");
    Serial.println(WiFi.softAPIP());

    server.on("/", serve_page);
    server.begin();
}

void loop()
{
    server.handleClient();
}
