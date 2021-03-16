<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="center_content">
	<div class="left_content">
		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>About Us
		</div>

		<div class="feat_prod_box_details">
			<p class="details">
				<img src="images/about2.gif" alt="" title="" class="right" /> Pet
				Shop est venu avec une vision pour rendre les animaux de compagnie
				sans tracas.<br /> .<br /> Avoir un animal de compagnie, c'est
				comme avoir un enfant dont il a besoin, ainsi que tous les besoins
				de base. Nous comprenons votre amour envers votre animal de
				compagnie ainsi que les problèmes auxquels vous etes confronté
				lorsque vous etes parent, ce qui nous a amenés à  définir notre
				vision <br />.<br /> Des nouveaux produits à  macher pour chiens,
				des jouets, des friandises délicieuses, des aliments nutritifs, des
				accessoires, des lits pour chiens confortables et à  la mode, des
				articles de toilettage, des produits de bain et de soins de la peau,
				des vetements à la mode, des chaussures et autres. <br />.<br />
				Toutes les marques de woofing pour les chiens, les chatons, les
				poissons, les beaux birdies, les lapins tortues, etc. ont des prix
				inattendus et des rabais fous tous les jours. Nous ne nous arretons
				à  rien.<br />.<br /> Peu importe quel animal vous avez, tout ce
				qui compte, c'est que vous avez un animal domestique et nous sommes
				à  votre porte chaque fois que vous commandez quelque chose pour
				eux.<br />.<br /> Rejoignez Pet Shop pour découvrir de nouveaux
				produits, achetez-les en ligne et recevez-les à  votre convenance.
				Profitez de nos différentes offres chaque semaine. Gatez votre
				animal sans gacher vos poches.<br />.<br /> Encore une fois, Pet
				Shop vous souhaite la bienvenue. Nous sommes toujours là  pour vous
				et eux!
			</p>


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
			<a href="https://www.x-rates.com/table/?from=USD&amount=1"><strong>USD</strong></a>
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
				Shop est une équipe de passionnés des animaux qui mettent leur
				savoir-faire à  votre disposition afin de vous proposer des services
				de qualité à  valeur ajoutée.
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
	<!---------------------------------------------------------------end of right content------------------------------------------------------>




	<div class="clear"></div>
</div>
<!--------------------------------------------------------end of center content----------------------------------------------------------------->


<%@include file="footer.jsp"%>
</body>
</html>