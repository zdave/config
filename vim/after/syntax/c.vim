if exists("c_comment_strings")
    syntax region cHeaderComment matchgroup=cHeaderComment start="/\*\*\([^/]\|$\)\@=" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell extend
else
    syntax region cHeaderComment matchgroup=cHeaderComment start="/\*\*\([^/]\|$\)\@=" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell extend
endif
highlight def link cHeaderComment HeaderComment
