
var csv;
var pollutant = "CO2"
var predictor = "traffic"
var view = "overlay"

$('input, select, textarea').on('focus', function () {
    var curScroll = $(window).scrollTop();
    $('html, body').animate({ scrollTop: curScroll }, 1);
    $('html, body').style.bottom = 0;
});


window.onload = () => {



    $.ajax({
        type: "GET",
        url: "/public/extractedData.csv",
        dataType: "text",
        success: function (data) {
            csv = $.csv.toObjects(data);
            console.log(csv);
            initalize();
        }
    });


};

function startApp() {
    document.getElementById("split").style.display = "flex";
    document.getElementById("single").style.display = "none";
    document.getElementById("start").style.display = "none";
    document.getElementById("intro").style.display = "none";
    change()
}

function startIntro() {

    var wiz = Metro.getPlugin("#intro", "wizard");
    wiz.first();

    updateAxis(0, 20000);
    document.getElementById("split").style.display = "none";
    document.getElementById("intro").style.display = "flex";
    document.getElementById("single").style.display = "none";
    document.getElementById("start").style.display = "none";
    document.getElementById("introDust").style.display = "none";
    document.getElementsByClassName("action-bar")[0].style.bottom = "1rem";

    document.getElementsByClassName("wizard-btn-finish")[0].addEventListener("click", function () {
        document.getElementById("intro").style.display = "none";
        pollutant = "CO2"
        predictor = "traffic"
        view = "overlay";
        updateAxis(csv[6][pollutant], csv[7][pollutant]);
        changeView(view);
    });

    document.getElementById("intro").addEventListener("page", function (e) {
        console.log(e.detail);
        if (e.detail.index === 4) {
            document.getElementsByClassName("action-bar")[0].style.bottom = "1rem";
            document.getElementById("introDust").style.display = "none";
        }
        if (e.detail.index === 5) {
            document.getElementsByClassName("action-bar")[0].style.bottom = "5rem";
            document.getElementById("introDust").style.display = "flex";
            renderIntroDust(10000);
            redraw([{ source: "predicted", value: 10000 }, { source: "observed", value: 10000 }]);
        }
        if (e.detail.index === 6) {
            updateAxis(0, 20000);
            renderIntroDust(20000);
            redraw([{ source: "predicted", value: 20000 }, { source: "observed", value: 20000 }]);
        }
        if (e.detail.index === 7) {
            pollutant = "CO2"
            predictor = "traffic"
            view = "overlay";
            updateAxis(csv[6][pollutant], csv[7][pollutant]);
            changeView("overlay");
        }
        if (e.detail.index === 8) {
            pollutant = "CO2"
            predictor = "traffic"
            view = "overlay";
            updateAxis(csv[6][pollutant], csv[7][pollutant]);
            changeView("dif");
        }
    })
}
//https://gist.github.com/vectorsize/7031902
function translateRange(Input, inputHigh, inputLow, outputHigh, OutputLow) {
    return (OutputLow + (outputHigh - OutputLow) * ((Input - inputLow) / (inputHigh - inputLow)))
}

let dust;
let dust2;
let dust3;
let dust4;
let introDust;

function renderIntroDust(dust) {

    let scene = document.getElementById('introDust');
    updateText("Point density")

    if (introDust) {
        scene.removeChild(introDust)
    }
    introDust = document.createElement('a-entity');
    introDust.setAttribute('position', '0 2.25 -15');
    introDust.setAttribute('id', 'particles ' + 1);
    introDust.setAttribute('particle-system', 'preset: dust; particleCount: ' + dust + ';  size: 3;color: #ff4a03');
    scene.appendChild(introDust);
}
function renderDust(dustP, dustO, low, high, unit) {

    redraw([{ source: "predicted", value: dustP }, { source: "observed", value: dustO }]);
    updateText(pollutant, unit)
    let scene = document.getElementById('1');
    let scene2 = document.getElementById('2');
    let obs = document.getElementById("obs");

    let pre = document.getElementById("pre");
    obs.innerHTML = dustO.substring(0, 7) + " " + unit
    pre.innerHTML = dustP.substring(0, 7) + " " + unit

    if (dust) {
        scene.removeChild(dust)
        scene2.removeChild(dust2)
    }

    dust = document.createElement('a-entity');
    dust.setAttribute('position', '0 2.25 -15');
    dust.setAttribute('id', 'particles ' + 1);
    density = Math.floor(translateRange(dustP, high, low, 20000, 0));
    dust.setAttribute('particle-system', 'preset: dust; particleCount: ' + density + ';  size: 3;color: #ff4a03');
    scene.appendChild(dust);

    dust2 = document.createElement('a-entity');
    dust2.setAttribute('position', '0 2.25 -15');
    dust2.setAttribute('id', 'particles ' + 2);
    density = Math.floor(translateRange(dustO, high, low, 20000, 0));
    dust2.setAttribute('particle-system', 'preset: dust; particleCount: ' + density + '; size: 3;  color: #3e79b8');
    scene2.appendChild(dust2);
    console.log("renderer")
}

function renderDustComparison(dustP, dustO, low, high, unit) {
    let scene = document.getElementById('3');
    console.log(dustP);

    redraw([{ source: "predicted", value: dustP }, { source: "observed", value: dustO }]);
    updateText(pollutant, unit)

    if (dust3) {
        scene.removeChild(dust3)
        scene.removeChild(dust4)
    }
    let base;
    let add;
    let top;
    if (dustP > dustO) {
        base = dustO
        top = dustP
        add = dustP - dustO
        document.getElementById("base").innerHTML = "Observed:"
        document.getElementById("add").innerHTML = "Predicted:"
        document.getElementById("dif1").innerHTML = "Observed"
        document.getElementById("baseValue").innerHTML = dustO.substring(0, 7) + " " + unit
        document.getElementById("value").innerHTML = dustP.substring(0, 7) + " " + unit
        document.getElementById("addValue").innerHTML = add.toString().substring(0, 7) + " " + unit
    }
    else {
        base = dustP
        top = dustO
        add = dustO - dustP
        document.getElementById("add").innerHTML = "Observed:"
        document.getElementById("base").innerHTML = "Predicted:"
        document.getElementById("dif1").innerHTML = "Predicted"
        document.getElementById("value").innerHTML = dustO.substring(0, 7) + " " + unit
        document.getElementById("baseValue").innerHTML = dustP.substring(0, 7) + " " + unit
        document.getElementById("addValue").innerHTML = add.toString().substring(0, 7) + " " + unit
    }

    dust3 = document.createElement('a-entity');
    dust3.setAttribute('position', '0 2.25 -15');
    dust3.setAttribute('id', 'particles ' + 1);
    particle1 = Math.floor(translateRange(base, high, low, 20000, 0));
    console.log(particle1)
    dust3.setAttribute('particle-system', 'preset: dust; particleCount: ' + particle1 + ';' + 'size: 3;' + 'color: #e6e600');
    scene.appendChild(dust3);

    dust4 = document.createElement('a-entity');
    dust4.setAttribute('position', '0 2.25 -15');
    dust4.setAttribute('id', 'particles ' + 2);
    particle2 = Math.floor(translateRange(top, high, low, 20000, 0));
    console.log(particle2)
    dust4.setAttribute('particle-system', 'preset: dust; particleCount: ' + (particle2 - particle1) + ';  size:3; color: #800080');
    scene.appendChild(dust4);
    console.log("renderer")
}

changePollutant = () => {
    pollutant = document.getElementById("pollutant").value;
    updateAxis(csv[6][pollutant], csv[7][pollutant]);
    change();
    closeOptions();
}
changePredictor = () => {
    predictor = document.getElementById("predictor").value;

    change();
    closeOptions();
}

openOptions = () => {
    var charm = Metro.getPlugin("#bottom", "bottomsheet");
    charm.open();
}

closeOptions = () => {
    console.log("close")
    var charm = Metro.getPlugin("#bottom", "bottomsheet");
    charm.close();
}

changeView = (pView) => {
    if (pView) {
        view = pView;
        document.getElementById("view").value = view;
    }
    else {
        view = document.getElementById("view").value;
    }
    if (introDust) {
        var introScene = document.getElementById("introDust");
        introScene.removeChild(introDust);
        introDust = null;
    }
    if (view === "overlay") {
        document.getElementById("split").style.display = "flex"
        document.getElementById("single").style.display = "none"
    }
    else {
        document.getElementById("split").style.display = "none"
        document.getElementById("single").style.display = "flex"
    }
    change();
    closeOptions();
}
change = () => {
    let a, b;
    if (predictor == "traffic") {
        a = 4; b = 2;
    }
    else if (predictor == "sound") {
        a = 3; b = 0;
    }
    else if (predictor == "time") {
        a = 5; b = 2;
    }

    if (view === "overlay") {
        renderDust(csv[a][pollutant], csv[b][pollutant], csv[6][pollutant], csv[7][pollutant], csv[8][pollutant])
    }
    else {
        renderDustComparison(csv[a][pollutant], csv[b][pollutant], csv[6][pollutant], csv[7][pollutant], csv[8][pollutant])
    }

}





