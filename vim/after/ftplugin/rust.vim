let s:rustfmt_toml = findfile("rustfmt.toml", ".;")
if empty(s:rustfmt_toml)
    let s:rustfmt_toml = findfile(".rustfmt.toml", ".;")
endif
let s:hard_tabs_re = '\C^\s*hard_tabs\s*=\s*true\s*\(#.*\)\?$'
if !empty(s:rustfmt_toml) && (match(readfile(s:rustfmt_toml), s:hard_tabs_re) != -1)
    setlocal noexpandtab
    let b:undo_ftplugin .= "|setlocal noexpandtab<"
endif
