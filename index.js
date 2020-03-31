


window.onload = () => {
    let places = staticLoadPlaces();
    renderPlaces(places);
};

function staticLoadPlaces() {
   return [
       {
           name: 'Magnemite',
           location: {
               lat: 44.496470,
               lng: 11.320180,
           }
       },
   ];
}

function renderPlaces(places) {
   let scene = document.querySelector('a-scene');

   places.forEach((place) => {
       let latitude = place.location.lat;
       let longitude = place.location.lng;

       let model = document.createElement('a-text');
       model.setAttribute('gps-entity-place', `latitude: ${latitude}; longitude: ${longitude};`);
       model.setAttribute('value', 'Ich hab dich lieb');
       model.setAttribute('lock-at', '[gps-camera]');
       model.setAttribute('scale', '120 120 120');

       model.addEventListener('loaded', () => {
           window.dispatchEvent(new CustomEvent('gps-entity-place-loaded'))
       });

       scene.appendChild(model);
   });

   const distanceMsg = document.querySelector('[gps-entity-place]').getAttribute('distanceMsg');
    console.log(distanceMsg);   // "890 meters"
}

function getDistance() {
    const distanceMsg = document.querySelector('[gps-entity-place]').getAttribute('distanceMsg');
    console.log(distanceMsg);   // "890 meters"
}