import Rails from '@rails/ujs';

const searchFire = () => {
  const input = document.querySelector('#plant_image')
  input.addEventListener('change', (event) => {
    console.log("yay");
    const fire =  document.querySelector('#new_plant');
    Rails.fire(fire, 'submit');
  });
}

export { searchFire };
