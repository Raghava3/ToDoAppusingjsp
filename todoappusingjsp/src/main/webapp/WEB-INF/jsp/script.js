$(function()
		{
		$("#Name_error_message").hide();
        $("#MobileNumber_error_message").hide();
        $("#email_error_message").hide();
        $("#password_error_message").hide();
		
        var error_name=false;
        var error_mobilenumber=false;
        var error_email=false;
        var error_password=false;
		
        $("#form_Name").focusout(function(){
        	
        	check_username();
        		
        });
       $("#form_MobileNumber").focusout(function(){
        	
        	check_mobilenumber();
        		
        });
       $("#form_email").focusout(function(){
       	
       	check_email();
       		
       });
       
       $("#form_password").focusout(function(){
       	
       	check_password();
       		
       });
       
       
       function check_username()
       {
    	   var username_length=$("#form_Name").val().length;
    	   if(username_length<5||username_length>20)
    		   {
    		   $("#Name_error_message").html("should be between 5-20 char	");
    		   $("#Name_error_message").show();
    		   error_name=true;
    		   }
    	   else
    		   {
    		   $("#Name_error_message").hide();
    		   }
       }
       
		});