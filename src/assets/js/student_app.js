var app=angular.module('lms',['ngRoute', 'summernote', 'ngAnimate','angularUtils.directives.dirPagination','angular.morris-chart','angularFileUpload','ui.tree','ui.bootstrap','ngSanitize','lazy-scroll','ui.calendar','ngFileUpload','ngSanitize','mwl.calendar','ngTouch']);
app.config(['$routeProvider','$locationProvider',function($routeProvider,$locationProvider)
{
	$locationProvider.hashPrefix('');
	$routeProvider.
	  when('/',{
		templateUrl:'student/home',
		controller:'home'
		}).
      when('/profile', {
          templateUrl: 'student/profile',
          controller: 'profile'
      }).
      when('/timeline', {
        templateUrl: 'student/timeline',
        controller: 'timeline'
      }).
      when('/timeline/:id', {
        templateUrl: 'student/timeline',
        controller: 'timeline'
      }).
	  when('/todo', {
          templateUrl: 'student/todo',
          controller: 'todo'
      }).
      when('/todo/:todo_id', {
        templateUrl: 'student/todo',
        controller: 'todo'
      }).
	  when('/payment', {
          templateUrl: 'student/payment',
          controller: 'payment'
      }).
      when('/payment/:msg', {
        templateUrl: 'student/payment',
        controller: 'payment'
      }).
      when('/payment_details', {
        templateUrl: 'student/payment_details',
        controller: 'payment'
      }).
	    when('/timetable', {
          templateUrl: 'student/timetable',
          controller: 'timetable'
      }).
      
	  when('/tracking', {
          templateUrl: 'student/tracking',
          controller: 'tracking'
      }).
	  when('/attendance', {
          templateUrl: 'student/attendance',
          controller: 'attendance'
      }).
	  when('/elearning', {
          templateUrl: 'student/elearning',
          controller: 'elearning'
      }).
      when('/elearning_chapter/:subject_id/:subject_name', {
        templateUrl: 'student/elearning_chapter',
        controller: 'elearning'
      }).
      when('/elearning_content/:subject/:topic/:topic_name', {
        templateUrl: 'student/elearning_content',
        controller: 'elearning'
      }).
	  when('/result', {
          templateUrl: 'student/result',
          controller: 'result'
      }).
      when('/classtest_result', {
        templateUrl: 'student/classtest_result',
        controller: 'classtest'
      }).
      when('/extra_result', {
        templateUrl: 'student/extra_result',
        controller: 'extra'
      }).
      when('/lessonplanner', {
          templateUrl: 'student/lessonplanner',
          controller: 'lessonplanner'
      }).
	    when('/assignment', {
          templateUrl: 'student/assignment',
          controller: 'assignment'
      }).
      when('/assignment/:assignment_id', {
        templateUrl: 'student/assignment',
        controller: 'assignment'
      }).
      when('/assignment_submit/:assignment_id', {
        templateUrl: 'student/assignment_submit',
        controller: 'assignment'
      }).
      when('/home_work', {
        templateUrl: 'student/home_work',
        controller: 'home_work'
      }).
      when('/home_work/:home_work_id', {
        templateUrl: 'student/home_work',
        controller: 'home_work'
      }).
      when('/home_work_submit/:home_work_id', {
        templateUrl: 'student/home_work_submit',
        controller: 'home_work'
      }).
	  when('/message', {
          templateUrl: 'student/message',
          controller: 'message'
      }).
      when('/message/:con_id', {
        templateUrl: 'student/message',
        controller: 'message'
      }).
      when('/announcements', {
        templateUrl: 'student/announcements',
        controller: 'announcements'
      }).
     
      when('/announcements/:channel_id', {
        templateUrl: 'student/announcements',
        controller: 'announcements'
      }).
	    when('/view_all_notifications', {
          templateUrl: 'student/view_all_notifications',
          controller: 'view_all_notifications'
      }).
      when('/support', {
        templateUrl: 'teacher/support',
        controller: 'support'
      }).
      when('/online_classes', {
        templateUrl: 'student/online_classes',
        controller: 'online_classes'
      }).
      when('/online_classes_pro', {
        templateUrl: 'student/online_classes_pro',
        controller: 'online_classes_pro'
      }).
      when('/live_class/:id', {
        templateUrl: 'student/live_class',
        controller: 'online_classes_pro'
      }).
      when('/exams_list', {
        templateUrl: 'student/exams_list',
        controller: 'online_exams'
      }).
      when('/exams_questions', {
        templateUrl: 'student/exams_questions',
        controller: 'online_exams'
      }).
      when('/exam_result', {
        templateUrl: 'student/exam_result',
        controller: 'online_exams'
      })

	  //$locationProvider.html5Mode(true);	
}]);
app.run(function ($rootScope, $route, $http) {

    // cancel pending http ajax requests before change view
        $rootScope.$on('$routeChangeStart', function (event, next, current) {       
            
            $http.pendingRequests.forEach(function(request) {
                if (request.cancel) {
                   request.cancel.resolve();
                }
            });
            $('body').removeClass('menubar-visible');
            $('#menubar').data('expanded', false);
        });
       
    });
app.filter('trusted', ['$sce', function ($sce) {
    return $sce.trustAsResourceUrl;
}]);
app.filter('removeSpaces', [function() {
    return function(string) {
        if (!angular.isString(string)) {
            return string;
        }
        return string.replace(/[\s]/g, '');
    };
}])
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
       
        inkreaction:function()
        {
            
        }
    };
}]);


//Dirictives
//Bootstrap Tabs
app.directive('inkReaction',
function()
{
    return {
        link: function (scope, element, attrs) {
                element.click(function(e) {
                    var bound = element.get(0).getBoundingClientRect();
                    var x = e.clientX - bound.left;
                    var y = e.clientY - bound.top;
    
                    var color = getBackground(element);
                    var inverse = (getLuma(color) > 183) ? ' inverse' : '';
                    
                    var ink = $('<div class="ink' + inverse + '"></div>');
                    var btnOffset = element.offset();
                    var xPos = e.pageX - btnOffset.left;
                    var yPos = e.pageY - btnOffset.top;
    
                    ink.css({
                        top: yPos,
                        left: xPos
                    }).appendTo(element);
    
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
})
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
//light Case
app.directive('lightcase',
    function () {
        return {
            link: function (scope, element, attrs) {
                $(element).lightcase();
            }
        };
    });

//Scroll Load
app.directive('pvScrolled', function() {
        return function(scope, elm, attr) {
        var raw = elm[0];
        elm.bind('scroll', function() {
        if (raw.scrollTop + raw.offsetHeight >= raw.scrollHeight) {
        scope.$apply(attr.pvScrolled);
        }
        });
        };
    });

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
app.directive('iframeSetDimensionsOnload', [function(){
    return {
        restrict: 'A',
        link: function(scope, element, attrs){
            element.on('load', function(){
                /* Set the dimensions here, 
                   I think that you were trying to do something like this: */
                   //var iFrameHeight = element[0].contentWindow.document.body.scrollHeight + 'px';
                   var iFrameWidth = '100%';
                   element.css('width', iFrameWidth);
                   element.css('height', iFrameHeight);
            })
        }
    }}])

app.filter( 'safeUrl', [
    '$sce',
    function( $sce ){
        return function(url){
             //not sure which one you need here
             return $sce.trustAsResourceUrl(url)
        }
    }
]);

app.filter('hhmmss', function () {
    return function (time) {
      var sec_num = parseInt(time, 10); // don't forget the second param
      var hours   = Math.floor(sec_num / 3600);
      var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
      var seconds = sec_num - (hours * 3600) - (minutes * 60);
  
      if (hours   < 10) {hours   = "0"+hours;}
      if (minutes < 10) {minutes = "0"+minutes;}
      if (seconds < 10) {seconds = "0"+seconds;}
      var time    = hours+':'+minutes+':'+seconds;
      return time;
    }
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

//login time
$(document).ready(function()
{
    setInterval(function(){
        $.post('student/update_login_time',function(response)
        {
            $('.time-spend').html(response);
        })
    }, 30000)
})



