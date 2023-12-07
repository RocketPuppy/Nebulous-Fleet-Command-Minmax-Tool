
//import { getMyself } from './base_logic.js'; //* disabled BC of CORS compatibility

const codeHead = '<link rel="icon" type="image/png" href="./favicon.ico">\n\
  <link rel="manifest" href="./minmaxtool.webmanifest" />\n\
  <meta charset="utf-8">\n\
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\
  <meta name="viewport" content="width=device-width, initial-scale=1.0">\
';

function injectHead(code) {
  var scripts = document.getElementsByTagName('script');
  const scriptName = scripts[scripts.length - 1].src.split(/[\\/]/).pop();
  let script = getMyself(scriptName);
  if (!script) {
    err_msg = 'Failed to inject standart HTML head. Fatal error.';
    console.error(err_msg);
    return alert(err_msg);
  }
  script.insertAdjacentHTML('beforebegin', code);
  script.remove();
  console.log('Head was injected successfully.');
}


injectHead(codeHead);
