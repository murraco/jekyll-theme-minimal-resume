# Jekyll Resume Theme

Live demo at https://jekyll-theme-minimal-resume.netlify.com/

[![Netlify Status](https://api.netlify.com/api/v1/badges/24d80ae8-c3d9-4645-a6d8-9e97fc8dec3c/deploy-status)](https://app.netlify.com/sites/jekyll-theme-minimal-resume/deploys)

# Stack

![](https://img.shields.io/badge/jekyll-✓-blue.svg)
![](https://img.shields.io/badge/html5-✓-blue.svg)
![](https://img.shields.io/badge/sass-✓-blue.svg)
![](https://img.shields.io/badge/sweet--scroll-✓-blue.svg)
![](https://img.shields.io/badge/particle--js-✓-blue.svg)
![](https://img.shields.io/badge/font--awesome-✓-blue.svg)
![](https://img.shields.io/badge/devicon-✓-blue.svg)
![](https://img.shields.io/badge/gulp-✓-blue.svg)

***

<h3 align="center">Please help this repo with a :star: if you find it useful! :blush:</h3>

***

# Screenshot

<p align="center">
  <img src="https://github.com/murraco/jekyll-theme-minimal-resume/blob/master/screenshot.png" width="90%" />
</p>

# Quick Setup

1. Install Jekyll: `gem install jekyll bundler`
2. Fork this repository and clone your fork
3. Edit `_config.yml` to personalize your site

# Settings

You have to fill some informations on `_config.yml` to customize your site:

## Site settings
```yml
description: A blog about lorem ipsum dolor sit amet
baseurl: "" # the subpath of your site, e.g. /blog/
url: "http://localhost:3000" # the base hostname & protocol for your site
```

## User settings
```yml
username: Lorem Ipsum
user_description: Software Engineer at Lorem Ipsum Dolor
user_title: Mauricio Urraco
email: mauriurraco@gmail.com
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
<a aria-label="My Github" target="_blank" href="https://github.com/murraco">
  <i class="icon fa fa-github-alt" aria-hidden="true"></i>
</a>
```

# Running locally

In order to compile the assets and run `Jekyll` locally you need to follow those steps:

1. Install Jekyll
2. Run `bundle install`
3. Run `bundle exec jekyll build`
4. Start and http-server in the folder `_site`

# Contribution

- Report issues
- Open pull request with improvements
- Spread the word
- Reach out to me directly at <mauriurraco@gmail.com>
