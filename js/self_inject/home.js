
//import { getMyself } from './base_logic.js'; //* disabled bc of CORS

const codeHome = '<nav><a href="https://rocketpuppy.github.io/Nebulous-Fleet-Command-Minmax-Tool/">Home</a></nav>';

function injectHome(code) {
  var scripts = document.getElementsByTagName('script');
  const scriptName = scripts[scripts.length - 1].src.split(/[\\/]/).pop();
  //console.log(scriptName);
  let script = getMyself(scriptName);
  if (!script) {
    err_msg = 'Failed to inject standart Nav. Fatal error.';
    console.error(err_msg);
    return alert(err_msg);
  }
  //document.head.insertAdjacentHTML('afterbegin', str);
  script.insertAdjacentHTML('beforebegin', code);
  script.remove();
  console.log('Nav was injected successfully.');
}


injectHome(codeHome);
