BookApp = angular.module("BookApp",[
  "BookAppCtrls",
  "BookRouter"
])

BookRouter = angular.module("BookRouter",[
  "ngRoute"
])

BookRouter.config(["$routeProvider",
  ($routeProvider)->

    $routeProvider.when("/",
      templateUrl: "/books/",
      controller: "BooksCtrl"
    ).
    when("/books/:id",
      templateUrl: "books/show",
      controller: "BooksCtrl"
    )

])


# moved to books_controllers
# BookApp.controller("BooksCtrl",["$scope",
#   ($scope)->
#     $scope.message = "Hello World!"
# ])




