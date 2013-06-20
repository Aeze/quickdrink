var drinkApp = angular.module('drinkApp', ['ngResource']);

drinkApp.factory('Drinks', function($resource) {
	return $resource("/drinks/:id", {id: "@id"});
});

function DrinkCtrl($scope, Drinks) {
	var drink = Drinks.query(function() {

		function whichDrink() {
			var drinkLength = drink.length;
			var randDrink = Math.floor(Math.random() * drinkLength);
			pickedDrink = drink[randDrink];

			return pickedDrink;
		};

		$scope.drinks = whichDrink();

		$scope.newDrink = function() {
			$scope.drinks = whichDrink();
		};
	});
};