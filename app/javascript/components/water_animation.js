const waterAnimation = () => {
  let forms = document.querySelectorAll('.simple_form.drops');
  console.log(forms);
  if (forms && forms.length === 0) {
    console.log("inside of if")
    let forms = document.querySelectorAll('.simple_form.drops');
  }
  console.log(forms);
  // const waterButton = document.querySelector('.pot-show-basics-water-icon');
  const drop1No = document.querySelector('.drop1-no');
  const drop2No = document.querySelector('.drop2-no');
  const drop3No = document.querySelector('.drop3-no');
  const drop4No = document.querySelector('.drop4-no');
  const drop5No = document.querySelector('.drop5-no');

  if (forms) {
    forms.forEach((form) => {
      console.log(form);
      form.addEventListener('click', () => {
      event.preventDefault();
      drop1No.classList.add('drop1');
      drop2No.classList.add('drop2');
      drop3No.classList.add('drop3');
      drop4No.classList.add('drop4');
      drop5No.classList.add('drop5');
      setTimeout(function(){
        form.submit();
      }, 1500);

      });
    // drop1No.classList.remove('drop1');
    // drop2No.classList.remove('drop2');
    // drop3No.classList.remove('drop3');
    // drop4No.classList.remove('drop4');
    // drop5No.classList.remove('drop5');
    });
  };
}
export { waterAnimation };
