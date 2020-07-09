" === Vim REST Console ===

let g:vrc_curl_opts = {'-L': '','-i': '','-k': ''}
let s:vrc_auto_format_response_patterns = {'json': 'jq'}

let b:vrc_header_content_type = 'application/json; charset=utf-8'
let b:vrc_response_default_content_type = 'application/json'
let g:vrc_debug = 1
