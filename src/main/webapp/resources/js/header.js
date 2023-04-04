/**
 * 
 */
var member_id = $('#member_id').val();
			$('#ticketing').click(function(){
				if(!member_id){
					alert("로그인이 필요합니다");
					location.href="login";
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

$(".logout").click(function(){
	Swal.fire({
		   title: '로그아웃 하시겠습니까?',
		   icon: 'warning',
		   
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
		   confirmButtonText: '로그아웃', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   
		   reverseButtons: false, // 버튼 순서 거꾸로
		   
		}).then(result => {
		   // 만약 Promise리턴을 받으면,
		   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
			   location.href="logout";
		   }
		});     
});