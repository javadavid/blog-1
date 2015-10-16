<html ng-app="myApp">
<head>
<!-- LIBS CSS -->
<link rel="stylesheet" href="webjars/bootstrap/${bootstrap.version}/css/bootstrap.css">
<link rel="stylesheet" href="styles/animation.css">
<!-- LIBS JS -->
<script src="webjars/angularjs/${angularjs.version}/angular.js"></script>
<script src="webjars/angularjs/${angularjs.version}/angular-resource.js"></script>
<script src="webjars/angularjs/${angularjs.version}/angular-route.js"></script>
<script src="webjars/angularjs/${angularjs.version}/angular-animate.js"></script>
<script src="webjars/angular-ui-bootstrap/${angular-ui-bootstrap.version}/ui-bootstrap-tpls.js"></script>
<!-- YOUR JS -->
<script src="app.js"></script>
</head>
<body>
  <div class="container" ng-controller="AlertCtrl">
    <h1>Person</h1>
    <uib-alert ng-repeat="alert in alerts" type="{{alert.type}}" close="closeAlert($index)">{{alert.msg}}</uib-alert>

<div class="form-horizontal" ng-controller="PersonCtrl">
  <div class="form-group">
    <label class="col-sm-2 control-label">First Name</label>
    <div class="col-sm-10">
      <input class="form-control" placeholder="FirstName" ng-model="person.firstName">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Last Name</label>
    <div class="col-sm-10">
      <input class="form-control" placeholder="Last Name" ng-model="person.lastName">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Birth Year</label>
    <div class="col-sm-10">
      <input class="form-control" placeholder="Birth Year" ng-model="person.birthYear">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Active</label>
    <div class="col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox" ng-model="person.active">
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary" ng-click="update()">
        <span class="glyphicon glyphicon-ok"></span> Update
      </button>
    </div>
  </div>
</div>

  </div>
</body>
</html>