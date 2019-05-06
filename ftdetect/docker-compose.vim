" Flags docker-composer.yml as dockercompose_yaml for UltiSnips
au BufNewFile,BufRead docker-compose.yml,docker-compose.override.yml,docker-compose.yaml,docker-compose.override.yaml set filetype=docker-compose.yaml

" docker-compose skeleton
au BufNewFile docker-compose.yml,,docker-compose.yaml 0r ~/.vim/skeletons/docker-compose.yml
