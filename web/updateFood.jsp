<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Food" %>
<!DOCTYPE html>
<html>
    <body>
                    <style>
        .box {
            border: 1px solid #ccc;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto; /* Center the box */
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input, textarea, select, button {
            width: 100%;
            padding: 10px;
            margin: 5px 0 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
    <div class="box">
        <% Food food = (Food) session.getAttribute("food");%>
        <p>แก้ไขข้อมูลอาหาร</p>
        <form action="AddNewFoodServlet">
            <input type="text" name="foodOrder" value="<%= food.getId()%>"><br/>
            <input type="text" name="foodName" value="<%= food.getName()%>"><br/>
            <input type="text" name="foodPrice" value="<%=food.getPrice()%>"<br/>
            <input type="submit" value="แก้ไข">            
        </form>
        <% session.removeAttribute("food"); %>
    </div>
    </body>
</html>
