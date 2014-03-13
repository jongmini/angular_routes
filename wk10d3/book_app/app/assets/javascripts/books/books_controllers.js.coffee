
BookAppCtrls = angular.module("BookAppCtrls",[]) 

BookAppCtrls.controller("BooksCtrl", ["$scope", "$http",
  ($scope, $http)->
      $http.get("/books.json").
        success((newBooks)->
          console.log(newBooks)
          $scope.fakeBooks = $scope.fakeBooks.concat(newBooks)
      )
      $scope.message = "Hello World!"
      $scope.fakeBooks = [
          id: 1
          title: "How to fake a book"
          desc: "fake fake"
        ,
          id: 2
          title: "Bog adventures"
          desc: "good luck"
          ]

])

BookAppCtrls.controller("BookDetailsCtrl",  ["$scope","$routeParams",($scope, $routeParams)->
    $scope.bookId = $routeParams.id


])
