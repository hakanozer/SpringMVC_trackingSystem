<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!-- jQuery 3 -->
 
<script src=" <s:url value="/resources/bower_components/jquery/dist/jquery.min.js"></s:url>"></script>
<!-- jQuery UI 1.11.4 -->

<script src=" <s:url value="/resources/bower_components/jquery-ui/jquery-ui.min.js"></s:url>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>



<!-- Bootstrap 3.3.7 -->
<script src="<s:url value="/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></s:url>"></script>

<script src="<s:url value="/resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></s:url>"></script>


<!-- Morris.js charts -->
<script src="<s:url value="/resources/bower_components/select2/dist/js/select2.full.min.js"></s:url>"></script>

<script src="<s:url value="/resources/bower_components/raphael/raphael.min.js"></s:url>"></script>
<script src="<s:url value="/resources/bower_components/morris.js/morris.min.js"></s:url>"></script>
<!-- Sparkline -->

<script src="<s:url value="/resources/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></s:url>"></script>
<!-- jvectormap -->
<script src="<s:url value="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></s:url>"></script>
<script src="<s:url value="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></s:url>"></script>
<!-- jQuery Knob Chart -->
<script src="<s:url value="/resources/bower_components/jquery-knob/dist/jquery.knob.min.js"></s:url>"></script>
<!-- daterangepicker -->
<script src="<s:url value="/resources/bower_components/moment/min/moment.min.js"></s:url>"></script>
<script src="<s:url value="/resources/bower_components/bootstrap-daterangepicker/daterangepicker.js"></s:url>"></script>
<!-- datepicker -->
<script src="<s:url value="/resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></s:url>"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<s:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></s:url>"></script>
<!-- Slimscroll -->
<script src="<s:url value="/resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></s:url>"></script>
<!-- FastClick -->
<script src="<s:url value="/resources/bower_components/fastclick/lib/fastclick.js"></s:url>"></script>
<!-- AdminLTE App -->
<script src="<s:url value="/resources/dist/js/adminlte.min.js"></s:url>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<s:url value="/resources/dist/js/pages/dashboard.js"></s:url>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<s:url value="/resources/dist/js/demo.js"></s:url>"></script>
<script src="<s:url value="/resources/dist/js/admin.js"></s:url>"></script>
<script src='<s:url value="resources/bower_components/jquery/dist/jquery.min.js"></s:url>'></script>
<!-- Bootstrap 3.3.7 -->

<script src='<s:url value="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></s:url>'></script>
<!-- iCheck -->

<script src='<s:url value="resources/plugins/iCheck/icheck.min.js"></s:url>'></script>

<script src="<s:url value="/resources/bower_components/ckeditor/ckeditor.js"></s:url>"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="<s:url value="/resources/site.js"></s:url>"></script>
<script src = "https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
  $(function () {
	  $('#example1').DataTable()
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1')
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()
  })
</script>
 <script>
function insertData(){
	$(document).ready(function(){
		$('#btnSave').click(function (){
		
		var pname = $('#pname').val();
		var pnumber = $('#pnumber').val();
		var pcategory = $('#pcategory').val();
		var pdescription = $('#pdescription').val();
		var pcompany = $('#pcompany').val();
		var pprice = $('#pprice').val();


		$.ajax({
		url : '<s:url value="/productInsert"></s:url>',
		type : 'POST',
		data : {'pname' : pname , 'pnumber' : pnumber , 'pcategory' : pcategory , 'pdescription' : pdescription , 'pcompany' : pcompany , 'pprice' : pprice},
		
		success : function(data) {
			
		$('#rows').append(data);
		alert("Product: "+pname+" has been successfully inserted.");
		
			}


			})
		
		})
		
	})
}

 </script>

 <script >
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode > 31 && (charCode < 43 || charCode > 57 || charCode==45 || charCode==44 || charCode==47))
        return false;
    return true;
}
</script>
<script>
function printData()
{
   var divToPrint=document.getElementById("productTable");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}

$('button1').on('click',function(){
printData();
})
</script>
<script>

	function updateData(){
		$(document).ready(function(){
			$('#btnUpdate').click(function (){
			var pid = $('#pid').val();
			var pname = $('#pname').val();
			var pnumber = $('#pnumber').val();
			var pcategory = $('#pcategory').val();
			var pdescription = $('#pdescription').val();
			var pcompany = $('#pcompany').val();
			var pprice = $('#pprice').val();


			$.ajax({
			url : '<s:url value="/updateFinish"></s:url>',
			type : 'POST',
			data : {'pid' : pid , 'pname' : pname , 'pnumber' : pnumber , 'pcategory' : pcategory , 'pdescription' : pdescription , 'pcompany' : pcompany , 'pprice' : pprice},
			
			success : function(data) {
				
			
			alert("Product: "+pname+" has been updated successfully, you can go back to product management.");
				}


				})
			
			})
			
		})
		}

</script>
<script>
function checkInput(){
    var product_name = document.getElementById("pname").value;
    var product_number = document.getElementById("pnumber").value;
    var product_description = document.getElementById("pdescription").value;
    var product_price = document.getElementById("pprice").value;
    if(product_name=="" || product_number=="" || product_description=="" || product_price=="")
        {
        alert("Please fill in the blank fields")
        }
    else
        {
    	insertData();
    	
        }
    
    
}
</script>
<script>
function checkInputUpdate(){
    var product_name = document.getElementById("pname").value;
    var product_number = document.getElementById("pnumber").value;
    var product_description = document.getElementById("pdescription").value;
    var product_price = document.getElementById("pprice").value;
    if(product_name=="" || product_number=="" || product_description=="" || product_price=="")
        {
        alert("Please fill in the blank fields")
        }
    else
        {
    	updateData();
    	
        }
    
    
}
</script>
