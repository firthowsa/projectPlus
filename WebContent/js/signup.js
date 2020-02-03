
    function validate(){
   
    var name = document.registration.secondname.value;
	var reg = document.registration.regno.value;
	var pass = document.registration.password.value;
	var email = document.registration.email.value;
	
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var letters = /^[A-Za-z]+$/;
	var regi = /\w\d{2}\/\d{5}\/\d{2}/;
     
	if(name == ""){
    	 alert("enter Name");
    	 document.registration.name.focus();
    	 return false;
     }
     
	
	
	if(letters.test(name) == false)
		{
	
		alert("name must have alphabet characters only");
		document.registration.focus();
		return false;
		}
	
     
     if(reg == ""){
    	 alert("enter Registration number");
    	 document.registration.reg.focus();
    	 return false;
     }
     else if(regi.test(reg)){
     	return true;
     }
     else
 	{
 	alert("Registration must be of the form 'S13/12345/16'");
 	document.registration.regno.focus();
 	return false;
 	}
     
     if(email == ""){
    	 alert("enter Email");
    	 document.registration.email.focus();
    	 return false;
     }
     else if(mailformat.test(email)){
     	return true;
     }
     else
 	{
 	alert("Email must be of the form 'absd11@mail.com'");
 	document.registration.email.focus();
 	return false;
 	}
     
    
     
    }
    
    
    
   