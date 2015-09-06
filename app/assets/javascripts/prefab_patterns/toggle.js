function hasClass(element, klass) {
  return (" " + element.className + " ").indexOf(" " + klass + " ") > -1;
}

function Toggler(element){
  this.trigger = element.children[0]
  this.target = element.children[1]
  this.bindEvents();
}

Toggler.prototype.bindEvents = function() {
  var _this = this;

  this.trigger.addEventListener("click", function() {
    _this.toggleCode(_this.target);
  });
}

Toggler.prototype.toggleCode = function(target){
  if(hasClass(target, "hidden")) {
    target.setAttribute("class", "toggle-container__target");
  } else {
    target.setAttribute("class", "toggle-container__target hidden");
  }
}

function setupTogglers() {
  var toggleContainers = document.getElementsByClassName("toggle-container");

  for(index = 0; index < toggleContainers.length; ++index) {
    new Toggler(toggleContainers[index]);
  }
}

window.onload = setupTogglers;
