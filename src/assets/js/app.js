var app = angular.module('lms', 
['ngRoute', 
'ngAnimate', 
'angularUtils.directives.dirPagination', 
'angular.morris-chart', 
'blueimp.fileupload', 
'angular.filter', 
'ui.tree', 
'ui.bootstrap', 
'colorpicker.module', 
'wysiwyg.module', 
'lazy-scroll', 
'ui.multiselect', 
'ngFileUpload', 
'ngSanitize', 
'angularjs-dropdown-multiselect', 
'angularFileUpload', 
'ui.bootstrap.datetimepicker', 
'ckeditor', 
'dndLists',
'ui.calendar',
'mwl.calendar',
'ngTouch'
]);

app.filter('trusted', ['$sce', function ($sce) {
    return $sce.trustAsResourceUrl;
  }]);
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