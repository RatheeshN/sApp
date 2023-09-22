var app=angular.module('lms',['ngRoute', 'ngAnimate','angularUtils.directives.dirPagination','angular.morris-chart','blueimp.fileupload','angular.filter','ui.tree','ui.bootstrap','colorpicker.module', 'wysiwyg.module','lazy-scroll', 'ui.multiselect','ngFileUpload','ngSanitize','angularjs-dropdown-multiselect','angularFileUpload','ui.bootstrap.datetimepicker', 'ckeditor']);
app.config(['$routeProvider','$locationProvider',function($routeProvider,$locationProvider)
{
    
	$locationProvider.hashPrefix('');
	$routeProvider.
	when('/',{
		templateUrl:'admin/home',
		controller:'home'
		}).
      when('/profile', {
          templateUrl: 'admin/profile',
          controller: 'profile'
      }).
      when('/timeline', {
        templateUrl: 'admin/timeline',
        controller: 'timeline'
       }).
	  when('/student_list', {
          templateUrl: 'admin/student_list',
          controller: 'student_list'
      }).
      when('/employees_list', {
        templateUrl: 'admin/employees_list',
        controller: 'employees_list'
    }).
      when('/tracking', {
        templateUrl: 'admin/tracking',
        controller: 'tracking'
    }).
	  when('/assignment', {
          templateUrl: 'admin/assignment',
          controller: 'assignment'
      }).
      when('/edit_assignment/:ID', {
        templateUrl: 'admin/edit_assignment',
        controller: 'assignment'
      }).
      when('/assignment/:ID', {
        templateUrl: 'admin/scoresheet',
        controller: 'assignment'
      }).
	  when('/elearning', {
          templateUrl: 'admin/elearning',
          controller: 'elearning'
      }).
	  when('/elearning_chapter/:standard_id/:subject_id/:standard/:subject', {
          templateUrl: 'admin/elearning_chapter',
          controller: 'elearning'
      }).
      when('/elearning_content/:standard_id/:subject_id/:standard/:subject/:topic/:topic_name', {
        templateUrl: 'admin/elearning_content',
        controller: 'elearning'
      }).
	  when('/attendance', {
          templateUrl: 'admin/attendance',
          controller: 'attendance'
      }).
      when('/attendance/:register_id', {
        templateUrl: 'admin/register_details',
        controller: 'attendance'
      }).
	  when('/tracking', {
          templateUrl: 'admin/tracking',
          controller: 'tracking'
      }).
	  when('/exam', {
          templateUrl: 'admin/exam',
          controller: 'exam'
      }).
      when('/exam/:exam_id', {
        templateUrl: 'admin/exam_details',
        controller: 'exam'
      }).
      when('/leaves', {
        templateUrl: 'admin/leaves',
        controller: 'leaves'
      }).
      when('/lesson_planner', {
        templateUrl: 'admin/lesson_planner',
        controller: 'lesson_planner'
      }).
	  when('/message', {
          templateUrl: 'admin/message',
          controller: 'message'
      }).
      when('/announcements', {
        templateUrl: 'admin/announcements',
        controller: 'announcements'
      }).
      when('/all_announcements', {
        templateUrl: 'admin/all_announcements',
        controller: 'announcements'
      }).
      when('/todo', {
        templateUrl: 'admin/todo',
        controller: 'todo'
      }).
      when('/assignment', {
        templateUrl: 'admin/assignment',
        controller: 'assignment'
      }).
      when('/support', {
        templateUrl: 'teacher/support',
        controller: 'support'
      }).
      when('/timetable', {
        templateUrl: 'admin/timetable',
        controller: 'timetable'
       }).
      when('/approvals', {
        templateUrl: 'admin/approvals',
        controller: 'approvals'
      }).
      when('/online_classes', {
        templateUrl: 'admin/online_classes',
        controller: 'online_classes'
      }).
      when('/settings', {
        templateUrl: 'admin/settings',
        controller: 'settings'
      })

}]);
app.run(function($rootScope) {
    $rootScope.$on('$routeChangeSuccess', function(next, current){
       
    });
});
app.filter('trusted', ['$sce', function ($sce) {
   return $sce.trustAsResourceUrl;
}]);
//Services
app.factory('services',['$http', function($http) {
    return {
        //Floating Labels
        flabels: function() {
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
        courses: function() {
            return $http({
                method: 'POST',
                url: 'common/get_courses'
                })
        },
         //List Standard
        standards: function(course) {
            return $http({
                method: 'POST',
                url: 'common/get_standard',
                data:{'course':course}
                })
        }
        ,
        //List Division
        divisions: function(standard) {
           return $http({
               method: 'POST',
               url: 'common/get_division',
               data:{'standard':standard}
               })
       },
       //List Subjects
       subjects: function(standard) {
        return $http({
            method: 'POST',
            url: 'common/get_subjects',
            data:{'standard':standard}
            })
        },
    	//List Terms
    	terms: function(terms) {
        return $http({
            method: 'POST',
            url: 'common/get_terms'
            })
        },
        //List Teachers
       teachers: function() {
        return $http({
            method: 'POST',
            url: 'admin/get_teachers',
            })
        },
        inkreaction:function()
        {
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

            function getBackground (item) {
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
                element.click(function(e) {
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
                element.click(function(e) {
                    e.preventDefault();
                    //$(element).tab('show');
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
    "onShown" : function(){success:var audio = $(".success-audio")[0];audio.play();
                           info:var audio = $(".info-audio")[0];audio.play();
                           warning:var audio = $(".warning-audio")[0];audio.play();
                           error:var audio = $(".error-audio")[0];audio.play();
                           

    }
  }
//Dialog
app.directive('ngReallyClick', [function() {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            element.bind('click', function() {
                var message = attrs.ngReallyMessage;
                if (message && confirm(message)) {
                    scope.$apply(attrs.ngReallyClick);
                }
            });
        }
    }
}]);
//Tooltip and Popover
app.directive('toggle', function(){
    return {
      restrict: 'A',
      link: function(scope, element, attrs){
        if (attrs.toggle=="tooltip"){
          $(element).tooltip();
        }
        if (attrs.toggle=="popover"){
          $(element).popover();
        }
      }
    };
  })
  //Enter Key Press
  app.directive('ngEnter', function () {
    return function (scope, element, attrs) {
        element.bind("keydown", function (event) {
            if(event.which === 13) {
                scope.$apply(function (){
                    scope.$eval(attrs.ngEnter);
                });
                event.preventDefault();
            }
        });
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


    function getBackground (item) {
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
//Date Picker
app.directive('datepicker',
    function () {
        return {
            link: function (scope, element, attrs) {
                element.click(function(e) {
                    e.preventDefault();
                    $(element).datepicker({autoclose: true, todayHighlight: true})
                });
            }
        };
    });

//Convert number
app.directive('convertNumber', [function() {
  return {
    require: 'ngModel',
    link: function(scope, el, attr, ctrl) {
      ctrl.$parsers.push(function(value) {
        return parseInt(value, 10);
      });

      ctrl.$formatters.push(function(value) {
        if (value != null) {
          return value.toString();
        };
      });      
    }
  }
}]);

app.directive('autoSaveForm', function($timeout) {
  
    return {
      require: ['^form'],
      link: function($scope, $element, $attrs, $ctrls) {
        
        var $formCtrl = $ctrls[0];
        var savePromise = null;
        var expression = $attrs.autoSaveForm || 'true';
        
        $scope.$watch(function() {
          
          if($formCtrl.$valid && $formCtrl.$dirty) {
            
            if(savePromise) {
              $timeout.cancel(savePromise);
            }
            
            savePromise = $timeout(function() {              
              savePromise = null;              
              // Still valid?              
              if($formCtrl.$valid) {
                
                if($scope.$eval(expression) !== false) {
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
  

//Read More
app.directive('ddTextCollapse', ['$compile', function($compile) {


    return {
        restrict: 'A',
        scope: true,
        link: function(scope, element, attrs) {


            /* start collapsed */
            scope.collapsed = false;


            /* create the function to toggle the collapse */
            scope.toggle = function() {
                scope.collapsed = !scope.collapsed;
            };


            /* wait for changes on the text */
            attrs.$observe('ddTextCollapseText', function(text) {


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
                }
                else {
                    element.empty();
                    element.append(text);
                }
            });
        }
    };
}]);


//login time
$(document).ready(function()
{
    setInterval(function(){
        $.post('admin/update_login_time',function(response)
        {
            $('.time-spend').html(response);
        })
    }, 30000)
})