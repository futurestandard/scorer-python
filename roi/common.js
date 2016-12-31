$(function(){
  // canvas object
  var canvas = new fabric.Canvas('canvas');

  // Convert object for Python
  var convert_object = function(object){
    switch(object['type']){
      case 'rect':
        return convert_rect_object(object);
      break;

      case 'line':
        return convert_line_object(object);
      break;

      case 'circle':
        return convert_circle_object(object);
      break;
    }
  };

  // Convert rect object for Python
  var convert_rect_object = function(object){
    var start = { x: object.left, y: object.top };
    var end_x = object.left + object.width;
    var end_y = object.top + object.height;
    var end = { x: end_x, y: end_y};    
    return {
      type: 'rect',
      width: object.width,
      height: object.height,
      points: [start, end]
    };
  };

  // Convert line object for Python
  var convert_line_object = function(object){
    console.log('convert_line_object', object);
    var theta = object.angle * Math.PI / 180;
    var radius = object.width / 2;
    var start = { x: object.left, y: object.top };
    var end = { x: object.left + Math.cos(theta) * radius * 2, y: object.top + Math.sin(theta) * radius * 2};    
    return {
      type: 'line',
      points: [start, end]
    };
  };

  // Convert circle object for Python
  var convert_circle_object = function(object){
    console.log('convert_circle_object', object);
    var radius = object.radius * object.scaleX;
    return {
      type: 'circle',
      // center
      points: { x: object.left + radius, y: object.top + radius },
      // radius
      radius: radius
    };
  };

  // Remove background image objects
  var remove_background_image = function(object){
    console.log('remove_background_image', object);
    return object;
  };

  // Draw line
  $('.line').on('click', function(){
    var line = new fabric.Line([0, 100, 500, 100], {
        stroke: 'red',
        fill: 'red',
        centeredScaling: true,
        strokeWidth: 3,
        scaleX: 1,
        scaleY: 1,
        centeredScaling: false
    });
    canvas.add(line);
  });

  // Draw rect
  $('.rect').on('click', function(){
    var rect = new fabric.Rect({
      left: 50,
      top: 50,
      width: 100,
      height: 100,
      fill: 'rgba(0, 0, 255, 0.5)',
      stroke: 'blue',
      strokeWidth: 3,
      padding: 10,
      scaleX: 1,
      scaleY: 1,
      hasRotatingPoint: false
    });

    canvas.add(rect);
  });

  // Draw circle
  $('.circle').on('click', function(){
    var circle = new fabric.Circle({
      left: 100,
      top: 100,
      radius: 100,
      fill: 'rgba(255, 0, 255, 0.5)',
      stroke: 'pink',
      strokeWidth: 3,
      padding: 10,
      scaleX: 1,
      scaleY: 1,
      hasRotatingPoint: false
    });
    circle.setControlsVisibility({
      ml: false,
      mr: false,
      mt: false,
      mb: false
    });

    canvas.add(circle);
  });

  // Change size function
  fabric.Object.prototype.resizeToScale = function () {
    switch (this.type) {
        case "line":
        case "rect":
            this.width *= this.scaleX;
            this.height *= this.scaleY;
            this.scaleX = 1;
            this.scaleY = 1;
          break;
        default:
            break;
    }
    setTimeout(function(){
      canvas.renderAll();
    }, 1000);
  }

  // Output json file
  $('.json').on('click', function(){
    var objects = new Array();
    var _objects = canvas.getObjects();

    for(var i = 0; i < _objects.length; ++i){
      console.log(convert_object(_objects[i]));
      objects.push(convert_object(_objects[i]));
    }

    $.post('boot.php', { json: JSON.stringify({objects: (objects), _canvas: JSON.stringify(canvas)}) }, function(data){
      if(data == null || data == ""){
        alert('failed');
      } else {
        alert('Success');
      }
    });
  });
  // On image save
  $('.on').on('click', function(){
    //alert('on save?');
    $.get('on.php', {},function(data){
        //alert(data);
        $('.onimg').attr("src","on.png" + "?num="+Math.floor( Math.random() * 10000 ))
    });
  });

  // Off Image save
  $('.off').on('click', function(){
    //alert('off save?');
    $.get('off.php', {}, function(data){
        //alert(data);
        $('.offimg').attr("src","off.png" + "?num="+Math.floor( Math.random() * 10000 ))
    });
  });    

  // Load json file
  $('.load_json').on('click', function(){
    // Get json file
    $.get('boot.php', {}, function(data){
      canvas.loadFromJSON(data['_canvas']);
      if(data == null || data == ""){
        alert('failed');
      }
    }, 'json');
  }).click();

  // Delete objects
  $('.delete').on('click', function(){
    deleteObjects();
  });

  // Change scale
  function deleteObjects(){
    var activeObject = canvas.getActiveObject(),
    activeGroup = canvas.getActiveGroup();
    if (activeObject) {
      canvas.remove(activeObject);
    } else if (activeGroup) {
      var objectsInGroup = activeGroup.getObjects();
      canvas.discardActiveGroup();
      objectsInGroup.forEach(function(object) {
        canvas.remove(object);
      });
    }
  }
  canvas.on('object:modified', function (e) {
    var _objects = canvas.getObjects();
    for(var i = 0; i < _objects.length; ++i){
      _objects[i].resizeToScale();
    }
  });
  canvas.on('mouse:up', function (e) {
    canvas.trigger('object:modified');
  });

  // down delete key
  $(window).keyup(function(e){
    if(e.keyCode != 72 && $('.display').val() == 'Show'){
      return;
    }
    switch(e.keyCode){
      case 8:
      case 46:
        // delete key
        deleteObjects();
      break;

      case 72:
        $('.display').click();
      break;

      case 76:
        // L key
        $('.line').click();
      break;

      case 82:
        // L key
        $('.rect').click();
      break;

      case 67:
        // L key
        $('.circle').click();
      break;

      case 83:
        // S key
        $('.json').click();
      break;

      case 73:
        // I key
        $('.load_json').click();
      break;
    }
  });

  // display
  var _tmp_canvas = '';
  $('.display').on('click', function(){
    if($(this).val() == 'Show'){
      $(this).val('Hide');
      $('input:not(.display)').prop('disabled', false);
      canvas.loadFromJSON(_tmp_canvas);
    } else {
      $(this).val('Show');
      $('input:not(.display)').prop('disabled', true);

      _tmp_canvas = canvas.toJSON();
      
      canvas.clear();
      canvas.setBackgroundImage(_background_image, canvas.renderAll.bind(canvas), {
          backgroundImageStretch: true
      });
    }
    canvas.renderAll();
  });

  // Draw background images
  var _background_image;
  setInterval(function(){
      $.ajax({
      url: "../reload_image.php"
  }).done(function(data){
    _background_image = data.replace('<figure><img src="', '').replace('" class="active" alt="video0-latest" height="240" width="320" /><figcaption>video0-latest</figcaption></figure>', '').replace('" class="active" alt="video0-latest" height="480" width="640" /><figcaption>video0-latest</figcaption></figure>', '');
    canvas.setBackgroundImage(_background_image, canvas.renderAll.bind(canvas), {
        backgroundImageStretch: true
    });
  });

  }, 1000);

});
