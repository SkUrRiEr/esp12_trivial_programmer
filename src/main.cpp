#include <Arduino.h>
#include <ESP8266WiFi.h>

#define AP_SSID "esp8266test"
#define CLIENT_TIMEOUT 2000

WiFiServer server(80);

void setup()
{
    Serial.begin(115200);
    Serial.println();

    Serial.print("Setting soft-AP ... ");
    Serial.println(WiFi.softAP(AP_SSID) ? "Ready" : "Failed!");

    Serial.print("Soft-AP IP address = ");
    Serial.println(WiFi.softAPIP());
}

void loop()
{
    WiFiClient client = server.available();

    if (!client)
    {
        return;
    }

    Serial.print("New Client");

    unsigned long startTime = millis();
    char p = 'x';

    while (client.connected() && millis() - startTime <= CLIENT_TIMEOUT)
    {
        if (!client.available())
        {
            continue;
        }

        char c = client.read();

        // Wait for two LFs in a row
        if (c == '\n' && p == '\n')
        {
            // Header
            client.println("HTTP/1.1 200 OK");
            client.println("Content-type:text/html");
            client.println("Connection: close");
            client.println();

            // Content
            client.println("<html><body>HELLO WORLD</body></html>");
            client.println();

            // All done, kill the connection
            break;
        }

        p = c;
    }
    client.stop();
    Serial.println(" => page sent.");
}
