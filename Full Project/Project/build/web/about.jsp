<%-- 
    Document   : about
    Created on : 17 Oct, 2022, 4:11:23 PM
    Author     : nisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About Us Section</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
             clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
        </style>
        
    </head>	
    <body>
        
        <%@include file="normal_navbar.jsp" %>
        
        <div class="section">
            <div class="container">
                <div class="content-section">
                    <div class="title">
                        <h1>About Us</h1>
                    </div>
                    <div class="content">
                        <h3>Charotar Science and Technology University</h3>
                        <p>Charotar University of Science and Technology – CHARUSAT has been conceived by Shri Charotar Moti Sattavis Patidar Kelavani Mandal to put India on global education map by making Charotar – the Land of Sardar Patel, a Global Education Hub.

                            Kelavani Mandal, established in 1994, is a non-profit premier trust of India that works with the aim to provide social service through education. The organization has a social lineage of more than 125 years.</p>
                        <div class="button">
                            <a href="">Read More</a>
                        </div>
                    </div>
                    <div class="social">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.instagram.com/t_nishant_1/"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="image-section">
                    <img src="img/img one.jpeg">
                </div>
            </div>
        </div>


    </body>
</html>
