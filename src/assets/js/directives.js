//Tab
app.directive('showtab',
  function () {
    return {
      link: function (scope, element, attrs) {
        element.click(function (e) {
          e.preventDefault();
          $(element).tab('show');
        });
      }
    };
  });
//Accordion
app.directive('accordion',
  function () {
    return {
      link: function (scope, element, attrs) {
        element.click(function (e) {
          e.preventDefault();
          //$(element).tab('show');
        });
      }
    };
  });
//Scroll Load
app.directive('pvScrolled', function () {
  return function (scope, elm, attr) {
    var raw = elm[0];
    elm.bind('scroll', function () {
      if (raw.scrollTop + raw.offsetHeight >= raw.scrollHeight) {
        scope.$apply(attr.pvScrolled);
      }
    });
  };
});
//Date Picker
app.directive('datepicker',
  function () {
    return {
      link: function (scope, element, attrs) {
        element.click(function (e) {
          e.preventDefault();
          $(element).datepicker({
            autoclose: true,
            todayHighlight: true
          })
        });
      }
    };
  });


//Toastr
toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": false,
  "progressBar": true,
  "positionClass": "toast-bottom-right",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut",
  "onShown": function () {
    success: var audio = $(".success-audio")[0];audio.play();
    info: var audio = $(".info-audio")[0];audio.play();
    warning: var audio = $(".warning-audio")[0];audio.play();
    error: var audio = $(".error-audio")[0];audio.play();


  }
}
//Dialog
app.directive('ngReallyClick', [function () {
  return {
    restrict: 'A',
    link: function (scope, element, attrs) {
      element.bind('click', function () {
        var message = attrs.ngReallyMessage;
        if (message && confirm(message)) {
          scope.$apply(attrs.ngReallyClick);
        }
      });
    }
  }
}]);
//Tooltip and Popover
app.directive('toggle', function () {
  return {
    restrict: 'A',
    link: function (scope, element, attrs) {
      if (attrs.toggle == "tooltip") {
        $(element).tooltip();
      }
      if (attrs.toggle == "popover") {
        $(element).popover();
      }
    }
  };
})
//Enter Key Press
app.directive('ngEnter', function () {
  return function (scope, element, attrs) {
    element.bind("keydown", function (event) {
      if (event.which === 13) {
        scope.$apply(function () {
          scope.$eval(attrs.ngEnter);
        });
        event.preventDefault();
      }
    });
  };
});
//Integer
app.directive('integer', function () {
  return {
    require: 'ngModel',
    link: function (scope, ele, attr, ctrl) {
      ctrl.$parsers.unshift(function (viewValue) {
        return parseInt(viewValue, 10);
      });
    }
  };
});
//Only number
app.directive('validNumber', function () {
  return {
    require: '?ngModel',
    link: function (scope, element, attrs, ngModelCtrl) {
      if (!ngModelCtrl) {
        return;
      }

      ngModelCtrl.$parsers.push(function (val) {
        if (angular.isUndefined(val)) {
          var val = '';
        }

        var clean = val.replace(/[^-0-9\.]/g, '');
        var negativeCheck = clean.split('-');
        var decimalCheck = clean.split('.');
        if (!angular.isUndefined(negativeCheck[1])) {
          negativeCheck[1] = negativeCheck[1].slice(0, negativeCheck[1].length);
          clean = negativeCheck[0] + '-' + negativeCheck[1];
          if (negativeCheck[0].length > 0) {
            clean = negativeCheck[0];
          }

        }

        if (!angular.isUndefined(decimalCheck[1])) {
          decimalCheck[1] = decimalCheck[1].slice(0, 2);
          clean = decimalCheck[0] + '.' + decimalCheck[1];
        }

        if (val !== clean) {
          ngModelCtrl.$setViewValue(clean);
          ngModelCtrl.$render();
        }
        return parseInt(clean);
      });

      element.bind('keypress', function (event) {
        if (event.keyCode === 32) {
          event.preventDefault();
        }
      });
    }
  };
});
//light Case
app.directive('lightcase',
  function () {
    return {
      link: function (scope, element, attrs) {

        $(element).lightcase();

      }
    };
  });
//Read More
app.directive('ddTextCollapse', ['$compile', function ($compile) {


  return {
    restrict: 'A',
    scope: true,
    link: function (scope, element, attrs) {


      /* start collapsed */
      scope.collapsed = false;


      /* create the function to toggle the collapse */
      scope.toggle = function () {
        scope.collapsed = !scope.collapsed;
      };


      /* wait for changes on the text */
      attrs.$observe('ddTextCollapseText', function (text) {


        /* get the length from the attributes */
        var maxLength = scope.$eval(attrs.ddTextCollapseMaxLength);


        if (text.length > maxLength) {
          /* split the text in two parts, the first always showing */
          var firstPart = String(text).substring(0, maxLength);
          var secondPart = String(text).substring(maxLength, text.length);


          /* create some new html elements to hold the separate info */
          var firstSpan = $compile('<span>' + firstPart + '</span>')(scope);
          var secondSpan = $compile('<span ng-if="collapsed">' + secondPart + '</span>')(scope);
          var moreIndicatorSpan = $compile('<span ng-if="!collapsed">... </span>')(scope);
          var lineBreak = $compile('<br ng-if="collapsed">')(scope);
          var toggleButton = $compile('<a href class="collapse-text-toggle text-info" ng-click="toggle()"><b>{{collapsed ? "(less)" : "(more)"}}</b></a>')(scope);


          /* remove the current contents of the element
           and add the new ones we created */
          element.empty();
          element.append(firstSpan);
          element.append(secondSpan);
          element.append(moreIndicatorSpan);
          element.append(lineBreak);
          element.append(toggleButton);
        } else {
          element.empty();
          element.append(text);
        }
      });
    }
  };
}]);
app.directive('autoSaveForm', function ($timeout) {

  return {
    require: ['^form'],
    link: function ($scope, $element, $attrs, $ctrls) {

      var $formCtrl = $ctrls[0];
      var savePromise = null;
      var expression = $attrs.autoSaveForm || 'true';

      $scope.$watch(function () {

        if ($formCtrl.$valid && $formCtrl.$dirty) {

          if (savePromise) {
            $timeout.cancel(savePromise);
          }

          savePromise = $timeout(function () {
            savePromise = null;
            // Still valid?              
            if ($formCtrl.$valid) {

              if ($scope.$eval(expression) !== false) {
                console.log('Form data persisted -- setting prestine flag');
                $formCtrl.$setPristine();
              }

            }

          }, 500);
        }

      });
    }
  };

});