function OnShowTimeButtonClick(s, e) {
    alert(GetCurrentTimeString());
}
function GetCurrentTimeString() {
    var now = new Date();
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();

    minutes = checkTime(minutes);
    seconds = checkTime(seconds);
    return hours + ":" + minutes + ":" + seconds;
}

function checkTime(i) {
    return i < 10 ? "0" + i : i;
}