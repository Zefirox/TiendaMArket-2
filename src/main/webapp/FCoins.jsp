<%@ page import="org.w3c.dom.html.HTMLScriptElement" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="./css/FCoins.css">
  <title>FCoins|Comprar</title>
</head>

<body>
  <div class="container">


    <form class="FCoins" action="fcoin" method="post">

      <div class="mb-4">
        <label class="form-label">Recargar</label>
        <div class="input-group mb-3">
          <span class="input-group-text">$</span>
          <input type="text" name="fcoins" class="form-control" aria-label="Dollar amount (with dot and two decimal places)">
        </div>
      </div>
      <div id="emailHelp" class="form-text">Ingresa la cantidad de FCoins que quieres recargar</div>
      <div id="emailHelp" class="form-text">1 FCoin = 1$</div>
      <input type="hidden" name="username" id="username">
      <button type="submit" class="btn btn-outline-dark">Submit</button>
      <button type="submit" formaction="./homeComprador.jsp" class="btn btn-outline-dark">Volver</button>
    </form>
  </div>
  <script type="text/javascript">
    username.value = localStorage.getItem('username');
    fcoins.value = localStorage.getItem('fcoins');
  </script>
</body>

</html>