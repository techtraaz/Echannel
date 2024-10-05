<%@ page import="java.sql.*, Forms.DBCon" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sessions Data</title>
    <style>
        body {
            background-color: black;
            color: blue;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Top header styling */
        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            margin-bottom: 30px;
        }

        /* Table styling */
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid white;
        }

        th, td {
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td {
            color: white;
        }

        /* Table row hover effect */
        tr:hover {
            background-color: #575757;
        }

        /* Add margin to the body to make space for the top header */
        body {
            padding-top: 80px;
        }
        button{
        	padding:10px;
        	background-color:red;
        }
    </style>
</head>
<body>

    <!-- Top header section -->
    <header>
        <h2>Available Sessions</h2>
    </header>

    <!-- Table to display sessions -->
    <table>
        <thead>
            <tr>
                <th>Session ID</th>
                <th>Doctor Name</th>
                <th>Hospital Name</th>
                <th>Session Date</th>
                <th>Start Time</th>
                <th>End Time</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection con = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    // Get connection
                    con = DBCon.getConnection();
                    stmt = con.createStatement();

                    // Execute query to get session data with doctor and hospital names
                    String query = "SELECT s.session_id, d.doctor_name, h.hospital_name, s.session_date, s.start_time, s.end_time, s.price " +
                                   "FROM Sessions s " +
                                   "JOIN Doctors d ON s.doctor_id = d.doctor_id " +
                                   "JOIN Hospitals h ON s.hospital_id = h.hospital_id";
                    rs = stmt.executeQuery(query);

                    // Loop through the result set and display the data
                    while (rs.next()) {
            %>
                    <tr>
                        <td><%= rs.getInt("session_id") %></td>
                        <td><%= rs.getString("doctor_name") %></td>
                        <td><%= rs.getString("hospital_name") %></td>
                        <td><%= rs.getDate("session_date") %></td>
                        <td><%= rs.getTime("start_time") %></td>
                        <td><%= rs.getTime("end_time") %></td>
                        <td><%= rs.getBigDecimal("price") %></td>
                        <td><button>Channel</button></td>
                    </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
            %>
                <tr>
                    <td colspan="7" style="color:red;">Error retrieving data: <%= e.getMessage() %></td>
                </tr>
            <%
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (con != null) try { con.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
                
                System.out.println("succcess");
            %>
        </tbody>
    </table>

</body>
</html>
