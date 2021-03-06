'use strict';

app.factory("FileService", function(config, $resource, $location, $translate, Upload, $log) {
  var apiUrl = $location.protocol() + "://" + $location.host() + ":" + $location.port() + config.apiEndPoint;
  var service = $resource(apiUrl + "files/:id", null, {
    update : {
      method : 'PUT'
    }
  });
  // ng-file-upload uses FileService.create method
  service.upload = function upload(file, success, failure) {
    $log.debug('FileService.upload');
    Upload.http({
      url : apiUrl + "files",
      data : {
        filename : file.name,
        mimeType : file.type,
        content : file.bytes,
        createTime : file.lastModified,
        size : file.size
      }
    }).then(success, failure);
  }
  return service;
});
