<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="./assets2/css/main.css" />
<noscript>
	<link rel="stylesheet" href="./assets2/css/noscript.css" />
</noscript>
<link rel="stylesheet" href="./assets/css/CSS.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body class="is-preload">
	<div id="wrapper">
		<div id="bg"></div>

		<div id="main">

			<!-- Header -->

			<header id="header">
				<h1>옴 &nbsp; 서 &nbsp; 감 &nbsp; 서</h1>
				<a href="areaJN">
					<button type="button" class="delbtn" onclick="">Welcome</button>
				</a>


			</header>

			<!-- Footer -->
			<footer id="footer">
				<i id="foot" class="fas fa-light fa-shoe-prints fa-rotate-270 fa-lg" style="color: rgb(0, 0, 0)"></i> <span class="copyright">&nbsp
					#김권민 #왕지강 #남하은 #주영래 #장이수<a href="http://html5up.net"></a>
				</span>
			</footer>

		</div>
	</div>

	<script>
		window.onload = function() {
			document.body.classList.remove('is-preload');
		}
		window.ontouchmove = function() {
			return false;
		}
		window.onorientationchange = function() { 
			document.body.scrollTop = 0;
		}
	</script>

</body>
</html>