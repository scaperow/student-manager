var xmlHttp = false;
try {
   xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
} catch (e) {
   try {
     xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
   } catch (e2) {
     xmlHttp = false;
   }
}
if (!xmlHttp && typeof XMLHttpRequest != 'undefined') {
   xmlHttp = new XMLHttpRequest();
}
function checkuserid() {
   var u_name = document.getElementById("userid").value;
   if ((u_name == null) || (u_name == "")) return;
   var url = "checkuser.aspx?name=" + escape(u_name);
   xmlHttp.open("GET", url, true);
   xmlHttp.onreadystatechange = updatePage;
   xmlHttp.send(null);  
}
function checkcourseid(){
   var u_name1 = document.getElementById("courseid").value;
   if ((u_name1 == null) || (u_name1 == "")) return;
   var url = "checkcourseid.aspx?name=" + escape(u_name1);
   xmlHttp.open("GET", url, true);
   xmlHttp.onreadystatechange = updatePage;
   xmlHttp.send(null);  
}
function updatePage() {
   if (xmlHttp.readyState < 4) {
check.innerHTML="loading...";
   }
   if (xmlHttp.readyState == 4){
     var response = xmlHttp.responseText;
check.innerHTML=response;
   }

}