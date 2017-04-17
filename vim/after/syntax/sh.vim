syntax match shHeaderComment "^\s*\zs##.*$" contains=@shCommentGroup
highlight def link shHeaderComment HeaderComment
