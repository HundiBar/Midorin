import Rails from '@rails/ujs';

const picFire = () => {
  const input = document.querySelector('#picture_upload')
  if (input) {
    input.addEventListener('change', (event) => {
      const fire =  document.querySelector('#picture_upload');
      const submit = document.querySelector("#picture_upload input[type=submit]")
      submit.click()
    });
  }
}

export { picFire };
