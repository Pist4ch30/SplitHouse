import { Controller } from "stimulus"
import { annotate } from "rough-notation";

export default class extends Controller {
  //static targets = [ "output" ]

  connect() {

    const anotation =  annotate(this.element, {type : 'underline', color:"#FFD365", iterations:3})
    anotation.show();
    //console.log(this.element)
  }
}
