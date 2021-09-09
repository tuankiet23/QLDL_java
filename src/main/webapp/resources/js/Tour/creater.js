
$(document).ready(function () {
    $('#btn-add').click(function () {
        add();
    })
});
function add() {
    $ajax({
        type:'POST',
        dataType:'JSON',
        url:'/admin/tour/addconfirmed',
        data:{
            tour:{
                maTinhtrang:$('#maTinhtrang').val(),
                maLt:$('#maLt').val(),
                maPhuongtien:$('#maPhuongtien').val(),
                tenTour:$('#tenTour').val(),
                lichTrinh:$('#lichTrinh').val(),
                giaNguoiLon:$('#giaNguoilon').val(),
                giaTreem:$('#giaTreem').val(),
                thongTinct:$('#thongTinCT').val(),
                images:$('#images').val(),
                thoiLuong:$('#thoiLuong').val(),
                ngayDi:$('#ngayDi').val(),
                ngayCapnhat:$('#ngayCapnhat').val()
            }
        },
        success:function (result) {
            if(result=="ok"){
                location.replace("admin/tour/index")
            }
        }
    })
}