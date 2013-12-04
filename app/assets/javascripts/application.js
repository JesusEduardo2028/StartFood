// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require bootstrap
//= require rails.validations
//= require rails.validations.simple_form
//= require jquery-fileupload/basic
//= require jasny-bootstrap
//= require jquery-fileupload/vendor/tmpl

$(document).ready(function(){
    $('.carousel').carousel('cycle');
    $("#alerta-registro").toggle()
    $(".alert-success").delay(3000).fadeOut()

});

$("#btn-edit").on("click",function(){
    ("#edit").html("adsf");
});


$(document).ready(function() {
    return $(".plate").click(function() {
        var plate = "#{f}";

        plate = $(this).data('plate');
        return $("#deleteModal").modal('show');
    });
});
