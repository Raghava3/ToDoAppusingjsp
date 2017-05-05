$(document).ready(
			function() {
				$("body").click(
						function(event) {
							
							if (event.target.id == "form"
									|| event.target.id == "newNote"
									|| event.target.className == "ff"
									|| event.target.id == "title"
									|| event.target.id == "des" 
									|| event.target.id == "input"
									|| event.target.id == "") {
								return;
							}
							$("#newNote").css("display", "none");
						

						});

			});
	
	$(document).ready(
			function() {
				$("b").on('click',function(e)
				{
					
					if($(this).hasClass('grid'))
						{
						$('#container div').removeClass('list').addClass('grid');
						}
					else if($(this).hasClass('list'))
						{
						$('#container div').removeClass('grid').addClass('list');
						}
						});

			});
	
	

	function openNav() {
		document.getElementById("mySidenav").style.width = "250px";
		document.getElementById("main").style.marginLeft = "250px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
	function openEntry() {
		document.getElementById("newNote").style.display = "block";
	}

	function popUp(title, description) {
		alert(title + "\n" + description)
	}

	function myFunction() {
		var popup = document.getElementById("myPopup");
		popup.classList.toggle("show");
	}