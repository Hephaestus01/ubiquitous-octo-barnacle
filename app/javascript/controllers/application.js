import { Application } from "@hotwired/stimulus";
import React from "react";
import ReactDOM from "react-dom";
import QuestionInput from "../components/QuestionInput";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

export { application };

document.addEventListener("DOMContentLoaded", () => {
  const reactRoot = document.getElementById("react-root");

  if (reactRoot) {
    ReactDOM.render(<QuestionInput />, reactRoot);
  }
});
