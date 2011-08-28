<%@ include file="/WEB-INF/views/include.jsp"%>
<%@ page session="false"%>

<div class="menu_seperator seperator"><!--  --></div>
<h2>Featured Deals</h2>
<c:if test="${not empty featured}">
	<div class="featured-deal">
		<c:forEach var="f" items="${featured}">
			<ul class="deal">
				<li><span class="desc">${f.deal.description}</span></li>
				<li><span class="discount">${f.deal.discountPercentage}</span></li>
				<li><span class="price">${f.deal.price}</span></li>
				<li><span class="minSale">${f.deal.minSaleRequired}</span></li>
			</ul>
		</c:forEach>
	</div>
</c:if>

<div class="content_seperator seperator"><!--  --></div>

<h2>Deals in progress</h2>
<c:if test="${not empty regular}">
	<div class="regular-deal">
		<c:forEach var="r" items="${regular}">
			<ul class="deal">
				<li><span class="desc">${r.deal.description}</span></li>
				<li><span class="discount">${r.deal.discountPercentage}</span></li>
				<li><span class="price">${r.deal.price}</span></li>
				<li><span class="minSale">${r.deal.minSaleRequired}</span></li>
			</ul>
		</c:forEach>
	</div>
</c:if>