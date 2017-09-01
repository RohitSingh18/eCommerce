<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file = "Header.jsp" %>
      <form action="logg" method="POST">  
        <div class="container col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-3 col-md-6 col-lg-offset-4 col-lg-4">
            <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>Login</h1>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-user" style="width: auto"></i>
                            </span>
                       
                            <input  type="text" class="form-control" name="user" placeholder="First Name" required="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="glyphicon glyphicon-lock" style="width: auto"></i>
                            </span>
                            <input type="password" class="form-control" name="password" placeholder="Password" required="" />
                        </div>
                    </div>
                    <button id="btnLogin" runat="server" class="btn btn-default" style="width: 100%">
                        Enter<i class="glyphicon glyphicon-log-in"></i>
                    </button>
                </div>
            </div>
        </div>
        </form>
<script type="text/javascript">
</script>
</body>
</html>