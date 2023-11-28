
const my_name = 'head.js';
const str_to_inject = '<link rel="icon" type="image/png" href="./favicon.ico">\n\
  <link rel="manifest" href="./minmaxtool.webmanifest" />\n\
  <meta charset="utf-8">\n\
  <meta name="viewport" content="width=device-width, initial-scale=1.0">\
';

function getMyselfLegacy() {
  let scripts = document.getElementsByTagName('script');
  for (let i = 0; i < scripts.length; i++) {
    if (scripts[i].src.includes(my_name)) {
      return scripts[i];
    }
  }
  return false;
}

function injectHead(code) {
  //let parsedDoc = new DOMParser().parseFromString(str, 'text/html');
  let script = document.currentScript || false;
  if (!script) {
    console.warn('Graceful injecting HTML head method failed. Trying legacy one.');
    script = getMyselfLegacy();
  }
  if (!script) {
    err_msg = 'Failed to inject standart HTML head. Fatal error.';
    console.error(err_msg);
    return alert(err_msg);
  }
  //document.head.insertAdjacentHTML('afterbegin', str);
  script.insertAdjacentHTML('beforebegin', code);
  script.remove();
  console.log('Head was injected successfully.');
}

//if (typeof require !== 'undefined' && require.main === module) {}

injectHead(str_to_inject);
