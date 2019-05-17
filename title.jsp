<style>
.button {
  border-radius: 4px;
  background-color: #FFFAFA;
  border: none;
  color: #8B0000;
  text-align: center;
  font-size: 14px;
  padding: 10px;
padding-right:0px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  margin-right:0px;
}
</style>
<body>
<div style="float:left;"><img src="gmail.png" width="230px" height="70px"></div>
<div style="float:right;"><a href="index.html" target=_top><input type="button" value="Sign Out" class="button"></a></div>


<div>

<%   
  
String name=(String)session.getAttribute("user");  
out.print("<center><font face=\"Courier New, monospace\" >"+name+"</font></center><br><hr>");  
  
%>  

</div>
</body>


