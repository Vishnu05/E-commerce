 <%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/loginFailure.css">
        <title>Login Failure</title>
</head>
 <body id="anyBody" >
 
	<div id="pagewidth">
		<div id="header">

  <div class="alert alert-danger">
    <strong>Failure!</strong> <h1>Invalid UserId OR Password<h1>
    <p>Please try again</p>
  </div>
		</div>
		<div id="nav">
  		</div>
		
		<div id="content">	
                      <div id="showContent">
                          <div id="logForm">  
     			   
                  <table  width="350">   
                       
                  <tr>
                       <td>
                           <a href="login"><p> Return To Login Page</p></a>               								
		             </td>                
                        <td>
                           <a href="register">Register Here</a>    					
		               </td>
                  </tr>
                </table>
		                  </div>     			
                       </div>  
		        </div>  
		 	<div id="clear">	
 		</div>					
                       	</div>
 </body>
 </html> 