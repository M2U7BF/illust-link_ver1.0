<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stick+No+Bills:wght@500&display=swap" rel="stylesheet">
</head>

<body>
    <header></header>
    <main>
        <h1 class="topTitle">illust-link</h1>
        <ul id="takenPhoto_List" class="takenPhoto_List">
            <!-- <li class="takenPhoto_ListItem"><img class="takenPhoto" src="" alt="待機中"></li> -->
        </ul>
        <div class="shootingbuttonContainer">
            <label for="shootingbutton" class="shootingbutton">撮影する</label>
            <input id="shootingbutton" type="file" accept="image/*" capture="environment">
        </div>
    </main>
    <footer>
        <p class="copyrightText"></p>
    </footer>
    <script>
    	var input = document.querySelector('input[type=file]');
        var imgList = document.getElementById('takenPhoto_List');
        var imgListItem = document.createElement('li');
            imgListItem.setAttribute('class','takenPhoto_ListItem');

        input.onchange = function (){
            var file = input.files[0];

            displayAsImage(file);
        }
    	
        function displayAsImage(file) {
            var num = 0;
        
            var imgURL = URL.createObjectURL(file),
             img = document.createElement('img');

            img.onload = function() {
                URL.revokeObjectURL(imgURL);
        };

        imgList.appendChild(imgListItem);
        
        img.src = imgURL;
        img.setAttribute('class','takenPhoto');

        imgListItem.appendChild(img);
        }
    </script>
</body>
</html>