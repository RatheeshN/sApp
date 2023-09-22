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
      }
    }
}])