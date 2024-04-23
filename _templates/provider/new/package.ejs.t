---
    to: providers/<%= name %>/package.json
---


{
  "name": "@novu/<%= name %>",
  "version": "<%= version %>",
  "description": "A <%= name %> wrapper for novu",
  "main": "build/main/index.js",
  "typings": "build/main/index.d.ts",
  "module": "build/module/index.js",
  "private": false,
  "repository": "https://github.com/khulnasoft/teleflow",
  "license": "MIT",
  "keywords": [],
  "scripts": {
    "prebuild": "rimraf build",
    "build": "run-p build:*",
    "build:main": "tsc -p tsconfig.json",
    "build:module": "tsc -p tsconfig.module.json",
    "fix": "run-s fix:*",
    "fix:prettier": "prettier \"src/**/*.ts\" --write",
    "fix:lint": "eslint src --ext .ts --fix",
    "test": "run-s test:*",
    "lint": "eslint src --ext .ts",
    "test:unit": "jest src",
    "watch:build": "tsc -p tsconfig.json -w",
    "watch:test": "jest src --watch",
    "reset-hard": "git clean -dfx && git reset --hard && yarn",
    "prepare-release": "run-s reset-hard test"
  },
  "publishConfig": {
    "access": "public"
  },
  "dependencies": {
    "@novu/stateless": "<%= version %>"
  },
  "devDependencies": {
    "@istanbuljs/nyc-config-typescript": "~1.0.1",
    "@types/jest": "~27.5.2",
    "cspell": "~6.19.2",
    "jest": "~27.5.1",
    "npm-run-all": "^4.1.5",
    "nyc": "~15.1.0",
    "prettier": "~2.8.0",
    "rimraf": "~3.0.2",
    "ts-jest": "~27.1.5",
    "ts-node": "~10.9.1",
    "typescript": "4.9.5"
  },
  "files": [
    "build/main",
    "build/module",
    "!**/*.spec.*",
    "!**/*.json",
    "CHANGELOG.md",
    "LICENSE",
    "README.md"
  ],
  "ava": {
    "failFast": true,
    "timeout": "60s",
    "typescript": {
      "rewritePaths": {
        "src/": "build/main/"
      }
    },
    "files": [
      "!build/module/**"
    ]
  },
  "prettier": {
    "singleQuote": true
  },
  "nyc": {
    "extends": "@istanbuljs/nyc-config-typescript",
    "exclude": [
      "**/*.spec.js"
    ]
  }
}
