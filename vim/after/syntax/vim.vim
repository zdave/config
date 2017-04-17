syntax match vimHeaderComment /^[ \t:]*"".*$/ contains=@vimCommentGroup,vimCommentString,vimCommentTitle
highlight def link vimHeaderComment HeaderComment
