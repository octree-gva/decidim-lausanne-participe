<h1 align="center"><img src="https://github.com/octree-gva/meta/blob/main/decidim/static/header.png?raw=true" alt="Decidim - Octree Participatory democracy on a robust and open source solution"></h1>
<h4 align="center">
    <a href="https://www.octree.ch">Octree</a> |
    <a href="https://octree.ch/en/contact-us/">Contact Us</a> |
    <a href="https://blog.octree.ch">Our Blog (FR)</a><br/><br/>
    <a href="https://decidim.org">Decidim</a> |
    <a href="https://docs.decidim.org/en/">Decidim Docs</a> |
    <a href="https://meta.decidim.org">Participatory Governance (meta decidim)</a><br/><br/>
    <a href="https://matrix.to/#/+decidim:matrix.org">Decidim Community (Matrix+Element.io)</a>
</h4>


<br/><br/>
This app is a Ruby on Rails app running [Decidim](decidim.org) for [Lausanne Participe](https://participer.lausanne.ch), the  official participatory platform for the city of Lausanne (CH).

# Infrastructure

This instance is deployed using Infomaniak Jelastic instances. Infomaniak is a swiss infrastructure, that does [its best to pollute less](https://www.infomaniak.com/en/ecology).

# Docker

A docker image is used for deployment, the docker image is ready for production, with some common configurations for RoR production images. The docker image includes:

- ImageMagick configurations, to avoid ImageTragick issues on image manipulations and avoid Server-side interaction (see [https://thoughtbot.com/blog/paperclip-is-vulnerable-to-the-imagetragick-vulnerability](https://thoughtbot.com/blog/paperclip-is-vulnerable-to-the-imagetragick-vulnerability) and [https://imagetragick.com/](https://imagetragick.com/) for references)
- Non-root user and group to run the puma application (see docker docs [https://docs.docker.com/engine/install/linux-postinstall/](https://docs.docker.com/engine/install/linux-postinstall/) as references, and [https://engineering.bitnami.com/articles/why-non-root-containers-are-important-for-security.html#:~:text=So why would you do,on your server%2C for example](https://engineering.bitnami.com/articles/why-non-root-containers-are-important-for-security.html#:~:text=So%20why%20would%20you%20do,on%20your%20server%2C%20for%20example).)


# Core Customizations

In a perfect world, we would need no core customization. We try hard to keep track on our changes and propose them to the core of Decidim. Our goal is always to come back to a mainstream code.

- Setup a [custom authorization handler](https://github.com/octree-gva/decidim-module-socio_demographic_authorization_handler). [Forked from Open Politics](https://github.com/OpenSourcePolitics/decidim-module-socio_demographic_authorization_handler). We need to manually check the votes on participatory budgets, based on official records.


<br /><br />
<h4 align="center">
    <br /><br />
    <img src="https://github.com/octree-gva/meta/blob/main/decidim/static/participer_lausanne/desktop.png?raw=true" /><br /><br />
    <img src="https://github.com/octree-gva/meta/blob/main/decidim/static/participer_lausanne/mobile.png?raw=true" /><br /><br />
</h4>

<br /><br />
<p align="center">
    <img src="https://raw.githubusercontent.com/octree-gva/meta/main/decidim/static/octree_and_decidim.png" height="90" alt="Decidim Installation by Octree" />
</p>