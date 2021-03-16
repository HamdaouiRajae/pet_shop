<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="center_content">
	<div class="left_content">
		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>Register
		</div>

		<div class="feat_prod_box_details">
			<p class="details">
				Nous sommes dédiés à  toutes les parties des besoins d'animaux de
				compagnie et nous nous engageons à aider à se connecter avec
				l'acheteur et les vendeurs d'animaux de compagnie et à acquérir des
				connaissances en utilisant des blogs et des forums, notre
				environnement et nos clients qui comprennent des vétèrinaires, des
				propriétaires d'animaux, des animaux familiers, des éleveurs, ces
				acheteurs.<br /> <br /> Nous nous assurons que toutes les requetes
				des clients sont répondues correctement et que tous les problèmes
				sont résolus dès que possible. Notre responsabilité est à vous, le
				plus grand et nous aimerions vous remercier pour le soutien et
				espérer que nous mettrons à  jour cette page "à propos de nous" sur
				une base régulière.
			</p>

			<div class="contact_form">
				<div class="form_subtitle">create new account</div>
				<form name="register" action="reg.do" method="POST">
					<div class="form_row">
						<label class="contact"><strong>Username:</strong></label> <input
							name="username" type="text" class="contact_input" />
					</div>


					<div class="form_row">
						<label class="contact"><strong>Password:</strong></label> <input
							name="password" type="text" class="contact_input" />
					</div>

					<div class="form_row">
						<label class="contact"><strong>Email:</strong></label> <input
							name="email" type="text" class="contact_input" />
					</div>


					<div class="form_row">
						<label class="contact"><strong>Phone:</strong></label> <input
							name="phone" type="text" class="contact_input" />
					</div>

					<div class="form_row">
						<label class="contact"><strong>Company:</strong></label> <input
							name="company" type="text" class="contact_input" />
					</div>

					<div class="form_row">
						<label class="contact"><strong>Address:</strong></label> <input
							name="address" type="text" class="contact_input" />
					</div>

					<div class="form_row">
						<div class="terms">
							<input type="checkbox" name="terms" /> I agree to the <a
								href="license.txt">terms &amp; conditions</a>
						</div>
					</div>


					<div class="form_row">
						<button type="submit" class="button_contact" value="register">
							submit</button>

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
				src="images/fr.gif" alt="" title="" border="0" /></a> <a href="https://translate.google.fr/?hl=fr&sl=en&tl=es&op=translate"><img
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



		<div class="title">
			<span class="title_icon"><img src="images/bullet3.gif" alt=""
				title="" /></span>About Our Shop
		</div>
		<div class="about">
			<p>
				<img src="images/about.gif" alt="" title="" class="right" /> Le
				principal but de Pet Shop est de garder nos clients heureux. Nous
				avons toujours été au courant des bons clients et une fois que nous
				gardons cela en marche, le monde est à nous!
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
</div>
</body>
</html>