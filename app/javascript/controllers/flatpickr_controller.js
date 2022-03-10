import { Controller } from "stimulus"
import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

export default class extends Controller {
  static targets = [ "rangeStart", "rangeEnd" ]
  static values = {
    bookings: String
  }

  connect() {
    console.log('hello');
    console.log(this.rangeStartTarget);
    flatpickr(this.rangeStartTarget, {
      plugins: [new rangePlugin({ input: this.rangeEndTarget})],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": JSON.parse(this.bookingsValue),
    })
  }
}
