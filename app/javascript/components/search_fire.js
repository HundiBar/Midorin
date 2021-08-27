import Rails from '@rails/ujs';

const searchFire = () => {
  const input = document.querySelector('#plant_image')
  if (input) {
    input.addEventListener('change', (event) => {
      const submit = document.querySelector("#new_plant input[type=submit]")
      document.querySelector(".spinner").style.display = 'inline-block';
      submit.click()
    });
  }
}

export { searchFire };
