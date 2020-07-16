


window.onload = () => {
    //renderDust()
};
function translateRange(Input , inputHigh , inputLow , outputHigh , OutputLow) {

	inputHigh = inputHigh ? inputHigh : (this.inputHigh ? this.inputHigh : 65);
	inputLow = inputLow ? inputLow : (this.inputLow ? this.inputLow : 0);

	outputHigh =  outputHigh ? outputHigh : 1;
	OutputLow = OutputLow ? OutputLow : 0;

	return ((Input - inputLow) / (inputHigh - inputLow)) *
		(outputHigh - OutputLow) + OutputLow;
}

function renderDust() {
   let scene = document.querySelector('a-scene');

   let dust = document.createElement('a-entity');
   dust.setAttribute('position', '0 2.25 -15');
   dust.setAttribute('id', 'particles ' + 1);
   pm10ValueVisualized = Math.floor(translateRange(5, 65, 0, 200000, 0));
   dust.setAttribute('particle-system', 'preset: dust; particleCount: ' + pm10ValueVisualized + ';  color: #61210B, #61380B, #3B170B');
   scene.appendChild(dust);
   console.log("renderer")
}

function getDistance() {
    const distanceMsg = document.querySelector('[gps-entity-place]').getAttribute('distanceMsg');
    console.log(distanceMsg);   // "890 meters"
    const text = document.getElementById('distance');
    text.innerHTML=distanceMsg;
}