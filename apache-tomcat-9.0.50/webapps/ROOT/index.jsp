
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
  </head>
  <body>
 <h2>Currency Converter</h2>
  <form action="/convert" method="post">
    <label>
      Rate:
    </label>
    <br/>
      <label>
          <input type="text" name="rate" placeholder="RATE" value="22000"/>
      </label><br/>
    <label>USD: </label><br/>
    <input type="text" name="usd" placeholder="USD" value="0"/><br/>
    <input type="submit" id="submit" value="converter"/>
  </form>
  </body>


</html>
