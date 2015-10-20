/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$('.info-social').hide();
function share_vide() {
    $('.info-social').show();
}

function share_facebook(url, title, desc) {
    var winTop = (screen.height / 2) - (winHeight / 2);
    var winLeft = (screen.width / 2) - (winWidth / 2);
    window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + desc + '&p[url]=' + url + 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0');

}

function share_twitter(url) {
    window.open("https://twitter.com/share?url=" + url);
}
function like_video(id) {
    $.post('/videos/checksession', {id: id}, function (data) {
        if (data == 'false') {
            $.growl.warning({title: "Thông báo", message: "Bạn phải đăng nhập"});
        } else {
            $.growl.notice({title: "Thông báo", message: "Bạn đã thích video này"});
        }
    });
}