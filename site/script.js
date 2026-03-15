const vectors = [
  { name: "3 x 5", a: 3, b: 5, m: 15 },
  { name: "13 x 11", a: 13, b: 11, m: 143 },
  { name: "42 x 17", a: 42, b: 17, m: 714 },
  { name: "255 x 255", a: 255, b: 255, m: 65025 }
];

const runBtn = document.getElementById("runDemo");
const aVal = document.getElementById("aVal");
const bVal = document.getElementById("bVal");
const mVal = document.getElementById("mVal");
const caseName = document.getElementById("caseName");
const pipeline = document.getElementById("pipeline");

let idx = 0;
let timer = null;

function show(v) {
  aVal.textContent = v.a;
  bVal.textContent = v.b;
  mVal.textContent = v.m;
  caseName.textContent = `Case: ${v.name}`;
}

function tick() {
  show(vectors[idx]);
  idx = (idx + 1) % vectors.length;
}

function runDemo() {
  document.body.classList.add("play");
  pipeline.classList.add("play");
  runBtn.textContent = "Playing...";
  if (timer) clearInterval(timer);
  tick();
  timer = setInterval(tick, 1200);
}

runBtn.addEventListener("click", runDemo);
show(vectors[0]);
