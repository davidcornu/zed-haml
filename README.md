# [Haml](https://haml.info/) syntax highlighting for [Zed](https://zed.dev/)

> [!NOTE]
> This extension is regularly published (https://zed.dev/extensions?query=haml) and can be installed directly from Zed.
>
> You will likely also want to install the [Ruby extension](https://github.com/zed-extensions/ruby) so that Ruby snippets within your HAML templates are correctly highlighted.

Based on https://github.com/vitallium/tree-sitter-haml

## Developing

Clone this repository and [install it as a dev extension in Zed](https://zed.dev/docs/extensions/developing-extensions#developing-an-extension-locally).

The complete docs on extension development are here: https://zed.dev/docs/extensions/developing-extensions.

## Releasing

1. Create a new commit which updates the `version` field in `extensions.toml` and commit it to `main`
2. Tag that commit with the new version number (e.g. `v0.0.1`)
    ```
    git tag v0.0.1
    git push origin v0.0.1
    ```
3. Create a new GitHub release (https://github.com/davidcornu/zed-haml/releases/new) for that tag. The automatically-generated release notes should suffice.
4. In https://github.com/zed-industries/extensions/
    1. Update the `version` field in `extensions.toml` under `[haml]`
    2. Run `git submodule update --remote --merge extensions/haml`
    3. Make sure the ref returned by `git submodule status extensions/haml` is the correct tag
    4. Commit the above and open a PR
