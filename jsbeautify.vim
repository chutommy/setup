" === JSbeautify ===

autocmd BufWritePost *javascript :call JsBeautify()
autocmd BufWritePost *json :call JsonBeautify()
autocmd BufWritePost *jsx :call JsxBeautify()
autocmd BufWritePost *html :call HtmlBeautify()
autocmd BufWritePost *css :call CSSBeautify()
