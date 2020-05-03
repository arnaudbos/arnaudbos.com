Built with [Hugo].

---

This README is a copy/paste cheat sheet.

## Clone all subdomains

    ./clone.sh

## Preview locally

Build the site and serve it locally with:

    # Home
    docker run -it --rm --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/arnaudbos.github.io:/srv -p 1313:1313 registry.gitlab.com/pages/hugo:latest hugo -s srv serve --bind 0.0.0.0
    
    # Blog
    docker run -it --rm --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/i-rant:/srv -p 1313:1313 registry.gitlab.com/pages/hugo:latest hugo -s srv serve --bind 0.0.0.0
    
    # Level-up
    docker run -it --rm --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/level-up:/srv -p 1313:1313 registry.gitlab.com/pages/hugo:latest hugo -s srv serve --bind 0.0.0.0
    
    # Projects
    docker run -it --rm --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/side-effects:/srv -p 1313:1313 registry.gitlab.com/pages/hugo:latest hugo -s srv serve --bind 0.0.0.0
    
    # Talks
    docker run -it --rm --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/talks:/srv -p 1313:1313 registry.gitlab.com/pages/hugo:latest hugo -s srv serve --bind 0.0.0.0
    
    # Vitae
    docker run -it --rm --volume=$(pwd)/hugo-vitae:/srv/themes/hugo-vitae --volume=$(pwd)/vitae:/srv -p 1313:1313 registry.gitlab.com/pages/hugo:latest hugo -s srv serve --bind 0.0.0.0

Then go to `localhost:1313/`.

Once happy with your changes, commit to the `source` branch.

## Deploying

Run:

    # Home
    cd arnaudbos.github.io
    git add .
    git commit -m
    git push origin develop
    cd public
    ./publish.sh
    cd ../../
    
    # Blog
    cd i-rant
    git add .
    git commit -m
    git push origin develop
    cd public
    ./publish.sh
    cd ../../
    
    # Level-up
    cd level-up
    git add .
    git commit -m
    git push origin develop
    cd public
    ./publish.sh
    cd ../../
    
    # Projects
    cd side-effects
    git add .
    git commit -m
    git push origin develop
    cd public
    ./publish.sh
    cd ../../
    
    # Talks
    cd talks
    git add .
    git commit -m
    git push origin develop
    cd public
    ./publish.sh
    cd ../../
    
    # Vitae
    cd vitae
    git add .
    git commit -m
    git push origin develop
    cd public
    ./publish.sh
    cd ../../

[hugo]: https://gohugo.io
