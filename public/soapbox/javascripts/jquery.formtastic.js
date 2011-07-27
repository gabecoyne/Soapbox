(function($) {
  $.fn.formtasticForm = function(options) {
    this.each(function() {
      new FormtasticForm(this, options);
    });
  };
})(jQuery);

function FormtasticForm(form, options){
  this.form = form;

  //todo: create something that can derive based on form class/id
  this.objectName = options['objectName'] || $(form).attr("class").replace("formtastic ", "");

  this.success = options["success"] || function(){};

  this.listItemFor = function(field){
    return "li#" + this.objectName + "_" + field + "_input";
  }

  var obj = this;
  $(obj.form).submit(function(e){
    e.preventDefault();
    $(this).find('p.inline-errors').remove();
    $.ajax({
      type : 'POST',
      url : $(obj.form).attr("action") + '.json',
      data : $(obj.form).serialize(),
      dataType: "json",
      error : function(req, testStatus, errorThrown){
        if(req.status == 422){
          JSON.parse(req.responseText, function (field, error) {
            $(obj.form).find(obj.listItemFor(field)).append(
              $("<p>").addClass("inline-errors").html(error)
            );
          });
        }
      },     
      success : function(data, theStatus, req){
        obj.success(data[obj.objectName]);
      }
    });   
  });
}

