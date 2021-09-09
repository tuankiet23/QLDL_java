$(document).ready(function(){
    loadData();
});

function loadData(){
    $.ajax(
        {
            type:'GET',
            dataType: 'JSON',
            url:'/home/getAll',
            success: function(result){
                console.log(result);

                var html='';
                $.each(result,function(i,e) {
                    html +='<div class="col-sm-6 col-md-6">'+
                        '<div class="main-block cruise-block">'+
                        '<div class="row">'+
                        '<div class="col-sm-12 col-md-6 col-md-push-6 no-pd-l">'+
                        '<div class="main-img cruise-img">'+
                        '<a href="#">'+
                        '<img src="'+e.images+'" class="img-responsive" alt="cruise-img"/>'+
                        '<div class="cruise-mask">'+
                        '<p>7 Nights, 6 Days</p>'+
                    '</div><!-- end cruise-mask -->'+
                    '</a>'+
                    '</div><!-- end cruise-img -->'+
                    '</div><!-- end columns -->'+

                    '<div class="col-sm-12 col-md-6 col-md-pull-6 no-pd-r">'+
                        '<div class=" main-info cruise-info">'+
                        '<div class="main-title cruise-title">'+
                        '<a href="#">'+e.tenTour+'</a>'+
                    '<p>From: Italy to Spain</p>'+
                    '<div class="rating">'+
                        '<span><i class="fa fa-star orange"></i></span>'+
                    '<span><i class="fa fa-star orange"></i></span>'+
                    '<span><i class="fa fa-star orange"></i></span>'+
                    '<span><i class="fa fa-star orange"></i></span>'+
                    '<span><i class="fa fa-star grey"></i></span>'+
                    '</div><!-- end rating -->'+
                    '<span class="cruise-price">$950.00</span>'+
                    '</div><!-- end cruise-title -->'+
                    '</div><!-- end cruise-info -->'+
                    '</div><!-- end columns -->'+
                    '</div><!-- end row -->'+
                    '</div><!-- end cruise-block -->'+
                    '</div><!-- end columns -->'
                });
                $('#tour-vip div').empty().append(html);
            }
        }
    );
}