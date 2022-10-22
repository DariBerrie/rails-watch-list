import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["There's a great movie for any time.", "Add your own!"],
      typeSpeed: 50,
      loop: true
    })
  }
}
