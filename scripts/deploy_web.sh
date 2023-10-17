#!/bin/bash
if [ ! -d "flutter" ]; then
    git clone https://github.com/flutter/flutter.git
fi

cd flutter
git checkout 2.10.3
cd ..
export PATH="$PATH:`pwd`/flutter/bin"

flutter config --enable-web
flutter packages get
flutter build web