<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="../include/goodsmallheader.jsp"%>
<title>내 장바구니</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
    }
    
    h1 {
      color: #333;
      text-align: center;
    }
    
    ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }
    
    li {
      padding: 10px;
      margin-bottom: 5px;
      background-color: #fff;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    
    button {
      background-color: #4CAF50;
      color: #fff;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
    }
    
    button:hover {
      background-color: #3e8e41;
    }
    
    #cart {
      background-color: #f0f0f0;
      padding: 10px;
      margin: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    
    #cart li {
      background-color: #fff;
      border: none;
    }
    
    #cart li:last-child {
      border-bottom: 1px solid #ccc;
    }
    
    h2 {
      color: #333;
    }
  </style>
</head>
<body>
  <h1>goodsstore</h1>
  <ul>
    <li>
      <h2>상품</h2>
      <p>가격:?</p>
      <button onclick="addToCart('상품 1', 10.00)">장바구니에 추가</button>
    </li>
    <li>
      <h2>상품</h2>
      <p>가격:?</p>
      <button onclick="addToCart('상품 2', 20.00)">장바구니에 추가</button>
    </li>
    <li>
      <h2>상품</h2>
      <p>가격:?</p>
      <button onclick="addToCart('상품 3', 30.00)">장바구니에 추가</button>
    </li>
  </ul>
  <button onclick="clearCart()">장바구니 비우기</button>
  <button onclick="checkout()">구매하기</button>
  <h2>장바구니</h2>
  <ul id="cart">
  </ul>
  <script>
    function addToCart(name, price) {
      // Get the cart element
      var cart = document.getElementById('cart');
      
      // Create a new list item for the product
      var item = document.createElement('li');
      item.innerHTML = name + ' - ￦' + price.toFixed(2);
      
      // Add the item to the cart
      cart.appendChild(item);
    }
    function checkout() {
        // Get the cart element
        var cart = document.getElementById('cart');
        
        // Create an array to store the cart items
        var items = [];
        
        // Loop through the cart list and add each item to the array
        for (var i = 0; i < cart.children.length; i++) {
          items.push(cart.children[i].innerHTML);
        }
        
        // Send the items to the server for processing and payment
        // (replace this with your own server-side code)
        sendItemsToServer(items);
        
        // Clear the cart
        clearCart();
      }
    
    function clearCart() {
    	  // Get the cart element
    	  var cart = document.getElementById('cart');
    	  
    	  // Remove all items from the cart
    	  while (cart.firstChild) {
    	    cart.removeChild(cart.firstChild);
    	  }
    	}

  </script>
 
  <%@ include file="../include/goodsmallfooter.jsp"%>
</html>