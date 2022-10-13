controladdin "SPLN Demo"
{
    RequestedHeight = 400;

    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts =
        './src/script.js';
    StyleSheets =
        './stylesheets/stylesheet.css';
    StartupScript = './src/start.js';
    // Images = './images/Pet Grooming.png';

    event Ready()

    procedure embedHomePage()
}