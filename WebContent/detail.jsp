<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="center_content">
	<div class="left_content">
		<div class="crumb_nav">
			<a href="home.do">Home</a> &gt;&gt; Product Name
		</div>
		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>Product Name
		</div>

		<div class="feat_prod_box_details">

			<div class="prod_img">
				<a href="details.html"><img
					src="images/${pet_selected.getImgs_p()}" alt="" title="" border="0" /></a>
				<br />
				<br /> <a href="images/big_pic.jpg" rel="lightbox"><img
					src="images/zoom.gif" alt="" title="" border="0" /></a>
			</div>

			<div class="prod_det_box">
				<div class="box_top"></div>
				<div class="box_center">
					<div class="prod_title">Details</div>
					<p class="details">${pet_selected.getDescription_p()}</p>
					<div class="price">
						<strong>PRICE:</strong> <span class="red">${pet_selected.getPrice()}
							$</span>
					</div>
					<div class="price">
						<strong>COLORS:</strong> <span class="colors"><img
							src="images/color1.gif" alt="" title="" border="0" /></span> <span
							class="colors"><img src="images/color2.gif" alt=""
							title="" border="0" /></span> <span class="colors"><img
							src="images/color3.gif" alt="" title="" border="0" /></span>
					</div>
					<c:if test="${ !empty sessionScope.userid }">
						<a
							href="achat.do?id1=${sessionScope.userid}&id2=${pet_selected.getId_p()}"
							class="more"><img src="images/order_now.gif" alt="" title=""
							border="0" /></a>
					</c:if>
					<c:if test="${ empty sessionScope.userid }">
						<a href="myaccount.do" class="more"><img
							src="images/order_now.gif" alt="" title="" border="0" /></a>
					</c:if>
					<div class="clear"></div>
				</div>

				<div class="box_bottom"></div>
			</div>
			<div class="clear"></div>
		</div>


		<div id="demo" class="demolayout">

			<ul id="demo-nav" class="demolayout">
				<li><a class="active" href="#tab1">More details</a></li>
				<li><a class="" href="#tab2">Related books</a></li>
			</ul>

			<div class="tabs-container">

				<div style="display: block;" class="tab" id="tab1">
					<p class="more_details">
						Les animaux sont des bons amis, ils ne demandent pas d'histoires
						et ils n'ont pas de critiques. Les animaux domestiques
						réfléchissent souvent à  l'amour que leurs premiers lachent sur
						eux en détruisant diverses formes d'affrontements, y compris le
						liage, les suaons, meme des morsures.<br /> Pour savoir plus
						visiter ces sites web
					</p>
					<ul class="list">
						<li><a target="_blank"
							href="https://www.purina.com/cats/cat-breeds">Savoir plus
								d'information sur votre chat</a></li>
						<li><a target="_blank" href="https://dogtime.com/dog-breeds">Savoir
								plus d'information sur votre chien</a></li>
						<li><a target="_blank"
							href="https://www.goodhousekeeping.com/life/pets/g26950009/best-rabbit-breeds/">Savoir
								plus d'information sur votre rongeur</a></li>
						<li><a target="_blank"
							href="https://www.dkfindout.com/us/animals-and-nature/birds/">Savoir
								plus d'information sur votre oiseau</a></li>
						<li><a target="_blank"
							href="https://kissagator.com/blog/21-fun-reptile-facts-how-many-do-you-know/">Savoir
								plus d'information sur votre reptile</a></li>

					</ul>
					<p class="more_details">Il n'y en a pas d'autre qui ressemble
						tout à  fait à  garder un animal de compagnie. Pet est en fait un
						agent permanent, et comprend les fonctions trés importantes de
						toilettage et de s'efforcer de faire de bons soins de santé. Les
						plans généraux pourraient etre considérés comme une définition des
						outils utiles pour le toilettage et le maintien de votre peau en
						bonne santé</p>
				</div>

				<div style="display: none;" class="tab" id="tab2">
					<div class="new_prod_box">
						<a href="details.html">product name</a>
						<div class="new_prod_bg">
							<a href="details.html"><img src="images/thumb1.gif" alt=""
								title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">product name</a>
						<div class="new_prod_bg">
							<a href="details.html"><img src="images/thumb2.gif" alt=""
								title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">product name</a>
						<div class="new_prod_bg">
							<a href="details.html"><img src="images/thumb3.gif" alt=""
								title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">product name</a>
						<div class="new_prod_bg">
							<a href="details.html"><img src="images/thumb1.gif" alt=""
								title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">product name</a>
						<div class="new_prod_bg">
							<a href="details.html"><img src="images/thumb2.gif" alt=""
								title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">product name</a>
						<div class="new_prod_bg">
							<a href="details.html"><img src="images/thumb3.gif" alt=""
								title="" class="thumb" border="0" /></a>
						</div>
					</div>



					<div class="clear"></div>
				</div>

			</div>


		</div>



		<div class="clear"></div>
	</div>
	<!--end of left content-->

	<div class="right_content">

		<div class="languages_box">
			<span class="red">Languages:</span> <a href="
https://translate.google.fr/?hl=fr&sl=fr&tl=en&op=translate
"><img
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
				<img src="images/about.gif" alt="" title="" class="right" /> Notre
				plateforme fournit un service de livraison rapide à nos clients
				partout dans le monde. La livraison est effectuée dans un délai
				spécifié vers les destinations respectives dans le monde entier par
				le biais de l'expédition et un bon de livraison est émis à notre
				client. C'est la seule façon de posséder un animal de compagnie de
				rêve, il vous suffit de passer une commande et vous serez servi en
				conséquence. Utilisez le formulaire de contact pour passer une
				commande avec nous.
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

<script type="text/javascript">
	var tabber1 = new Yetii({
		id : 'demo'
	});
</script>
</body>

</html>