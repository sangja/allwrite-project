<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Hahmlet:wght@500&display=swap" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script> -->
    <script src="/resources/splide-3.2.6/dist/js/splide.min.js"></script>
    <link href="/resources/splide-3.2.6/dist/css/themes/splide-default.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"><img src="/resources/img/logo.svg" style="width:150px" /></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i id="menu-icon" class="fa fa-bars"></i>

              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav" style="margin: 0 auto; align-items: flex-end;">
                  <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Writing</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">Publishing</a>
                  </li>
                </ul> 
                <ul class="navbar-nav" style="align-items: flex-end;">  
                  <li class="nav-item">
                    <a class="nav-link disabled">LogIn</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">SignIn</a>
                  </li> 
                </ul>
              </div>
            </div>
          </nav>
    </header>
    <content>
       <div class="splide-position">
            <div class="splide">
                <div class="splide__track">
                    <ul class="splide__list">
                        <li class="splide__slide">
                            <div class="splide-container">
                                <div class="slide-section01">
                                    <p>?????? ????????? ???????????? ??????<br>?????? ???????????? ????????? ?????? ???</p>
                                </div>
                                <div class="slide-section02"><img src="/resources/img/logo_w.svg"></div>
                                <div  class="slide-section03">
                                    <img src="/resources/img/img01.jpg"/>
                                </div>
                                <button class="slide-btn" type="submit">????????? ???????????? Allwrite ?????? ????????????</button>
                            </div>
                        </li>
                        <li class="splide__slide">
                            <div class="splide-container">
                                <div class="slide-section01" style="width: 480px !important">
                                    <p>????????? ???????????? ??????????????? ?????? ????????? ??? ?????????.<br>
                                    ????????? ?????????????????? ????????? ?????? ?????? ???????????????.</p>
                                </div>
                        
                                <div  class="slide-section03">
                                    <img src="/resources/img/img02.svg"/>
                                </div>
                                <button class="slide-btn" type="submit">????????? ???????????? Allwrite ?????? ????????????</button>
                            </div>
                        </li>     
                        <li class="splide__slide">
                            <div class="splide-container">
                                <div class="slide-section01" style="width: 380px !important">
                                    <p>?????? ???????????? ???????????????, E-Book??????<br>?????? ????????????<br>
                                    ??????, ?????? ???????????????.</p>
                                </div>
                                <div  class="slide-section03" style="right:117px !important">
                                    <img src="/resources/img/img03.svg" style="width:80%;"/>
                                </div>
                                <button class="slide-btn" type="submit">????????? ???????????? Allwrite ?????? ????????????</button>
                            </div>
                        </li>             
                    </ul>
                </div>
            </div>
        </div> 


    <div class="content-background">   
        <div class='line'></div>
        <hr><hr><hr><hr><hr>
        <hr><hr><hr><hr><hr>
        <div class="dot1">
            <img src="/resources/img/dot.svg"/>
        </div>
        <div class="comma1">
            <img src="/resources/img/comma.svg"/>
        </div>
        <div class="dot2">
            <img src="/resources/img/dot.svg"/>
        </div>       
        <div class="type-container">
            <img class="type" src="/resources/img/typewriter.png">
        </div>
    </div> 
    </content>
    <footer>
        <div class="footer-container">
            <div class="footer-box">
                <ul class="footer-list">
                    <li>Agreement</li>
                    <li>About us</li>
                    <li>Premium</li>
                </ul>
                <small>Copyright@whys allrights resrved.</small>
            </div>
        </div>

    </footer>

    <style>
        header{
            height: 14.5vh;
        }

        .container-fluid{
            padding: 0 30px;
        }
        .navbar-toggler {
            border: none !important;
            outline:none !important;
        }

        .navbar-toggler:focus{
            box-shadow: none;           
        }

        content{
            width: 100vw;
            height: 70vh;
        }

        .content-background{
            position: relative;
        }

        .dot1, .dot2, .comma1{position:absolute;}
        .dot1{top: 100px; width: 100px; left: 50px;}
        .dot2{top: 50%; width: 50px; right: 0;}
        .comma1{bottom: -14%; width: 30px; left: 29%;}
        .navbar {
            z-index: 1;
            padding-top: 25px;
            padding-bottom: 3%;
            border-bottom: 10px solid gray;  
        }
        hr{
            margin: 60px 0;
        }

        .splide{
            z-index: 1;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        .splide__track {width: 800px;}
        .splide-container{
            margin: 0 auto;
            display: flex;
            background-color: #000;
            width: 600px;
            height: 280px;
            color: #fff;
            justify-content: center;
            align-items: center;
        }

        .slide-section01 {width: 300px; position:absolute; left:145px; top: 85px;}
        .slide-section01 p{font-family: 'Hahmlet', serif; font-size: 1.4rem; line-height: 1.4;}
        .slide-section02 {width: 180px; position:absolute; left:448px; top:105px;}
        .slide-section03 {width: 140px; position: absolute; right:0px;}
        .slide-section03 img {width: 100%}
        .slide-btn {width: 270px; height: 41px; color: #fff; background-color:#1AA1A1; border-top-right-radius: 20px; border-bottom-left-radius: 20px; position: absolute;left:145px; bottom: 49px; font-size: 0.8rem; border:none;}

        .splide__pagination {
            display: inline-grid !important;
            bottom: 7.5rem;
            left: 55px !important;
        }

        .splide__pagination__page.is-active {background: #000 !important;}
        .splide__arrows{display: none !important;}

        .type{
            width: 10%;
            position: absolute;
            text-align: right;
            bottom: -9vh;
            right: 1vw;  
            -webkit-box-reflect: below -2.5vw 
            -webkit-gradient(linear, left top, left bottom, from(transparent),
            color-stop(0.45, transparent), to(rgba(255,255,255,0.25)));       
        }

        footer{
            height: 16.4vh;
            background-color: #D9D9D7;
        }

        .footer-container {
            padding-top: 3%;
        }

        .footer-list{
            min-width: 310px;
            display: flex;
            width: 15%;
            justify-content: space-between;
            margin: 0 auto;
        }

        .footer-list li {
            padding: 8px 16px;
            list-style: none;
            background-color: #000;
            color: #fff;
            border-radius: 30px;
            font-size: 0.8rem;

        }
        small {
            width: 300px;
            display: block;
            margin: 20px auto;
            transform: translateX(18%);
        }

    </style>



    <script>
        // new Splide('.splide').mount();

        new Splide('.splide', {
            type: 'loop',
            autoplay:true,
            interval: 5000
        }).mount();





        $('.navbar-toggler').on('click', function(){
            var menuIcon = $("#menu-icon");
            menuIcon.toggleClass('fa fa-bars')
            menuIcon.toggleClass('fa fa-times')

            console.log("???????")
        })




    </script>
</body>
</html>