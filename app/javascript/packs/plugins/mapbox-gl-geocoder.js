import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initAutocomplete = () => {
  const mapboxglElement = document.getElementById('geocoderA');
  mapboxgl.accessToken = mapboxglElement.dataset.mapboxApiKey;

  const geocoderA = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    placeholder: 'Pick up location...',
    mapboxgl,
  });

  const geocoderB = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    placeholder: 'Drop off location...',
    mapboxgl,
  });

  geocoderA.addTo('#geocoderA');
  geocoderB.addTo('#geocoderB');
};

export { initAutocomplete };
