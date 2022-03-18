
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>GET TIME</title>
    <style type="text/css">
      select {
        width: 200px;
        height: 20px;
      }
    </style>
  </head>
  <body>
  <h2>Current Local Times Aroung The World</h2>
  <span>Current time in ${city}: <strong>${date}</strong></span>
  <form id="locate" method="post">
    <select name="city" onchange="document.getElementById('locate').submit()">
      <option value="Asia/Ho_Chi_Minh" selected>Select a city</option>
      <option value="Asia/Ho_Chi_Minh">Ho Chi Minh</option>
      <option value="Singapore">Singapore</option>
      <option value="Asia/Hong_Kong">Hong Kong</option>
      <option value="Asia/Tokyo">Tokyo</option>
      <option value="Asia/Seoul">Seoul</option>
      <option value="Europe/London">London</option>
      <option value="Europe/Madrid">Madrid</option>
      <option value="America/New_York">New York</option>
      <option value="Australia/Sydney">Sydney</option>
      <option value="Argentina/Buenos_Aires">Buenos Aires</option>
    </select>

  </form>
  </body>
</html>
