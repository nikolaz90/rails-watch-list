import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['nav']

  connect() {
    console.log("nav js connected");
  }
  navToggle() {
    let pagePosition = window.scrollY
    this.navTarget.style.opacity = 1
    this.navTarget.style.backgroundColor = 'rgb(232, 232, 232)'
    this.navTarget.style.color = "black"
    if(pagePosition > 30) {
      this.navTarget.style.opacity = 0.9
      this.navTarget.style.backgroundColor = 'rgb(40, 42, 58)'
      this.navTarget.style.color = "white"
    }
  }
}
