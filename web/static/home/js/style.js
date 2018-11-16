var info;
$(function () {
    $("#left li:first-child").addClass("active");
    $(".subFly").hide();
    $(".con>div").hide();
    $(".con>div:eq(0)").show();
    //切换菜类型
    $(".left-menu li").click(function() {
        $(this).addClass("active").siblings().removeClass("active");
        var n = $(".left-menu li").index(this);
        $(".left-menu li").index(this);
        $(".con>div").hide();
        $(".con>div:eq(" + n + ")").show();
    });

})

var foodInfo = new Request("parts/foods.jsp");
function getFoodInfo() {
    fetch(foodInfo).then(function(response) {
        return response.json().then(function(json) {
            for (var i = 0; i < json.data.length; i++) {
                info = json;
                var elm = document.getElementById("menu");
                console.log(elm);
                if(!document.getElementById(json.data[i].en_type)) {
                    elm.innerHTML += '<div class="right-con con-active" style="display: none;"><ul id="' + json.data[i].en_type + '"></ul></div>';
                    var menutitle = document.getElementById("menutitle");
                    menutitle.innerHTML += '<li><span>' + json.data[i].foodType + '</span></li>';
                }
                var inelm = document.getElementById(json.data[i].en_type);
                console.log(inelm);
                inelm.innerHTML += ("<li>" +
                    '<div class="menu-img"><img src="../../static/home/img/pic.png" width="55" height="55"></div>\
                    <div class="menu-txt">\
                    <h4 id="1" class="foodName">' + json.data[i].name + '</h4>\
                    <p class="list1">' + json.data[i].foodType + '</p>\
                    <p class="list2">\
                    <b>￥</b><b>' + json.data[i].price + '</b>\
                    </p><div class="btn">\
                    <button class="minus">\
                    <strong></strong>' +
                    '</button>' +
                    '<i>0</i>' +
                    '<button onclick="addfood(' + json.data[i].id + ');" class="add">' +
                    '<strong></strong>' +
                    '</button>' +
                    '<i class="price">28</i>' +
                    '</div>' +
                    '</div></li>');
            }
        });
    });
};
getFoodInfo();