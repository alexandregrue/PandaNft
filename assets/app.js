/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import './styles/font.scss';
import './styles/footer.scss';
import './styles/header.scss';
import './styles/styles.scss';
import './styles/variables.scss';
import './styles/logginForm.scss';

// start the Stimulus application
/* import './bootstrap';
 */
import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
AOS.init();

var wrapper = document.getElementsByClassName("text-animation")[0];
wrapper.style.opacity="1";
wrapper.innerHTML = wrapper.textContent.replace(/./g,"<span>$&</span>");

var spans = wrapper.getElementsByTagName("span");

for (var i = 0; i < spans.length;i ++) {
    spans[i].style.animationDelay = i * 60 + "ms";
}