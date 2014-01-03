<!doctype html>
<html lang="cn-ZH" ng-app>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>Awards</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.6/angular.js"></script>
<script src="js/com/award/history.js?v=1"></script>
<script src="js/com/award/AwardCtrl.js?v=1"></script>
<link rel="stylesheet" media="screen" href="css/bootstrap.css">
<link rel="stylesheet" media="screen" href="css/css.css">
</head>

<body>
	<div id="navbar" class="navbar navbar-inverse navbar-fixed-top"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">中大奖</a>
			</div>
		</div>
	</div>
	<div id="main" class="container">
		<div class="row">
			<div class="col-md-7">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">History Records</h3>
					</div>
					<div class="panel-body">
						<table class="table table-bordered" ng-controller="AwardCtrl">
							<tr>
								<th><a href="" ng-click="predicate='n1'; reverse=!reverse">Number1</a>
								</th>
								<th><a href="" ng-click="predicate='n2'; reverse=!reverse">Number2</a>
								</th>
								<th><a href="" ng-click="predicate='n3'; reverse=!reverse">Number3</a>
								</th>
								<th><a href="" ng-click="predicate='n4'; reverse=!reverse">Number4</a>
								</th>
								<th><a href="" ng-click="predicate='n5'; reverse=!reverse">Number5</a>
								</th>
								<th><a href="" ng-click="predicate='n6'; reverse=!reverse">Number6</a>
								</th>
								<th><a href=""
									ng-click="predicate='nBlue'; reverse=!reverse">Blue Number</a>
								</th>
							</tr>

							<tr ng-repeat="rec in awards | orderBy:predicate:reverse">
								<td>{{rec.n1}}</td>
								<td>{{rec.n2}}</td>
								<td>{{rec.n3}}</td>
								<td>{{rec.n4}}</td>
								<td>{{rec.n5}}</td>
								<td>{{rec.n6}}</td>
								<td>{{rec.nBlue}}</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
			<div class="col-md-4">

				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Blue Number Hits</h3>
					</div>
					<div class="panel-body">
						<table class="table table-bordered"
							ng-controller="BlueNumChanceCtrl">
							<tr>
								<th><a href=""
									ng-click="predicate='number'; reverse=!reverse">Number</a>
								</th>
								<th><a href=""
									ng-click="predicate='chance'; reverse=!reverse">Probability</a>
								</th>
							</tr>

							<tr
								ng-repeat="rec in blueNumberChances | orderBy:predicate:reverse">
								<td>{{rec.number}}</td>
								<td>{{rec.chance}}</td>
							</tr>
						</table>
					</div>
				</div>

				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Red Number Hits</h3>
					</div>
					<div class="panel-body">
						<table class="table table-bordered"
							ng-controller="RedNumChanceCtrl">
							<tr>
								<th><a href=""
									ng-click="predicate='number'; reverse=!reverse">Number</a>
								</th>
								<th><a href=""
									ng-click="predicate='chance'; reverse=!reverse">Probability</a>
								</th>
							</tr>

							<tr
								ng-repeat="rec in redNumberChances | orderBy:predicate:reverse">
								<td>{{rec.number}}</td>
								<td>{{rec.chance}}</td>
							</tr>
						</table>
					</div>
				</div>

			</div>
		</div>
</body>
</html>