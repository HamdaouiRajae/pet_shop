<%@include file="header.jsp" %>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       
 
 
 <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="images/bullet1.gif" alt="" title="" /></span>My cart</div>
        	 
        	<div class="feat_prod_box_details">
            &gt;&gt; ${sessionScope.username}
            <br>
            <table class="cart_table">
            	<tr class="cart_title">
                	<td>Item pic</td>
                	<td>Product name</td>
                    <td>Unit price</td>
                    <td>Qty</td>
                    <td>Total</td>               
                </tr>
                
                
              
           
            <c:forEach items="${pet_order}" var="p">
          
                <tr>
                	<td><a href="details.do?id=${p.getId_p()}"><img src="images/${p.getImgs_p()}" alt="" title="" border="0" class="cart_thumb" width="50%" /></a></td>
                	<td>${p.getName_p()}</td>
                    <td>${p.getPrice()}$</td>
                    <td>1</td>
                    <td>${p.getPrice()}$</td>               
                </tr>             
                   
         	</c:forEach> 
                
                
            	       
            

                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL SHIPPING:</span></td>
                <td>${total}$</td>                
                </tr>  
                
                <tr>
                <td colspan="4" class="cart_total"><span class="red">TOTAL:</span></td>
                <td> ${total}$</td>                
                </tr>                  
            
            </table>
            <a href="achat.do" class="continue">&lt; continue</a>
            <a href="home.do" class="checkout">checkout &gt;</a>
            

             
            
            </div>	
            
              

            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
        <div class="right_content">
        
                <div class="languages_box">
			        <div id="google_translate_element"></div>
			
					<script type="text/javascript">
					function googleTranslateElementInit() {
					  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
					}
					</script>
					
					<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			
<div class="languages_box">
			<span class="red">Languages:</span> <a href="https://translate.google.fr/?hl=fr&sl=fr&tl=en&op=translate"><img
				src="images/gb.gif" alt="" title="" border="0" /></a> <a href="
https://translate.google.fr/?hl=fr&sl=en&tl=fr&op=translate"><img
				src="images/fr.gif" alt="" title="" border="0" /></a> <a href="https://translate.google.fr/?hl=fr&sl=en&tl=es&op=translate"><img
				src="images/de.gif" alt="" title="" border="0" /></a>
		</div>
           
           
           
           
           
           
           
            </div>
                <div class="currency">
                <span class="red">Currency: </span>
                <a href="https://www.xe.com/currencyconverter/convert/?Amount=1&From=GBP&To=USD">GBP</a>
                <a href="https://www.x-rates.com/calculator/">EUR</a>
                <a href="https://www.x-rates.com/table/?from=USD&amount=1"><strong>USD</strong></a>
                </div>
                
		               <div class="cart">
		               <c:if test="${ !empty sessionScope.userid }"> 
		                  <div class="title"><span class="title_icon"><img src="images/cart.gif" alt="" title="" /></span>My cart</div>
		                  <div class="home_cart_content">
		                  <span class="red">${sessionScope.username}</span>
		                  </div>
		                  <a href="cart.do?userid=${sessionScope.userid }" class="view_cart">view cart</a>
		              </c:if> 
		              </div>
        
             <div class="title"><span class="title_icon"><img src="images/bullet3.gif" alt="" title="" /></span>About Our Shop</div> 
             <div class="about">
             <p>
             <img src="images/about.gif" alt="" title="" class="right" />
				Pet Shop est venu avec une vision pour rendre les animaux de compagnie sans tracas.<br /> .<br />
	            Avoir un animal de compagnie, c'est comme avoir un enfant dont il a besoin, ainsi que tous les besoins de base. Nous comprenons votre amour envers votre animal de compagnie ainsi que les problèmes auxquels vous etes confronté lorsque vous etes parent, ce qui nous a amenés à  définir notre vision <br />.<br />
	                            
	         </p>
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet4.gif" alt="" title="" /></span>Promotions</div> 
                   <c:forEach items="${modelPets}" var="p">
                        <c:if test="${ p.getStatus_p().equals('promo')}"> 
		               
		               
	                    <div class="new_prod_box">
	                        <a href="details.do?id=${p.getId_p()}">${p.getName_p()}</a>
	                        <div class="new_prod_bg">
	                        <span class="new_icon"><img src="images/promo_icon.gif" alt="" title="" /></span>	                        
	                        <a href="details.do?id=${p.getId_p()}"><img src="images/${p.getImgs_p()}" alt="" title="" class="thumb" border="0" /></a>
	                        </div>           
	                    </div>         
	                    </c:if>         
         			</c:forEach>                 
             
             </div>
             
             <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="images/bullet5.gif" alt="" title="" /></span>Categories</div> 
                
                <ul class="list">
                  <c:forEach items="${modelCategorys}" var="p">
		                   
		                <li><a href="category.do?id=${p.getCategory_id_p()}">${p.getCategory_name_p()}</a></li>
		     
		                </c:forEach>                                              
                </ul>
                   
             
             </div>         
             
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@include file="footer.jsp"%>
    

</body>
</html>