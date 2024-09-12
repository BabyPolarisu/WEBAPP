<%@page import="model.Food"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <p>อาหารที่เพิ่มได้แล้ว</p>
        ออเดอร์: <%=food.getId() %><br/>
        ชื่ออาหาร: <%= food.getName() %><br/>
        ราคา: <%=food.getPrice() %><br/>
        <a href="updateFood.jsp">แก้ไขข้อมูลอาหาร</a>
    </div>
    </body>
</html>
