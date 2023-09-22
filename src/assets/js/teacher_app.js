var app = angular.module('lms', ['ngRoute', 'ngAnimate', 'angularUtils.directives.dirPagination', 'angular.morris-chart', 'blueimp.fileupload', 'angular.filter', 'ui.tree', 'ui.bootstrap', 'colorpicker.module', 'wysiwyg.module', 'lazy-scroll', 'ui.multiselect', 'ngFileUpload', 'ngSanitize', 'angularjs-dropdown-multiselect', 'angularFileUpload', 'ui.bootstrap.datetimepicker', 'ckeditor', 'dndLists','ui.dateTimeInput']);
app.config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
  $locationProvider.hashPrefix('');
  $routeProvider.
  when('/', {
    templateUrl: 'teacher/home',
    controller: 'home'
  }).
  when('/profile', {
    templateUrl: 'teacher/profile',
    controller: 'profile'
  }).
  when('/timeline', {
    templateUrl: 'teacher/timeline',
    controller: 'timeline'
  }).
  when('/timeline/:id', {
    templateUrl: 'teacher/timeline',
    controller: 'timeline'
  }).
  when('/timetable', {
    templateUrl: 'teacher/timetable',
    controller: 'timetable'
  }).
  when('/todo', {
    templateUrl: 'teacher/todo',
    controller: 'todo'
  }).
  when('/edit_todo/:ID', {
    templateUrl: 'teacher/edit_todo',
    controller: 'todo'
  }).
  when('/assignment', {
    templateUrl: 'teacher/assignment',
    controller: 'assignment'
  }).
  when('/edit_assignment/:ID', {
    templateUrl: 'teacher/edit_assignment',
    controller: 'assignment'
  }).
  when('/assignment/:ID', {
    templateUrl: 'teacher/scoresheet',
    controller: 'assignment'
  }).
  when('/home_work', {
    templateUrl: 'teacher/home_work',
    controller: 'home_work'
  }).
  when('/edit_home_work/:ID', {
    templateUrl: 'teacher/edit_home_work',
    controller: 'home_work'
  }).
  when('/home_work/:ID', {
    templateUrl: 'teacher/home_work_scoresheet',
    controller: 'home_work'
  }).
  when('/elearning', {
    templateUrl: 'teacher/elearning',
    controller: 'elearning'
  }).
  when('/elearning_chapter/:standard_id/:subject_id/:standard/:subject', {
    templateUrl: 'teacher/elearning_chapter',
    controller: 'elearning'
  }).
  when('/elearning_content/:standard_id/:subject_id/:standard/:subject/:topic/:topic_name', {
    templateUrl: 'teacher/elearning_content',
    controller: 'elearning'
  }).
  when('/attendance', {
    templateUrl: 'teacher/attendance',
    controller: 'attendance'
  }).
  when('/attendance/:register_id', {
    templateUrl: 'teacher/register_details',
    controller: 'attendance'
  }).
  when('/tracking', {
    templateUrl: 'teacher/tracking',
    controller: 'tracking'
  }).
  when('/exam', {
    templateUrl: 'teacher/exam',
    controller: 'exam'
  }).
  when('/exam/:exam_id', {
    templateUrl: 'teacher/exam_details',
    controller: 'exam'
  }).
  when('/class_test', {
    templateUrl: 'teacher/class_test',
    controller: 'class_test'
  }).
  when('/class_test/:exam_id', {
    templateUrl: 'teacher/class_test_details',
    controller: 'class_test'
  }).
  when('/extra_activities', {
    templateUrl: 'teacher/extra_activities',
    controller: 'extra_activities'
  }).
  when('/leaves', {
    templateUrl: 'teacher/leaves',
    controller: 'leaves'
  }).
  when('/lesson_planner', {
    templateUrl: 'teacher/lesson_planner',
    controller: 'lesson_planner'
  }).
  when('/create_yearly_plan', {
    templateUrl: 'teacher/create_yearly_plan',
    controller: 'lesson_planner'
  }).
  when('/message', {
    templateUrl: 'teacher/message',
    controller: 'message'
  }).
  when('/message/:con_id', {
    templateUrl: 'teacher/message',
    controller: 'message'
  }).
  when('/view_all_notifications', {
    templateUrl: 'teacher/view_all_notifications',
    controller: 'view_all_notifications'
  }).
  when('/announcements', {
    templateUrl: 'teacher/announcements',
    controller: 'announcements'
  }).
  when('/pending_announcements', {
    templateUrl: 'teacher/pending_announcements',
    controller: 'announcements'
  }).
  when('/support', {
    templateUrl: 'teacher/support',
    controller: 'support'
  }).
  when('/online_classes', {
    templateUrl: 'teacher/online_classes',
    controller: 'online_classes'
  }).
  when('/online_classes_pro', {
    templateUrl: 'teacher/online_classes_pro',
    controller: 'online_classes_pro'
  }).
  when('/live_class/:id', {
    templateUrl: 'teacher/live_class',
    controller: 'online_classes_pro'
  }).
  when('/exams_list', {
    templateUrl: 'teacher/exams_list',
    controller: 'online_exams'
  }).
  when('/exams_questions', {
    templateUrl: 'teacher/exams_questions',
    controller: 'online_exams'
  })

}]);
app.run(function ($rootScope) {
  $rootScope.$on('$routeChangeSuccess', function (next, current) {

  });
});
app.filter('trusted', ['$sce', function ($sce) {
  return $sce.trustAsResourceUrl;
}]);
//Services
app.factory('services', ['$http', function ($http) {
  return {
    //Floating Labels
    flabels: function () {
      $('.floating-label .form-control').on('keyup change', function (e) {
        var input = $(e.currentTarget);
        if ($.trim(input.val()) !== '') {
          input.addClass('dirty').removeClass('static');
        } else {
          input.removeClass('dirty').removeClass('static');
        }
      });

      $('.floating-label .form-control').each(function () {
        var input = $(this);

        if ($.trim(input.val()) !== '') {
          input.addClass('static').addClass('dirty');
        }
      });

      $('.form-horizontal .form-control').each(function () {
        $(this).after('<div class="form-control-line"></div>');
      });
    },
    //List Courses
    courses: function () {
      return $http({
        method: 'POST',
        url: 'common/get_courses'
      })
    },
    //List Standard
    standards: function (course) {
      return $http({
        method: 'POST',
        url: 'common/get_standard',
        data: {
          'course': course
        }
      })
    },
    //List Division
    divisions: function (standard) {
      return $http({
        method: 'POST',
        url: 'common/get_division',
        data: {
          'standard': standard
        }
      })
    },
    //List Subjects
    subjects: function (standard) {
      return $http({
        method: 'POST',
        url: 'common/get_subjects',
        data: {
          'standard': standard
        }
      })
    },
    //List Terms
    terms: function (terms) {
      return $http({
        method: 'POST',
        url: 'teacher/get_terms'
      })
    },
    inkreaction: function () {
      $('.ink-reaction').on('click', function (e) {
        var bound = $(this).get(0).getBoundingClientRect();
        var x = e.clientX - bound.left;
        var y = e.clientY - bound.top;

        var color = getBackground($(this));
        var inverse = (getLuma(color) > 183) ? ' inverse' : '';

        var ink = $('<div class="ink' + inverse + '"></div>');
        var btnOffset = $(this).offset();
        var xPos = e.pageX - btnOffset.left;
        var yPos = e.pageY - btnOffset.top;

        ink.css({
          top: yPos,
          left: xPos
        }).appendTo($(this));

        window.setTimeout(function () {
          ink.remove();
        }, 1500);
      });

      function getBackground(item) {
        // Is current element's background color set?
        var color = item.css("background-color");
        var alpha = parseFloat(color.split(',')[3], 10);

        if ((isNaN(alpha) || alpha > 0.8) && color !== 'transparent') {
          // if so then return that color if it isn't transparent
          return color;
        }

        // if not: are you at the body element?
        if (item.is("body")) {
          // return known 'false' value
          return false;
        } else {
          // call getBackground with parent item
          return this.getBackground(item.parent());
        }
      };

      function getLuma(color) {
        var rgba = color.substring(4, color.length - 1).split(',');
        var r = rgba[0];
        var g = rgba[1];
        var b = rgba[2];
        var luma = 0.2126 * r + 0.7152 * g + 0.0722 * b; // per ITU-R BT.709
        return luma;
      };


    }
  };
}]);

//var directives = angular.module('directives');
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

$(document).ready(function () {
  $('.ink-reaction').on('click', function (e) {
    var bound = $(this).get(0).getBoundingClientRect();
    var x = e.clientX - bound.left;
    var y = e.clientY - bound.top;

    var color = getBackground($(this));
    var inverse = (getLuma(color) > 183) ? ' inverse' : '';

    var ink = $('<div class="ink' + inverse + '"></div>');
    var btnOffset = $(this).offset();
    var xPos = e.pageX - btnOffset.left;
    var yPos = e.pageY - btnOffset.top;

    ink.css({
      top: yPos,
      left: xPos
    }).appendTo($(this));

    window.setTimeout(function () {
      ink.remove();
    }, 1500);
  });


  function getBackground(item) {
    // Is current element's background color set?
    var color = item.css("background-color");
    var alpha = parseFloat(color.split(',')[3], 10);

    if ((isNaN(alpha) || alpha > 0.8) && color !== 'transparent') {
      // if so then return that color if it isn't transparent
      return color;
    }

    // if not: are you at the body element?
    if (item.is("body")) {
      // return known 'false' value
      return false;
    } else {
      // call getBackground with parent item
      return this.getBackground(item.parent());
    }
  };

  function getLuma(color) {
    var rgba = color.substring(4, color.length - 1).split(',');
    var r = rgba[0];
    var g = rgba[1];
    var b = rgba[2];
    var luma = 0.2126 * r + 0.7152 * g + 0.0722 * b; // per ITU-R BT.709
    return luma;
  };
});


//login time
$(document).ready(function () {
  setInterval(function () {
    $.post('teacher/update_login_time', function (response) {
      $('.time-spend').html(response);
    })
  }, 30000)

})

app.filter('customSorter', function () {

  function CustomOrder(item) {
    switch (item) {
      case 'image':
        return 1;

      case 'video':
        return 2;

      case 'audio':
        return 3;
      default:
        return 4;
    }
  }

  return function (items, field) {
    var filtered = [];
    angular.forEach(items, function (item) {
      filtered.push(item);
    });
    filtered.sort(function (a, b) {
      return (CustomOrder(a.type) > CustomOrder(b.type) ? 1 : -1);
    });
    return filtered;
  };
});