var info = [];

function Post(URL, PARAMTERS) {
    //创建form表单
    var temp_form = document.createElement("form");
    temp_form.action = URL;
    //如需打开新窗口，form的target属性要设置为'_blank'
    temp_form.target = "_self";
    temp_form.method = "post";
    temp_form.style.display = "none";
    //添加参数
    for (var item in PARAMTERS) {
        var opt = document.createElement("textarea");
        opt.name = PARAMTERS[item].name;
        opt.value = PARAMTERS[item].value;
        temp_form.appendChild(opt);
    }
    document.body.appendChild(temp_form);
    //提交数据
    temp_form.submit();
}

function add(temp) {
    $("#sub" + temp["id"]).css("display", "inline-block");
    $("#count" + temp["id"]).css("display", "inline-block");
    var newfood = true;
    var num = 0;
    info.forEach(function (value) {
        if(value["id"] == temp["id"]) {
            value["count"]++;
            num = value["count"];
            newfood = false;
        }
    });
    if (newfood) {
        temp["count"] = 1;
        num = 1;
        info.push(temp);
    }
    $("#count" + temp["id"]).text(num);
    InfoUpdate();
    console.log(info);
};

function sub(temp) {
    var num = 0;
    var isDelete = false;
    var deleteIndex = 0;
    info.forEach(function (value, index) {
        if(value["id"] == temp["id"]) {
            value["count"]--;
            num = value["count"];
            if (num <= 0) {
                isDelete = true;
                deleteIndex = index;
                $("#sub" + temp["id"]).css("display", "none");
                $("#count" + temp["id"]).css("display", "none");
            }
            newfood = false;
        }
    });
    if (isDelete) {
        info.splice(deleteIndex, 1);
    } else {
        $("#count" + temp["id"]).text(num);
    }
    InfoUpdate();
    console.log(info);
}

function InfoUpdate() {
    var totalPrice = 0.00;
    var totalCount = 0;
    $(".list-content>ul").empty();
    info.forEach(function (value) {
        totalPrice += parseFloat(value["price"])*parseInt(value["count"]);
        totalCount += parseInt(value["count"]);
        //更新购物车
        $(".list-content>ul").append( '<li class="food"><div><span class="accountName">'+ value["name"]+'</span><span>'+ value["count"] +'</span></div><div><span>￥</span><span class="accountPrice">'+ value["count"]*value["price"] +'</span></div><div class="btn"><button onclick="sub(food' + value["id"] + ');" class="ms2" style="display: inline-block;"><strong></strong></button> <i style="display: inline-block;">'+ value["count"] +'</i><button onclick="add(food' + value["id"] + ');" class="ad2"> <strong></strong></button><i style="display: none;">'+ 5 +'</i></div></li>');
    });
    //底部
    $("#totalpriceshow").text(totalPrice);
    $("#totalcountshow").text(totalCount);
    if(info.length <= 0) {
        $(".right").find("a").addClass("disable");
    } else {
        $(".right").find("a").removeClass("disable");
    }

    console.log(totalPrice);
};

$(".footer>.left").click(function(){
    var content = $(".list-content>ul").html();
    $(".shopcart-list.fold-transition").toggle();
    $(".up1").toggle();
});

$(".footer>.right").click(function () {
    if (info.length > 0) {
        var params = new Array();
        info.forEach(function (value) {
            params.push({ name: value["id"], value: value["count"]});
        });
        Post("check.jsp", params);
    } else {
        alert("还没点菜呢，小老弟！");
    }
})

//清空购物车
$(".empty").click(function () {
    info = [];
    $(".minus").next().text("0");
    $(".minus").hide();
    $(".minus").next().hide();
    InfoUpdate();
});

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
});


function httpPost(URL, PARAMS) {
    var temp = document.createElement("form");
    temp.action = URL;
    temp.method = "post";
    temp.style.display = "none";

    for (var x in PARAMS) {
        var opt = document.createElement("textarea");
        opt.name = x;
        opt.value = PARAMS[x];
        temp.appendChild(opt);
    }

    document.body.appendChild(temp);
    temp.submit();

    return temp;
}
