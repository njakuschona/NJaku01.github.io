

window.onload = () => {

    renderDust(19, 12);

};
function translateRange(Input , inputHigh , inputLow , outputHigh , OutputLow) {

	inputHigh = inputHigh ? inputHigh : (this.inputHigh ? this.inputHigh : 65);
	inputLow = inputLow ? inputLow : (this.inputLow ? this.inputLow : 0);

	outputHigh =  outputHigh ? outputHigh : 1;
	OutputLow = OutputLow ? OutputLow : 0;

	return ((Input - inputLow) / (inputHigh - inputLow)) *
		(outputHigh - OutputLow) + OutputLow;
}
let dust;
let dust2;
function renderDust(dustC, dustM) {
   let scene = document.getElementById('1');

   if(dust){
   scene.removeChild(dust)
   }
   let base;
   let add;
   if(dustC  > dustM){
        base=dustM
        add= dustC-dustM
   }
   else{
       base = dustC
       add = dustM-dustC
   }

   dust = document.createElement('a-entity');
   dust.setAttribute('position', '0 2.25 -15');
   dust.setAttribute('id', 'particles ' + 1);
   pm10ValueVisualized = Math.floor(translateRange(base, 20, 0, 10000, 0));
   console.log(pm10ValueVisualized)
   dust.setAttribute('particle-system', 'preset: dust; particleCount: ' + pm10ValueVisualized + ';' + 'size: 2;' + 'color: #61210B, #61380B, #3B170B');
   scene.appendChild(dust);

   dust2 = document.createElement('a-entity');
   dust2.setAttribute('position', '0 2.25 -15');
   dust2.setAttribute('id', 'particles ' + 2);
   pm10ValueVisualized = Math.floor(translateRange(add, 20, 0, 10000, 0));
   console.log(pm10ValueVisualized)
   dust2.setAttribute('particle-system', 'preset: dust; particleCount: ' + pm10ValueVisualized + ';  size:2; color: #3e79b8, #3e91b8, #3eaab8');
   scene.appendChild(dust2);
   console.log("renderer")
}

changePollutant = () => {
    renderDust(20, 0)
}

function getDistance() {
    const distanceMsg = document.querySelector('[gps-entity-place]').getAttribute('distanceMsg');
    console.log(distanceMsg);   // "890 meters"
    const text = document.getElementById('distance');
    text.innerHTML=distanceMsg;
}