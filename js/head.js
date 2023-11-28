let str = '<link rel="icon" type="image/png" href="./favicon.ico">\
  <link rel="manifest" href="./minmaxtool.webmanifest" />\
  <meta charset="utf-8">\
  <meta name="viewport" content="width=device-width, initial-scale=1.0">\
'
let parsedDoc = new DOMParser().parseFromString(str, 'text/html');
let parsedDoc2 = parsedDoc.children[0];
let parsedDoc3 = parsedDoc2.children[0];
let parsedDoc4 = parsedDoc3.children; //.innerHTML

console.log('parsedDoc:', parsedDoc.innerHTML);
console.log('parsedDoc2:', parsedDoc2.innerHTML);
console.log('parsedDoc3:', parsedDoc3.innerHTML);
console.log('parsedDoc4:', parsedDoc4.innerHTML);

//document.head.appendChild(parsedDoc);
//document.head.appendChild(parsedDoc2);
//document.head.appendChild(parsedDoc3);

let scripts = document.getElementsByTagName('script');
let script = false; //scripts[scripts.length-1];
for (let i = 0; i < scripts.length; i++) {
  if (scripts[i].src.includes('head.js')) {
    script = scripts[i];
  }
}
if (!script) {
  //return
  console.log('FAILED');
}

//document.head.insertAdjacentHTML('afterbegin', str);
script.insertAdjacentHTML('beforebegin', str);
script.remove();

//let div = document.Element('div');
//div.innerHTML = 'Whatever content is going to be inserted';
//script.parentNode.insertBefore(div, script);


console.log('number of rows:', parsedDoc4.getElementById('viewport')); //rows.length

console.log('textContent of the fourth td:',parsedDoc3.querySelectorAll('td')[3].textContent);
