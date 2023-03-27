/**
 * 
 */
var member_id = $('#member_id').val();
			$('#ticketing').click(function(){
				if(!member_id){
					swal("","로그인이 필요합니다","error").then(()=>{
					window.location.href="login";
					});
				}else{
				$.ajax({
					type:"POST",
					url:"ticket",
					data:{},
					success :function(){							
							window.location.href="ticket";
					}
				});
				}
			});