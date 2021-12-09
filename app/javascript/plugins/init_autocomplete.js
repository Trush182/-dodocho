import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search_infos_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
