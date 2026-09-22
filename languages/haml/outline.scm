; Outline entries for the Zed outline panel and breadcrumbs.
;
; Tags show their name with class/id shorthand and inline Ruby output
; (`%div.card#main= title`), filters their name (`:javascript`), and Ruby
; blocks (`-`, `=`, `!=`, `&=`, `~`) their code so control flow
; (`- if admin?`, `- @posts.each do |post|`) is visible in the outline.
(tag
  [
    (tag_name) @name
    (class) @name
    (id) @name
  ]+
  (inline_ruby_block
    [
      "="
      "!="
      "&="
      "~"
    ] @name
    (ruby_code) @name)?) @item

(filter
  ":" @context
  (filter_name) @name) @item

(ruby_block_run
  "-" @context
  (ruby_code) @name) @item

(ruby_block_output
  "=" @context
  (ruby_code) @name) @item

(ruby_block_output_nuke
  "!=" @context
  (ruby_code) @name) @item

(ruby_block_sanitized
  "&=" @context
  (ruby_code) @name) @item

(ruby_block_preserve
  "~" @context
  (ruby_code) @name) @item
