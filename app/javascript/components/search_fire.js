import Rails from '@rails/ujs';

const searchFire = () => {
  const input = document.querySelector('#plant_image')
  input.addEventListener('change', (event) => {
    const fire =  document.querySelector('#new_plant');
    console.log(input.files);
    const submit = document.querySelector("#new_plant input[type=submit]")
    // remove spinner display:none
    submit.click()

  });
}

export { searchFire };
