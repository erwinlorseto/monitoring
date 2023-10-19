import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails"

// Connects to data-controller="visit"
export default class extends Controller {
  static values = {
    url: String
  }
  connect() {
  }

  open(e) {
    Turbo.visit(this.urlValue)
  }
}
