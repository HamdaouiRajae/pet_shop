<%@include file="header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="center_content">
	<div class="left_content">

		<div class="title">
			<span class="title_icon"><img src="images/bullet1.gif" alt=""
				title="" /></span>Achat Pet
		</div>


		<div class="clear"></div>
		<table>
			<tr>
				<th>Name</th>
				<th>Status</th>
				<th>Category</th>
				<th>Description</th>
				<th>Prix</th>
			</tr>
			<tr>
				<td>${ user_s.getUsername() }</td>
				<td>${ pet_s.getStatus_p() }</td>
				<td>${ pet_s.getCategory_id_p() }</td>
				<td>${ pet_s.getDescription_p() }</td>
				<td>${ pet_s.getPrice() }</td>

			</tr>
		</table>


		<div class="title">
			<span class="title_icon"><img src="images/bullet2.gif" alt=""
				title="" /></span>New pets
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
			<span class="red">Currency: </span> <a href="https://www.xe.com/currencyconverter/convert/?Amount=1&From=GBP&To=USD">GBP</a> <a href="https://www.x-rates.com/calculator/">EUR</a>
			<a href="https://www.x-rates.com/table/?from=USD&amount=1" class="selected">USD</a>
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
				<img src="images/about.gif" alt="" title="" class="right" /> Lorem
				ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
				veniam, quis nostrud.
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
	<!------------------------------------------------------------end of right content---------------------------------------------------------->




	<div class="clear"></div>
</div>
<!------------------------------------------------------------end of center content------------------------------------------------------------->


<%@include file="footer.jsp"%>

</body>
</html>