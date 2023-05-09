//Metodo que selecciona el primer elemento que cumpla dicho xpath
function getElementByXpath(xpath) {
    return document.evaluate(xpath, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
}

//Metodo que selecciona los elementos que cumplan dicho xpath
function getElementsByXpath(xpath) {
    return document.evaluate(xpath, document, null, XPathResult.ORDERED_NODE_ITERATOR_TYPE, null);
}

//Metodo para consultar por consola elementos que cumplan dicho xpath
function selectQuery(xpath) {
    console.log("***********************************************************");
    console.log("Query: '" + xpath + "'");
    let it = getElementsByXpath(xpath);
    let el = it.iterateNext();

    while (el) {
        console.log(el);
        el = it.iterateNext();
    }
}


//Todos los elementos
selectQuery("//*");

//Todos los elementos hijos de un nodo ()
selectQuery("//main/*");

//Elementos por path
selectQuery("//body/main/h1");

//Texto (te devuelve el texto, pero no el elemento)
selectQuery("//body/main/h1/text()");

//Atributos (te devuelve el id, pero no el elemento con dicho id)
selectQuery("//main/div/@id");

//Elementos por atributo
selectQuery("//main/div[@id='cardContainer']");
selectQuery("//main/div[@id='cardContainer']/div[@year=2004]");

//Elemento hijo i de un nodo
selectQuery("//main/div[@id='cardContainer']/div[3]");

//Elementos por condiciones
selectQuery("//main/div[@id='cardContainer']/div[@class='card' and @year>2004]");
selectQuery("//main/div[@id='cardContainer']/div[@year>2004 or @year<2002]");

//El padre de un elemento
selectQuery("//div[@year=2004]/..");

//Elementos por texto
selectQuery("//h2[contains(text(), 'Fly')]");

//Busquedas textuales
selectQuery("//h2[contains(text(), 'Fly')]/text()");

function changeColors(xpath, color) {
    let it = getElementsByXpath(xpath);
    let el = it.iterateNext();

    while (el) {
        el.style.backgroundColor = color;
        el = it.iterateNext();
    }
}

changeColors("//div[@id='cardContainer']/*", "yellow");
changeColors("//div[@id='cardContainer']/div[3]", "red");
changeColors("//div[@id='cardContainer']/div[@year=2005]", "green");
changeColors("//h2[contains(text(), 'Fly')]", "blue");


console.log("***********************************************************");