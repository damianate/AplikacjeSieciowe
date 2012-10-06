<%@ page import="java.net.*" %>
<%@ page import="java.io.*" %>
<%
ServerSocket socket = new ServerSocket(8282);

Socket insocket = socket.accept( );

BufferedReader in = new BufferedReader (new 
InputStreamReader(insocket.getInputStream()));
PrintWriter myout = new PrintWriter (insocket.getOutputStream(), 
true);

String instring = in.readLine();
out.println("The server got this: " + instring);
insocket.close();
%>