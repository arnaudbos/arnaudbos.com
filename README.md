Built with [Hugo].

---

This README is a copy/paste cheat sheet.

## Clone all subdomains

    ./clone.sh

## Preview locally

Build the site and serve it locally with:

    # Home
    docker run -it --rm --workdir /srv --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/arnaudbos.github.io:/srv -p 1313:1313 registry.gitlab.com/pages/hugo@sha256:017b3e0d3620cf4a7d782656237b7aa8793909339d927c15dcd5bdd26180a849 hugo -s /srv serve --bind 0.0.0.0

    # Blog
    docker run -it --rm --workdir /srv --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/i-rant:/srv -p 1313:1313 registry.gitlab.com/pages/hugo@sha256:017b3e0d3620cf4a7d782656237b7aa8793909339d927c15dcd5bdd26180a849 hugo -s /srv serve --bind 0.0.0.0

    # Level-up
    docker run -it --rm --workdir /srv --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/level-up:/srv -p 1313:1313 registry.gitlab.com/pages/hugo@sha256:017b3e0d3620cf4a7d782656237b7aa8793909339d927c15dcd5bdd26180a849 hugo -s /srv serve --bind 0.0.0.0

    # Projects
    docker run -it --rm --workdir /srv --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/side-effects:/srv -p 1313:1313 registry.gitlab.com/pages/hugo@sha256:017b3e0d3620cf4a7d782656237b7aa8793909339d927c15dcd5bdd26180a849 hugo -s /srv serve --bind 0.0.0.0

    # Talks
    docker run -it --rm --workdir /srv --volume=$(pwd)/hugo-sustain:/srv/themes/hugo-sustain --volume=$(pwd)/talks:/srv -p 1313:1313 registry.gitlab.com/pages/hugo@sha256:017b3e0d3620cf4a7d782656237b7aa8793909339d927c15dcd5bdd26180a849 hugo -s /srv serve --bind 0.0.0.0

    # Vitae
    docker run -it --rm --workdir /srv --volume=$(pwd)/hugo-vitae:/srv/themes/hugo-vitae --volume=$(pwd)/vitae:/srv -p 1313:1313 registry.gitlab.com/pages/hugo@sha256:017b3e0d3620cf4a7d782656237b7aa8793909339d927c15dcd5bdd26180a849 hugo -s /srv serve --bind 0.0.0.0

Then go to `localhost:1313/`.

Once happy with your changes, commit to the `source` branch.

## Deploying

Run:

    # Theme/hugo-sustain
    pushd hugo-sustain && git add . && git commit -m 'update' && git push origin master && popd

    # Theme/hugo-vitae
    pushd hugo-vitae && git add . && git commit -m 'update' && git push origin master && popd

    # Home
    pushd arnaudbos.github.io && git add . && git commit -m 'update' && git push origin develop && pushd public && ./publish.sh && popd && popd
    
    # Blog
    pushd i-rant && git add . && git commit -m 'update' && git push origin develop && pushd public && ./publish.sh && popd && popd
    
    # Level-up
    pushd level-up && git add . && git commit -m 'update' && git push origin develop && pushd public && ./publish.sh && popd && popd
    
    # Projects
    pushd side-effects && git add . && git commit -m 'update' && git push origin develop && pushd public && ./publish.sh && popd && popd
    
    # Talks
    pushd talks && git add . && git commit -m 'update' && git push origin develop && pushd public && ./publish.sh && popd && popd
    
    # Vitae
    pushd vitae && git add . && git commit -m 'update' && git push origin develop && pushd public && ./publish.sh && popd && popd

[hugo]: https://gohugo.io
