
var csv;
var pollutant= "CO2"
var predictor= "traffic"

window.onload = () => {


    
    $.ajax({
        type: "GET",
        url: "/public/GemittelteWerte.csv",
        dataType: "text",
        success: function(data) {csv = $.csv.toObjects(data);console.log(csv)}
     });
    
};
function translateRange(Input , inputHigh , inputLow , outputHigh , OutputLow) {

	return ((Input - inputLow) / (inputHigh - inputLow)) *
		(outputHigh - OutputLow) + OutputLow;
}
let dust;
let dust2;
function renderDust(dustP, dustO, low, high, unit) {
   let scene = document.getElementById('1');
   let scene2 = document.getElementById('2');
   let obs= document.getElementById("obs");

   let pre= document.getElementById("pre");
   obs.innerHTML= dustO.substring(0,7) + " " + unit
   pre.innerHTML= dustP.substring(0,7) + " " + unit

   if(dust){
   scene.removeChild(dust)
   scene2.removeChild(dust2)
   }

   dust = document.createElement('a-entity');
   dust.setAttribute('position', '0 2.25 -15');
   dust.setAttribute('id', 'particles ' + 1);
   pm10ValueVisualized = Math.floor(translateRange(dustP, high, low, 20000, 0));
   console.log(pm10ValueVisualized)
   dust.setAttribute('particle-system', 'preset: dust; particleCount: ' + pm10ValueVisualized + ';  size: 2;color: #61210B, #61380B, #3B170B');
   scene.appendChild(dust);

   dust2 = document.createElement('a-entity');
   dust2.setAttribute('position', '0 2.25 -15');
   dust2.setAttribute('id', 'particles ' + 2);
   pm10ValueVisualized = Math.floor(translateRange(dustO, high, low, 20000, 0));
   console.log(pm10ValueVisualized)
   dust2.setAttribute('particle-system', 'preset: dust; particleCount: ' + pm10ValueVisualized + '; size: 2;  color: #3e79b8, #3e91b8, #3eaab8');
   scene2.appendChild(dust2);
   console.log("renderer")
}

changePollutant = () => {
    pollutant= document.getElementById("pollutant").value
    change();
}
changePredictor = () => {
    predictor= document.getElementById("predictor").value
    change();
}

openOptions= () =>{
    var charm = Metro.getPlugin("#bottom", "bottomsheet");
    charm.open();
}

closeOptions= () =>{
    console.log("close")
    var charm = Metro.getPlugin("#bottom", "bottomsheet");
    charm.close();
}

change = () => {
    if(predictor== "traffic"){
        renderDust(csv[4][pollutant], csv[1][pollutant], csv[6][pollutant], csv[7][pollutant], csv[8][pollutant])
    }
    else if(predictor== "sound"){
        renderDust(csv[3][pollutant], csv[0][pollutant], csv[6][pollutant], csv[7][pollutant], csv[8][pollutant])
    }
    else if(predictor== "time"){
        renderDust(csv[5][pollutant], csv[2][pollutant], csv[6][pollutant], csv[7][pollutant], csv[8][pollutant])
    }
}
