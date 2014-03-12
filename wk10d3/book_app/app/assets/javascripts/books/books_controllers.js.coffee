
BookAppCtrls = angular.module("BookAppCtrls",[]) 
# BookAppCtrls is what names the module

BookAppCtrls.controller("BooksCtrl",["$scope",
"routeParams",
  ($scope, $routeParams)->
    $scope.message = "Hello World!"
    $scope.bookId = $routeParams.id
    $scope.fakeBooks = [
        id: 1
        title: "How to fake a book"
        desc: "fake fake"
      ,
        id: 2
        title: "Bog adventures"
        desc: "good luck"
        ]
    console.log $scope.fakeBooks
])

BooksAppCtrls.controler("BooksDetailsCtrl", [


])
