<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/homeComprador.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>MArtket | Comprador</title>

    <input type="hidden" id="username" value="<%=request.getAttribute("username")%>">
    <input type="hidden" id="fcoins" value="<%=request.getAttribute("Fcoins")%>">
</head>



<body>
    <%String username = (String) request.getAttribute("username");%>
    <script type="text/javascript">
        var username = document.getElementById("username").value;
        var fcoins = document.getElementById("fcoins").value;
        localStorage.setItem('username',username);
        alert('Su saldo de Fcoins es '+fcoins+);
    </script>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid" style="background-color: #a5b2c2;">
                <img class="logo" style="width: 80px; height: 80px;"
                     src="./Assets/Blanco%20y%20Negro%20Montana%20Limpio%20y%20Moderno%20Iglesia%20Logotipo.png" alt="">

                </img>
                <a class="navbar-brand" style="padding-left:  10px; ;" href="./index.html">MArtket</a>

                <form class="d-flex" style="width: 650px; padding-left: 50px; ">
                    <input class="form-control me-2" type="search" placeholder="Artistas, diseños, NFTs..."
                        aria-label="Search">
                    <button class="btn btn-outline-dark" type="submit">Buscar</button>
                </form>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"> </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item" style="padding-left: 50px;">
                            <a class="nav-link active" href="artinfo">Explorar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="FCoins.jsp">FCoins</a>
                        </li>



                        <div class="registro" style="padding-left: 50px; margin-top: 8px;">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <label class="form-label">BIENVENIDO <%=username%></label>
                            </ul>
                        </div>
                        <div class="logout">
                            <a href="./index.html" class="btn btn-outline-dark">Logout</a>
                        </div>
                    </ul>

                </div>
            </div>
        </nav>
    </header>
    <!--Carosuel bootstrap-->
    <div class="carousel">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./Assets/fondoIntro2.0.jpg" style="height: 550px; width: 1550;" class="d-block w-100"
                         alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>BIENVENIDO A MARTKET!!!</h5>
                        <p>Un lugar para explorar en el mundo del arte digital.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="./Assets/carouselImg2.jpg" style="height: 550px; width: 1550;" class="d-block w-100"
                         alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Compra y Venta</h5>
                        <p>Puedes comprar otras creaciones por una cantidad de FCoins y agregarlas a tus colecciones, o
                            vender tu arte a otras personas!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="./Assets/carouselImg3.jpg" style="height: 550px; width: 1550;" class="d-block w-100"
                         alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Explora y comparte</h5>
                        <p>Puedes explorar y conocer el arte de otros usuarios, mientras mas likes tenga una pieza, mas
                            gente prodrá verla.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!--end carousel-->
    <div style="margin-top: 40px;  justify-content: space-around;" class="cards-container">
        <div class="container" style="margin-top: 40px; justify-content: space-around;">
            <div class="row" style="margin-top: 40px; justify-content: space-around;">
                <div class="col" style="padding-right: 10px; justify-content: space-around;">
                    <div class="card" style="width: 18rem;">
                        <img src="https://images.unsplash.com/photo-1632516643720-e7f5d7d6ecc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fGRpZ2l0YWwlMjBhcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Sky</h5>
                            <p class="card-text">Coleccion basado en paisajes digitales. Hecho por <a href="#"
                                    style="text-decoration: none;">@Rasbel</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>18836 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://images.unsplash.com/photo-1593073637686-cc056c151c1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fGRpZ2l0YWwlMjBhcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">TechLines</h5>
                            <p class="card-text">Coleccion basado en ambientes inspirados en las redes tecnologicas con
                                la naturaleza. Hecho por: <a href="#" style="text-decoration: none;">@LP</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>74653 Likes</label>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://images.unsplash.com/photo-1593072188319-5006e116315e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGRpZ2l0YWwlMjBhcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">ColorSplash</h5>
                            <p class="card-text">Coleccion de pintura digital. Hecho por <a href="#"
                                    style="text-decoration: none;">@MrMusculo</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>36483 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://images.unsplash.com/photo-1641391503184-a2131018701b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGRpZ2l0YWwlMjBhcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Fresh Cyberpunk art</h5>
                            <p class="card-text">Coleccion de ambiente y estilo de Cyberpunk con toques elegantes y
                                tranquilos. Hecho por <a href="#" style="text-decoration: none;">@ElYefelson</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>9272 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://lh3.googleusercontent.com/eJhYpN2aN15_moOk-SeSbiL6BXmzyP-qfFbvcg_8G7F7nnVpCJcuxfP4mXqjzQlQLt-HWevQFY89CLaW7hHdVrcBsLfs1VOWvuQPgw=h200"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">GameSkinsPack</h5>
                            <p class="card-text">Coleccion de personajes de juegos en un estilo cartoon, Hecho por: <a
                                    href="#" style="text-decoration: none;">@SavathunLolXDXDXD</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>7302 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://lh3.googleusercontent.com/kDLWx47_ENkVJGcPluhrLPmzSyn1yG-nlc4GnqGK1u2smwCwsocIq7XJKh2ekIyPywccOszDIUMKqVUD6taKIBIp8O3wrD6k-UUQ3g=h200"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Silver Ballet</h5>
                            <p class="card-text">Coleccion de arte sobre las poses mas emblematicas y hermosas del
                                ballet. Hecho por <a href="#" style="text-decoration: none;">@GatoDron</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>7231 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://lh3.googleusercontent.com/RBX3jwgykdaQO3rjTcKNf5OVwdukKO46oOAV3zZeiaMb8VER6cKxPDTdGZQdfWcDou75A8KtVZWM_fEnHG4d4q6Um8MeZIlw79BpWPA=h200"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Mono</h5>
                            <p class="card-text">Mono. Hecho por <a href="#" style="text-decoration: none;">@Mono</a>
                            </p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>2093 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img src="https://lh3.googleusercontent.com/Aew7Ksza7n7EZM9A-luCfCQ2bexssMH3Jq7GOMYMxT3ZnOiTWndCZe_Q0GrD84NLnBUlGEPjgjkK0QSA_746sO2kX9a0XownHlD_mg=h200"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Gatos Basados</h5>
                            <p class="card-text">Coleccion de gatos basados con vestimenta basada. Hecho por <a href="#"
                                    style="text-decoration: none;">@ELBasado</a></p>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-heart" viewBox="0 0 16 16">
                                    <path
                                        d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                </svg></button>
                            <button href="#" style="background-color: #a5b2c2;" class="btn btn-outline-dark"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                    class="bi bi-bookmark-plus" viewBox="0 0 16 16">
                                    <path
                                        d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    <path
                                        d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z" />
                                </svg></button>
                            <div class="divLikes">
                                <label>5374 Likes</label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>

</html>