var scrollDown = document.querySelector('#scrollDown')
var down = document.querySelector('#down')

function to(toEl) {
// toEl 为指定跳转到该位置的DOM节点
let bridge = toEl;
let body = document.body;
let height = 0;

// 计算该 DOM 节点到 body 顶部距离
do {
height += bridge.offsetTop;
bridge = bridge.offsetParent;
} while (bridge !== body)

// 滚动到指定位置
window.scrollTo({
top: height,
behavior: 'smooth'
})
}

scrollDown.addEventListener('click', function () {
to(down)
});