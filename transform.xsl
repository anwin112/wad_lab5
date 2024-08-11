<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ev="http://xyz.com/ev"
                exclude-result-prefixes="ev">

    <!-- Root template that matches the root element -->
    <xsl:template match="/ev:ev">
        <html>
            <head>
                <title>EV Trip Planner Summary</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        background-color: #f0f0f0;
                    }
                    h1 {
                        color: #2a6496;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 20px;
                    }
                    th, td {
                        padding: 10px;
                        border: 1px solid #ddd;
                        text-align: left;
                    }
                    th {
                        background-color: #2a6496;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                </style>
            </head>
            <body>
                <h1>EV Trip Planner Summary</h1>

                <!-- Vehicle Information -->
                <h2>Vehicle Information</h2>
                <table>
                    <tr>
                        <th>Model</th>
                        <th>Range (miles)</th>
                        <th>Battery Capacity (kWh)</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="ev:vehicle/ev:model"/></td>
                        <td><xsl:value-of select="ev:vehicle/ev:range"/></td>
                        <td><xsl:value-of select="ev:vehicle/ev:battery_capacity"/></td>
                    </tr>
                </table>

                <!-- Charging Station Information -->
                <h2>Charging Station Information</h2>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Charger Type</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="ev:charging_station/ev:name"/></td>
                        <td><xsl:value-of select="ev:charging_station/ev:location"/></td>
                        <td><xsl:value-of select="ev:charging_station/ev:charger_type"/></td>
                    </tr>
                </table>

                <!-- Hotel Information -->
                <h2>Hotel Information</h2>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Location</th>
                        <th>Rating</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="ev:hotel/ev:name"/></td>
                        <td><xsl:value-of select="ev:hotel/ev:location"/></td>
                        <td><xsl:value-of select="ev:hotel/ev:rating"/></td>
                    </tr>
                </table>

                <!-- Feedback -->
                <h2>Feedback</h2>
                <table>
                    <tr>
                        <th>Comment</th>
                        <th>Rating</th>
                        <th>Feedback Type</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="ev:feedback/ev:comment"/></td>
                        <td><xsl:value-of select="ev:feedback/ev:rating"/></td>
                        <td><xsl:value-of select="ev:feedback/ev:feedback_type"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
