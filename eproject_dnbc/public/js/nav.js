function openNav() {
    document.getElementById("sideNavigation").style.width = "265px";
    document.getElementById("sideNavigation").style.opacity = "1";
    document.getElementById("close-nav").style.display = "block";
}

function closeNav() {
    document.getElementById("sideNavigation").style.width = "0";
    document.getElementById("site-wall").style.opacity = "1";
    document.getElementById("close-nav").style.display = "none";
}
