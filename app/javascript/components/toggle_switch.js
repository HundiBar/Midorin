const toggleSwitch = () => {
  const details = document.getElementById('details');
  const basics = document.getElementById('basics');
  const basicInfo = document.querySelector('.basic-info-group');
  const detailedInfo = document.querySelector('.detailed-info-group');
  const backingCard = document.querySelector('.backing-card');

  if (details) {
    details.addEventListener('click', () => {
      console.log("details!");
      basicInfo.classList.add('basics-hidden');
      detailedInfo.classList.remove('details-hidden');
      detailedInfo.classList.add('backing-card-details');
      backingCard.classList.add('backing-card-details');
    });
  }

  if (basics) {
    basics.addEventListener('click', () => {
      console.log("basics!");
      detailedInfo.classList.add('details-hidden');
      basicInfo.classList.remove('basics-hidden');
      backingCard.classList.remove('backing-card-details');
    });
  }

  // basicInfo.addEventListener('click', () => {
  //   console.log("info!");
  // });
}

export { toggleSwitch };
