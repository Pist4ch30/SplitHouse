import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "input", "calcul", "nuitInput", "nuitee", "economies" ]

  // static values = {
  //   coef: Number
  // }

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
  computeNuitee() {
    // nombre de nuitees
    // const inputValue = this.nuitInputTarget.value;
    // console.log(this.nuitInputTarget)
    const nuits = parseInt(this.nuiteeTarget.value)
    const coef = parseInt(this.nuiteeTarget.dataset.investCoefValue)
    const economies = nuits * coef / 12
    this.economiesTarget.innerHTML = `Montant mensuel économisé : ${Math.round(economies)}€ `
    // this.calculTarget.innerHTML = `Montant de mon investissement : <strong>${total}€</strong>`;
  }


}
