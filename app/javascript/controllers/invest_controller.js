import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "calcul" ]

  connect() {

  }

  computeInvest() {
    // nombre de nuitees
    const inputValue = this.inputTarget.value;

    const partNumber = inputValue/44;
    const pricePart = this.inputTarget.dataset.pricePart;
    const total = partNumber * pricePart;
    this.calculTarget.innerHTML = `Montant de mon investissement : <strong>${total}€</strong>`;
  }



}
