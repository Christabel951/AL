function createIframe()
{
    let placeholder = document.getElementById('controlAddIn');
    let webPagei = document.createElement('iframe');
    webPagei.id = 'webPage';
    webPagei.height = '100%';
    webPagei.width = '100%';
    placeholder.appendChild(webPagei);
}

function embedHomePage()
{
    createIframe();
    let webpageholder = document.getElementById('webPage');
    webpageholder.src = 'https://simplanova.com/blog/';
}

function createImageHolder()
{
    embedHomePage()
    iframeHolder = document.getElementById('webPage');
    imageHolder = document.createElement('img');
    imageHolder.id = 'pet';
    imageHolder.height = '100%';
    imageHolder.height = '100';
    imageHolder.src = './image/Pet Grooming.png';
    placeholder.appendChild(imageHolder);
}