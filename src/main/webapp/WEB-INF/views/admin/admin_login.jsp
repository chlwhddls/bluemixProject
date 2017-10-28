<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"
	type="text/javascript"></script>
	
<link rel="stylesheet" href="https://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="https://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<link rel="stylesheet" type="text/css"	href="/resources/bootstrap/bootswatch.css" />
<link rel="stylesheet/less" type="text/css"	href="/resources/bootstrap/bootswatch.less" />
<link rel="stylesheet/less" type="text/css" href="/resources/bootstrap/variables.less" />

<script type="text/javascript" src="/resources/js/headerLocation.js"></script> 
<script type="text/javascript" src="/resources/loadingBar/ajaxLoading.js"></script>   

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.progress-bar {
    color: #333;
} 

/*
Reference:
http://www.bootstrapzen.com/item/135/simple-login-form-logo/
*/

body{
    background-color:#f5f5f5;
}
.form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
    margin-top: 80px;
    padding: 40px 0px 20px 0px;
    background-color: #ffffff;
    box-shadow: 0 2px 10px 0 rgba(0, 0, 0, 0.16);
}
.login-title
{
    color: #555;
    font-size: 22px;
    font-weight: 400;
    display: block;
}
.profile-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.select-img
{
	border-radius: 50%;
    display: block;
    height: 75px;
    margin: 0 30px 10px;
    width: 75px;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
.select-name
{
    display: block;
    margin: 30px 10px 10px;
}

.logo-img
{
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}


</style>

<html>
<head>
<title>관리자 로그인234</title>

</head>
	<body>
	<div class="header">
		<jsp:include page="../headerAndFooter/header.jsp"></jsp:include>
		</div>
		
		<div class="container">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
                <div id="my-tab-content" class="tab-content">
						<div class="tab-pane active" id="login">
               		    <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
               			<form class="form-signin" action="" id="adminLogin" name="adminLogin" method="POST">
               				<input type="text" class="form-control" placeholder="Username" id="id" name="id" required autofocus>
               				<input type="password" class="form-control" placeholder="Password" id="pw" name="pw" required>
               				<input type="submit" class="btn btn-lg btn-default btn-block" onClick="loginBtn()" value="Sign In" />
               			</form>
					</div>
					</div>
            </div>
        </div>
    </div>
	
	<jsp:include page="../headerAndFooter/footer.jsp"></jsp:include>
	
	</body>
</html>

<script type="text/javascript">

function loginBtn(){
    $.ajax({
        url : "/AdminLogin/LoginCheck",
        dataType : "text",
        async : false,
        type : "POST",
        data : $('#adminLogin').serializeArray(),
        success: function(data) {
            if(data=="1") {
                $("#adminLogin").attr("action","/AdminBoarding/ReservationHistory");
        		$("#adminLogin").submit();
            }
            else{
                alert("loginFail");
            }
        },
        error:function(request,status,error){
            alert("code:"+request.status+"\n"+"error:"+error);
        }
    });
}
</script>






