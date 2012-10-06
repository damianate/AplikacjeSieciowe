<%-- 
    Document   : index
    Created on : 2012-10-06, 19:18:45
    Author     : Damian Szuta
--%>

<%@page import="java.net.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Serwis gier-online</title>
         <LINK href="glowne.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="wrapper"  >
           
            <%
             
     try {
		int serverPort = 8189;
		InetAddress host = InetAddress.getByName("localhost");  

		Socket socket = new Socket(host,serverPort); 
		//Socket socket = new Socket("127.0.0.1", serverPort); 
		PrintWriter toServer = 
			new PrintWriter(socket.getOutputStream(),true);
		BufferedReader fromServer = 
			new BufferedReader(
					new InputStreamReader(socket.getInputStream())); 
		String line = fromServer.readLine();
		out.println(line + "");
		toServer.close();
		fromServer.close();
		socket.close();
	}
	catch(UnknownHostException ex) {
		ex.printStackTrace();
	}
	catch(IOException e){
		e.printStackTrace();
	}
%>
          
                  
              </div>
    </body>
</html>
