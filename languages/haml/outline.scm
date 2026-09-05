; Outline entries for the Zed outline panel and breadcrumbs.
;
; Tags show their name with class/id shorthand (`%div.card#main`), filters
; their name (`:javascript`), and Ruby blocks their code so control flow
; (`- if admin?`, `- @posts.each do |post|`) is visible in the outline.

(tag
  [
    (tag_name) @name
    (class) @name
    (id) @name
  ]+) @item

(filter
  ":" @context
  (filter_name) @name) @item

(ruby_block_run
  "-" @context
  (ruby_code) @name) @item

(ruby_block_output
  "=" @context
  (ruby_code) @name) @item
