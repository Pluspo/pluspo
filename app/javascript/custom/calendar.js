// NOTE: https://tr.you84815.space/flatpickr/examples.html#selecting-multiple-dates
const config = {
    enableTime: true,
    altInput: true,
    altFormat: "m/d    H:i",  // 実際に画面に表示されるフォーマット
    dateFormat: "Y-m-d H:i",  // valueの中身のフォーマット
}
flatpickr('#calendar', config);
