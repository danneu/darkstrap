Demo: [Darkstrap vs. Bootstrap][demo]

# Darkstrap (v0.9.0)

Made by [danneu][http://danneu.com].

A dark theme for Twitter Bootstrap 2.

Work in progress.

## Known issues

v0.9.0 is superior to the original release, but it still has some glaring issues.

* Cross-browser compatibility (works best on Firefox for now)
* The only tested elements are those in the demo.
    
## Usage

* Download `darkstrap.css`
* Place it in your stylesheet directory
* Include it after you load `bootstrap.css`

    <head>
      <link href='stylesheets/bootstrap.css' rel='stylesheet' />
      <link href='stylesheets/darkstrap.css' rel='stylesheet' />
    </head>
    
## Ideas behind the design

1. Invert the colors of Twitter Bootstrap. 

    ![screenshot of navbars](https://a248.e.akamai.net/camo.github.com/28120f289ca3138327e2900bbb5cbe9a1cbe08f9/687474703a2f2f646c2e64726f70626f782e636f6d2f752f35313833363538332f53637265656e73686f74732f61702e706e67)
    
2. Make `.well` look awesome.
  
    ![screenshot of a .well](http://dl.dropbox.com/u/51836583/Screenshots/bf.png)

3. Integrate the darkstrap `.well` into other components.

    ![screenshot of a darkstrap form](http://dl.dropbox.com/u/51836583/Screenshots/bg.png)

## Development

I use:

* Sass
* a few Compass helpers
* Thomas McDonald's Less -> Sass [Bootstrap port](https://github.com/thomas-mcdonald/bootstrap-sass)

So that I can utilize Bootstrap's override variables, I compile Darkstrap with
Bootstrap and then extract only the things that changed into darkstrap.css.

## Requests/Issues/Suggestions/Feedback

I'm always open to feedback and ideas.

I'm not a designer and I didn't do much testing on anything other than my screen
with my eyes.

Since I don't actually use Darkstrap in a project of my own anymore, I'm open to 
suggestions from the people that do.

Feel free to create a [Github Issue](https://github.com/danneu/darkstrap/issues) or just [email me](mailto:danrodneu@gmail.com).

[demo]: http://danneu.com/bag/darkstrap/darkstrap.html
