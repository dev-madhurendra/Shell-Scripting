#! /bin/bash

hello() {
    echo "Hello"
}

readonly -f hello

hello() {
    echo "Hello Updated"
}
