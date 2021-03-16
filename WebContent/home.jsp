<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="center_content">
	<div class="left_content">

		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>Featured Pets
		</div>




		<c:forEach items="${modelPets}" var="p">

			<c:if test="${ p.getId_p()%5==0}">



				<div class="feat_prod_box">

					<div class="prod_img">
						<a href="details.do?id=${p.getId_p()}"><img
							src="images/${p.getImgs_p()}" alt="" title="" border="0" /></a>
					</div>

					<div class="prod_det_box">
						<div class="box_top"></div>
						<div class="box_center">
							<div class="prod_title">${p.getName_p()}</div>
							<p class="details">${p.description_p}</p>
							<a href="details.do?id=${p.getId_p()}" class="more">- more
								details -</a>
							<div class="clear"></div>
						</div>

						<div class="box_bottom"></div>
					</div>
					<div class="clear"></div>
				</div>
			</c:if>

		</c:forEach>


		<div class="title">
			<span class="title_icon"><img src="images/bullet2.gif" alt=""
				title="" /></span>New Pets
		</div>

		<div class="new_products">


			<c:forEach items="${modelPets}" var="p">
				<c:if test="${ p.getStatus_p().equals('new')}">

					<div class="new_prod_box">
						<a href="details.do?id=${p.getId_p()}">${p.getName_p()}</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img src="images/new_icon.gif"
								alt="" title="" /></span> <a href="details.do?id=${p.getId_p()}"><img
								src="images/${p.getImgs_p()}" alt="" title="" class="thumb"
								border="0" /></a>
						</div>
					</div>
				</c:if>
			</c:forEach>





		</div>


		<div class="clear"></div>
	</div>
	<!--end of left content-->

	<div class="right_content">
		<div class="languages_box">
			<div id="google_translate_element"></div>

			<script type="text/javascript">
				function googleTranslateElementInit() {
					new google.translate.TranslateElement({
						pageLanguage : 'en'
					}, 'google_translate_element');
				}
			</script>

			<script type="text/javascript"
				src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


		</div>
		<div class="currency">
			<span class="red">Currency: </span>
			<div id="myDIV">
				<a href="https://www.xe.com/currencyconverter/convert/?Amount=1&From=GBP&To=USD" class="btn">GBP</a>
				<a href="https://www.x-rates.com/calculator/" class="btn">EUR</a>
				<a href="
https://www.x-rates.com/table/?from=USD&amount=1" class="btn active">USD</a>
			</div>
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
				<img src="images/about.gif" alt="" title="" class="right" /> Notre
				catalogue offre tous les produits et accessoires pour chiens, chats,
				rongeurs, poissons et aquariophilie, reptiles, furets et aussi les
				animaux de ferme ou d'élevage. De l'alimentation aux produits de
				santé et d'hygiène, Pet Shop vous propose les meilleures marques de
				croquettes, litière, aquariums, arbres à  chats, accessoires et
				jouets disponibles sur le marché et vous livre partout au Maroc
			</p>

		</div>

		<div class="right_box">

			<div class="title">
				<span class="title_icon"><img src="images/bullet4.gif" alt=""
					title="" /></span>Promotions
			</div>




			<c:forEach items="${modelPets}" var="p">
				<c:if test="${ p.getStatus_p().equals('promo')}">


					<div class="new_prod_box">
						<a href="details.do?id=${p.getId_p()}">${p.getName_p()}</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img src="images/promo_icon.gif"
								alt="" title="" /></span> <a href="details.do?id=${p.getId_p()}"><img
								src="images/${p.getImgs_p()}" alt="" title="" class="thumb"
								border="0" /></a>
						</div>
					</div>
				</c:if>
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