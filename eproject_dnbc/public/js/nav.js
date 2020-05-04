function openNav() {
    document.getElementById("sideNavigation").style.width = "400px";
    document.getElementById("sideNavigation").style.opacity = "1";
    document.getElementById("close-nav").style.display = "block";
}

function closeNav() {
    document.getElementById("sideNavigation").style.width = "0";
    document.getElementById("site-wall").style.opacity = "1";
    document.getElementById("close-nav").style.display = "none";
}
function openSub() {
    document.getElementById("subnav").style.display = "block";
}
function closeSub() {
    document.getElementById("subnav").style.display = "none";
}