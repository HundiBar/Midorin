import Rails from '@rails/ujs';

const searchFire = () => {
  const input = document.querySelector('#plant_image')
  if (input) {
    input.addEventListener('change', (event) => {
      const fire =  document.querySelector('#new_plant');
      const submit = document.querySelector("#new_plant input[type=submit]")
      document.querySelector("#wifi-loader").style.display = 'flex';
      submit.click()
    });
  }
}

export { searchFire };
