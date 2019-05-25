#!/usr/bin/env bash

# Templates
git clone git@github.com:arnaudbos/hugo-sustain.git hugo-sustain
git clone git@github.com:arnaudbos/hugo-vitae.git hugo-vitae

# Home
git clone git@github.com:arnaudbos/arnaudbos.github.io.git arnaudbos.github.io
git clone git@github.com:arnaudbos/arnaudbos.github.io.git arnaudbos.github.io/public
pushd arnaudbos.github.io/public
git checkout master
popd

# Blog
git clone git@github.com:arnaudbos/i-rant.git i-rant
git clone git@github.com:arnaudbos/i-rant.git i-rant/public
pushd i-rant/public
git checkout master
popd

# Level-up
git clone git@github.com:arnaudbos/level-up.git level-up
git clone git@github.com:arnaudbos/level-up.git level-up/public
pushd level-up/public
git checkout master
popd

# Projects
git clone git@github.com:arnaudbos/side-effects.git side-effects
git clone git@github.com:arnaudbos/side-effects.git side-effects/public
pushd side-effects/public
git checkout master
popd

# Fame
git clone git@github.com:arnaudbos/talks.git talks
git clone git@github.com:arnaudbos/talks.git talks/public
pushd talks/public
git checkout master
popd

# Hire me
git clone git@github.com:arnaudbos/vitae.git vitae
git clone git@github.com:arnaudbos/vitae.git vitae/public
pushd vitae/public
git checkout master
popd
