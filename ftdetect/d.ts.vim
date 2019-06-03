" Flags *.d.ts as typescript for UltiSnips
au BufNewFile,BufRead *.d.ts set filetype=typescript

" declaration typescript skeleton
au BufNewFile *.d.ts 0r ~/.vim/skeletons/declaration.d.ts
