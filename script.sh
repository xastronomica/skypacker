#!/usr/bin/env bash

# Color variables
RESET="$(tput sgr0)"
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"

# Executable(s) path
DENO="$(command -v deno)"
NPX="$(command -v npx)"

function error() {
    printf "${RED}Error${RESET}: ${*}\n"
}

function info() {
    printf "${GREEN}Info${RESET}: ${*}\n"
}

if [[ -z "${DENO}" ]] || [[ -z "${NPX}" ]]; then
    error "\`deno\` and \`npx\` must be in PATH"
fi

error "Test" "aa" "aa"
error "test" "lol"