# building the theme

This assumes that you have installed ruby, sass, compass and the latest
bootstrap-sass gem packages.

Here is an example for ubuntu:

    sudo apt-get install ruby-full rubygems-integration
    sudo gem install sass
    sudo gem install compass
    sudo gem install bootstrap-compass

You can then use the provided `./build/compile-css` script to generate updated
`darkstrap.css` and `darkstrap.min.css` from your up to date bootstrap version.
