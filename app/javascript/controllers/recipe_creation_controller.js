import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="recipe-creation"
export default class extends Controller {
  connect() {
    console.log("Connected to recipe-creation controller")
  }
}
