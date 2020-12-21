import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initAutocompleteA = () => {
  mapboxgl.accessToken =
    'pk.eyJ1IjoiYWtyYXZjaGVua281IiwiYSI6ImNraXluZ3p4ODQ1ODIzMXFqdTZuNGllMXgifQ.HT2Yu8HayAvKuxnJFh8bPw';
  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    placeholder: 'Pick up location...',
    mapboxgl,
  });

  geocoder.addTo('#geocoderA');
};

const initAutocompleteB = () => {
  mapboxgl.accessToken =
    'pk.eyJ1IjoiYWtyYXZjaGVua281IiwiYSI6ImNraXluZ3p4ODQ1ODIzMXFqdTZuNGllMXgifQ.HT2Yu8HayAvKuxnJFh8bPw';
  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    placeholder: 'Drop off location...',
    mapboxgl,
  });

  geocoder.addTo('#geocoderB');
};

export { initAutocompleteA, initAutocompleteB };
