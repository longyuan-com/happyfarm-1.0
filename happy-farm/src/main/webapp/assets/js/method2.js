/*根据id获取对象*/
function $(str) {
    return document.getElementById(str);
}
 
var btn = document.getElementsByClassName('met1')[0];
var prov = $('prov');
 
 
/*用于保存当前所选的省市区*/
var current = {
    prov: ''
};
 
/*自动加载省份列表*/
(function showProv() {
    btn.disabled = true;
    var len = provice.length;
    for (var i = 0; i < len; i++) {
        var provOpt = document.createElement('option');
        provOpt.innerText = provice[i]['name'];
        provOpt.value = i;
        prov.appendChild(provOpt);
    }
})();