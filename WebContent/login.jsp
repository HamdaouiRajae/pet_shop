<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="center_content">
	<div class="left_content">
		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>My Account
		</div>

		<div class="feat_prod_box_details">
			<p class="details">
				Chez Pet Shop, nous nous effor?ons de vous aider ?? mettre la main
				sur tout ce que votre animal adorera. Tous les produits que vous
				commandez, nous les livrons directement ?? votre porte.<br />
				<br /> Toute livraison est enti?rement gratuite pour les commandes
				sup?rieures ??300DH. La philosophie de notre entreprise est assez
				simple: nous voulons offrir la meilleure collection possible de
				produits pour animaux de compagnie et d'offres pour nos clients.
				Notre effort est de vous assurer que vous obtenez le choix le plus
				large possible de produits les mieux not?ss au meilleur prix
				possible partout en Inde, combin? avec le meilleur service possible
				et une livraison rapide des produits ?? votre porte.
			</p>

			<div class="contact_form">
				<div class="form_subtitle">login into your account</div>



				<form name="register" action="login.do" method="post">
					<div class="form_row">
						<label class="contact"><strong>Username:</strong></label> <input
							name="username" type="text" class="contact_input" />
					</div>


					<div class="form_row">
						<label class="contact"><strong>Password:</strong></label> <input
							name="password" type="text" class="contact_input" />
					</div>

					<div class="form_row">
						<div class="terms">
							<input type="checkbox" name="terms" /> Remember me
						</div>
					</div>


					<div class="form_row">
						<button type="submit" class="button_contact">submit</button>

					</div>
				</form>
				<%
				if ((String) request.getAttribute("message") != null) {
					out.println((String) request.getAttribute("message"));
				}
				%>

			</div>

		</div>






		<div class="clear"></div>
	</div>
	<!--end of left content-->

	<div class="right_content">

		<div class="languages_box">
			<span class="red">Languages:</span> <a href="https://translate.google.fr/?hl=fr&sl=fr&tl=en&op=translate"><img
				src="images/gb.gif" alt="" title="" border="0" /></a> <a href="https://translate.google.fr/?hl=fr&sl=en&tl=fr&op=translate"><img
				src="images/fr.gif" alt="" title="" border="0" /></a> <a href="
https://translate.google.fr/?hl=fr&sl=en&tl=es&op=translate"><img
				src="images/de.gif" alt="" title="" border="0" /></a>
		</div>
		<div class="currency">
			<span class="red">Currency: </span> <a href="https://www.xe.com/currencyconverter/convert/?Amount=1&From=GBP&To=USD">GBP</a> <a href="https://www.x-rates.com/calculator/">EUR</a>
			<a href="https://www.x-rates.com/calculator/"><strong>USD</strong></a>
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
				<img src="images/about.gif" alt="" title="" class="right" /> Pet
				Shop est ?galement une animalerie en ligne pouvant livrer ??
				domicile vos commandes partout au Maroc. Que vous soyez ??
				Casablanca, Rabat, Marrakech, Tanger ou F?z, nous pouvons assurer
				pour vous une livraison ? domicile dans les plus brefs d?lais.
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