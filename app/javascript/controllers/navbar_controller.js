import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ['nav']

  connect() {
    console.log("hi");
  }
}
