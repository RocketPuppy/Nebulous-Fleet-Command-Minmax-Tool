
function _getMyself() {
  return document.currentScript || false;;
}

function getMyselfLegacy(scriptName) {
  if (!scriptName) {
    console.error('No script name provided. Fatal error.');
    return false;
  }
  let scripts = document.getElementsByTagName('script');
  for (let i = 0; i < scripts.length; i++) {
    if (scripts[i].src.includes(scriptName)) {
      return scripts[i];
    }
  }
  return false;
}

//if (typeof require !== 'undefined' && require.main === module) {}

function getMyself(scriptName) {
  let script = _getMyself();
  if (!script) {
    console.warn('Graceful method failed. Trying legacy one.');
    script = getMyselfLegacy(scriptName);
  }
  return script;
}
