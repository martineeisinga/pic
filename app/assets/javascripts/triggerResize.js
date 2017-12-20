function triggerResize() {
  console.log("Triggered__________________________________")
  window.dispatchEvent(new Event('resize'));
}

window.handleClick = function handleClick() {
  setTimeout(triggerResize, 300)
}
