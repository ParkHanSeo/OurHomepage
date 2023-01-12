//스크롤 매직 사용 순서
//1. 컨트롤러 생성 1번 만들어두면 계속 쓸수있다.
//2. 애니메이션 생성 - gsap 로 넣으면 된다.
//3. 씬 생성 - 어디에서 애니메이션이 되어야하는지 정한다.

//스크롤 매직, 컨트롤러
var controller = new ScrollMagic.Controller();

//애니메이션 생성 변수에 넣는다.
var animation01 = gsap.to(".section02 > .move-box", {
  x: 300,
  duration: 5,
});

//씬 생성
var scene01 = new ScrollMagic.Scene({
  triggerElement: ".section02",
  triggerHook: 0,
  offset: 100,
  duration: "50%",
});
scene01.setTween(animation01);
scene01.addTo(controller);
// scene01.addIndicators();

//애니메이션 생성 여러개의 애니메이션을 넣는 방법
var ani01 = gsap.from(".section03 > .move-box2", {
  opacity: 0,
});
var ani02 = gsap.from(".section03 > .move-box", {
  opacity: 0,
});
var timeLine = gsap.timeline();

timeLine.add(ani01);
timeLine.add(ani02);

var scene02 = new ScrollMagic.Scene({
  triggerElement: ".section03",
  triggerHook: 0,
});
scene02.setTween(timeLine);
scene02.addTo(controller);
// scene02.addIndicators();
