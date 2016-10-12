<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
		$(document).ready( function(){
				$("Button").click( function()
				{
					var str = $(this).text();
					if(equals(str,"새로고침"))
					{
						location.reload();
					}
					else if(equals(str,"빨간색"))
					{
						$("body").css("background-color","red");
					}
					else if(equals(str,"파란색"))
					{
						$("body").css("background-color","blue");
					}
					else if(equals(str,"랜덤"))
					{
							var random = randomColor();
							$("body").css("background-color",random);	
							$("#color").html("color number = " + random);
							$("#color").css("color","white");
					}
				});
		});
		function equals(str,str2)
		{
			if(str == str2)
				return true;
			else
				return false;
		}
		function randomColor()
		{
		
		   var color = "#";
		   
			while(color.length < 7)
			{
				var num = Math.floor(Math.random() * 16);
				
				if(num == 10)
				{
					color += "A";
				}
				else if(num == 11)
				{
					color += "B";
				}
				else if(num == 12)
				{
					color += "C";
				}
				else if(num == 13)
				{
					color += "D";
				}
				else if(num == 14)
				{
					color += "E";
				}
				else if(num == 15)
				{
					color += "F";
				}
				else
				{
					color += num;
				}
			}
			
			return color;
		}
	</script>
<title>Insert title here</title>
</head>
<body>

  <span>Hello ${msg}</span><br/>
  <p id="page">The time on the server is ${serverTime}.</p><br/>
  <br/><br/><br/>
  <p>
  	<Button>새로고침</Button>
  	<Button>빨간색</Button>
  	<Button>파란색</Button>
  	<Button>랜덤</Button>
  </p>
  <p id="color">
  </p>
  <div style="border:1px solid blue">
  	&copy; DIT 201212711 - 김영진
  </div> 
  
</body>
</html>


