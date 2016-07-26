//当前位置 wrap

function show(obj) {
    var a = document.getElementById(obj);
    a.style.display = "block";
}

function hide(obj) {
    var b = document.getElementById(obj);
    b.style.display = "none";
}

function QueryScore(obj) {
    if (event.currentTarget == document.getElementById("text")) {
        var home = document.getElementById(obj);
        home.style.display = "none";

        var score = document.getElementById("wrap1");
        score.style.display = "block";

        var announ = document.getElementById("announ")
        announ.innerHTML = "成绩查询";
    }
    var btn = document.getElementById("text");
   
}


function QueryScore_Click() {
    even.stopPropagation();
    alert("haha");
}
