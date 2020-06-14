// Default syntax checking and linting for Javascript
//
// Will be overwritten by project specific configuration if found
module.exports = {
    env: {
        browser: true,
        commonjs: true,
        es6: true,
        node: true,
    },
    extends: 'eslint:recommended',
    globals: {
        Atomics: 'readonly',
        SharedArrayBuffer: 'readonly',
    },
    parserOptions: {
        sourceType: 'module',
        ecmaVersion: 2018,
    },
    rules: {
        'no-unused-vars': 'warn',
    },
};
