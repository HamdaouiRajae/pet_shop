<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="header.jsp"%>


<div class="center_content">
	<div class="left_content">
		<div class="crumb_nav">
			<a href="index.do">Home</a>
		</div>
		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>Category of Pets
		</div>

		<div class="new_products">

			<c:forEach items="${modelPets}" var="p">

				<div class="new_prod_box">
					<a href="details.do?id=${p.getId_p()}">${p.getName_p()}</a>
					<div class="new_prod_bg">
						<a href="details.do?id=${p.getId_p()}"><img
							src="images/${p.getImgs_p()}" alt="" title="" class="thumb"
							border="0" /></a>
					</div>
				</div>

			</c:forEach>





		</div>


		<div class="clear"></div>
	</div>
	<!--end of left content-->

	<div class="right_content">
		<div class="languages_box">
			<span class="red">Languages:</span> <a href="https://translate.google.fr/?hl=fr&sl=fr&tl=en&op=translate"><img
				src="images/gb.gif" alt="" title="" border="0" /></a> <a href="
https://translate.google.fr/?hl=fr&sl=en&tl=fr&op=translate"><img
				src="images/fr.gif" alt="" title="" border="0" /></a> <a href="https://translate.google.fr/?hl=fr&sl=en&tl=es&op=translate"><img
				src="images/de.gif" alt="" title="" border="0" /></a>
		</div>
		<div class="currency">
			<span class="red">Currency: </span> <a href="https://www.xe.com/currencyconverter/convert/?Amount=1&From=GBP&To=USD">GBP</a> <a href="https://www.x-rates.com/calculator/">EUR</a>
			<a href="
https://www.x-rates.com/calculator/"><strong>USD</strong></a>
		</div>


		<div class="cart">
			<c:if test="${ !empty sessionScope.userid }">
				<div class="title">
					<span class="title_icon"><img src="images/cart.gif" alt=""
						title="" /></span>My cart
				</div>
				<div class="home_cart_content">
					<span class="red">${sessionScope.username}</span>
				</div>
				<a href="cart.do?userid=${sessionScope.userid }" class="view_cart">view
					cart</a>
			</c:if>
		</div>



		<div class="title">
			<span class="title_icon"><img src="images/bullet3.gif" alt=""
				title="" /></span>About Our Shop
		</div>
		<div class="about">
			<p>
				<img src="images/about.gif" alt="" title="" class="right" /> Vos
				magasins Pet Shop à Oujda et Rabat sont à votre disposition pour
				vous apporter l'ensemble des conseils et informations dont vous avez
				besoin pour prendre soin de vos animaux de compagnie
			</p>

		</div>

		<div class="right_box">

			<div class="title">
				<span class="title_icon"><img src="images/bullet4.gif" alt=""
					title="" /></span>Promotions
			</div>

			<c:forEach items="${modelPets}" var="p">
				<div class="new_prod_box">
					<a href="details.do?id=${p.getId_p()}">${p.getName_p()}</a>
					<div class="new_prod_bg">
						<span class="new_icon"><img src="images/promo_icon.gif"
							alt="" title="" /></span> <a href="details.do?id=${p.getId_p()}"><img
							src="images/${p.getImgs_p()}" alt="" title="" class="thumb"
							border="0" /></a>
					</div>
				</div>
			</c:forEach>

		</div>

		<div class="right_box">

			<div class="title">
				<span class="title_icon"><img src="images/bullet5.gif" alt=""
					title="" /></span>Categories
			</div>

			<ul class="list">
				<c:forEach items="${modelCategorys}" var="p">
					<li><a href="pets.do">${p.getCategory_name_p()}</a></li>
				</c:forEach>
			</ul>



		</div>


	</div>
	<!--end of right content-->




	<div class="clear"></div>
</div>
<!--end of center content-->


<%@include file="footer.jsp"%>


</body>
</html>