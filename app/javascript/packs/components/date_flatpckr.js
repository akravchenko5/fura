import flatpickr from 'flatpickr';

const dateTimeFlatpickr = () => {
  flatpickr('.flatpickr', {
    wrap: true,
    enableTime: true,
    time_24hr: true,
  });
};

export { dateTimeFlatpickr };
