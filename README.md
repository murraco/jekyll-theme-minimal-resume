
# Jekyll Resume Theme [![Netlify Status](https://api.netlify.com/api/v1/badges/c37f8c1e-a0f6-42c5-b1fe-3819b7f62c80/deploy-status)](https://app.netlify.com/sites/prashantk/deploys)

Based on [Mauricio Urraco's](https://github.com/murraco) resume theme website

Live demo available [here](https://prashantk.netlify.app/)


# Stack
  
![](https://img.shields.io/badge/jekyll-✓-blue.svg)
![](https://img.shields.io/badge/html5-✓-blue.svg)
![](https://img.shields.io/badge/sass-✓-blue.svg)
![](https://img.shields.io/badge/sweet--scroll-✓-blue.svg)
![](https://img.shields.io/badge/particle--js-✓-blue.svg)
![](https://img.shields.io/badge/font--awesome-✓-blue.svg)
![](https://img.shields.io/badge/gulp-✓-blue.svg)

# Screenshot

<p  align="center">
<img src="/screenshot.png"  width="90%"  />
</p>


# Quick Setup
1. Install Jekyll: `gem install jekyll bundler`
2. Fork this repository and clone your fork
3. Edit `_config.yml` to personalize your site

# Settings

You have to fill some informations on `_config.yml` and other data files in `_data` folder to customize your site:


## Site settings

```yml
description: A blog about lorem ipsum dolor sit amet
baseurl: ""  # the subpath of your site, e.g. /blog/
url: "http://localhost:3000"  # the base hostname & protocol for your site
```

  

## User settings

```yml
username: Lorem Ipsum
user_title: Prashant Kabra
email: kabra.prashant016@gmail.com
```

> Don't forget to change your URL before you deploy your site!


# Color and Particle Customization

- Color Customization
- Edit the `.sass` variables
- Particle Customization
- Edit the json data in particle function in `app.js`
- Refer to `Particle.js` for help

  
# Content

You can (and should) edit the `.html` files for adding your own information, icons, working experience, social links or whatever you want to add. I.e.:

  
```html

<a  aria-label="My Github"  target="_blank"  href="https://github.com/prashantk016">
    <i  class="icon fa fa-github-alt"  aria-hidden="true"></i>
</a>

```

# Running locally

In order to compile the assets and run `Jekyll` locally you need to follow those steps:

1. Install Jekyll
2. Run `bundle install`
3. Run `bundle exec jekyll build`
4. Start and http-server in the folder `_site`
  

# Credits

- [Mauricio Urraco](https://github.com/murraco)
- [Nathan Randecker](https://github.com/nrandecker)
- [Jake Jarvis](https://jarv.is/notes/css-waving-hand-emoji/) for the waving hand animation
- Rubik's cube Icons made by <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon"> www.flaticon.com</a>
