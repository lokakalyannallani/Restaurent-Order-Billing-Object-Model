package com.restaurant.controller;

import com.restaurant.model.Modifier;
import com.restaurant.model.Order;
import com.restaurant.model.OrderItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {

		String customerName = request.getParameter("customerName");

		String foodItem = request.getParameter("foodItem");

		double price = Double.parseDouble(request.getParameter("price"));

		int quantity = Integer.parseInt(request.getParameter("quantity"));

		String modifier = request.getParameter("modifier");
		
		String splitType = request.getParameter("splitType");

		int persons = Integer.parseInt(request.getParameter("persons"));

		Modifier modifierObject = null;

		if (modifier.equals("Extra Cheese (+50)")) {
			modifierObject = new Modifier("Extra Cheese", 50);
		} else if (modifier.equals("Extra Sauce (+20)")) {
			modifierObject = new Modifier("Extra Sauce", 20);
		} else {
			modifierObject = new Modifier("None", 0);
		}

		OrderItem item = new OrderItem(foodItem, price, quantity, modifierObject);

		Order order = new Order();

		order.addItem(item);

		double subtotal = order.calculateSubtotal();

		double tax = order.calculateTax();

		double serviceCharge = order.calculateServiceCharge();

		double grandTotal = order.calculateGrandTotal();
		
		double amountPerPerson = grandTotal;

		if(splitType.equals("Even Split")) {

		    amountPerPerson = grandTotal / persons;

		}
		else if(splitType.equals("By Item")) {

		    amountPerPerson = item.calculateTotal();

		}
		request.setAttribute("customerName", customerName);

		request.setAttribute("foodItem", foodItem);

		request.setAttribute("price", price);

		request.setAttribute("quantity", quantity);

		request.setAttribute("modifier", modifier);

		request.setAttribute("subtotal", subtotal);

		request.setAttribute("tax", tax);

		request.setAttribute("serviceCharge", serviceCharge);

		request.setAttribute("grandTotal", grandTotal);
		
		request.setAttribute("splitType", splitType);

		request.setAttribute("persons", persons);
		
		request.setAttribute("amountPerPerson", amountPerPerson);
		
		request.getRequestDispatcher("bill.jsp").forward(request, response);

	}
		catch(Exception e)
		{
		    response.getWriter().println("<h2>Invalid Input!</h2>");
		    response.getWriter().println("<a href='addOrder.jsp'>Go Back</a>");
		}
	}

}
	
