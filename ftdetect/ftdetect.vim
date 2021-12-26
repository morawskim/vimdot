au BufRead,BufNewFile .changelog set filetype=changelog
au BufRead,BufNewFile composer.json set filetype=composer.json
au BufRead,BufNewFile package.json set filetype=package.json
au BufRead,BufNewFile .gitlab-ci.yml set filetype=gitlab-ci.yaml
au BufRead,BufNewFile playbook.yml set filetype=ansible.yaml

" declaration ansible playbook skeleton
au BufNewFile playbook.yml 0r ~/.vim/skeletons/ansible.yml

" Flags *.d.ts as typescript for UltiSnips
au BufNewFile,BufRead *.d.ts set filetype=typescript
" declaration typescript skeleton
au BufNewFile *.d.ts 0r ~/.vim/skeletons/declaration.d.ts

" Flags docker-composer.yml as dockercompose_yaml for UltiSnips
au BufNewFile,BufRead docker-compose.yml,docker-compose.override.yml,docker-compose.yaml,docker-compose.override.yaml set filetype=docker-compose.yaml

" docker-compose skeleton
au BufNewFile docker-compose.yml,docker-compose.yaml 0r ~/.vim/skeletons/docker-compose.yml

" Flags Dockerfile* as Dockerfile for UltiSnips
au BufNewFile,BufRead Dockerfile* set filetype=Dockerfile

" Flags Gemfile for UltiSnips
au BufNewFile,BufRead Gemfile set filetype=gemfile.ruby

" Flags supervisord.conf as supervisord for snippets
au BufNewFile,BufRead supervisord.conf set filetype=supervisord.dosini

" Flags traefik as toml for syntax highlighting and snippets
au BufNewFile,BufRead traefik.toml set filetype=traefik.toml

" Flags tsx as TypeScript for syntax highlighting
au BufNewFile,BufRead *.tsx set filetype=typescript

" Flags Vagrantfiles as Ruby for syntax highlighting
au BufNewFile,BufRead Vagrantfile set filetype=vagrant.ruby

" Flags for xdebug trace file
au BufNewFile,BufRead *.xt  setf xt

" Use apache syntax for files  *.template in /etc/apache2/vhosts.d directory
au BufNewFile,BufRead /etc/apache2/vhosts.d/*.template set syntax=apache

" Set sh file type for files /tmp/bash-fc*
au BufNewFile,BufRead /tmp/bash-fc* set ft=sh

" Set sql file type for files /tmp/sql*
au BufNewFile,BufRead /tmp/sql* set ft=sql

" Gulpfile skeleton
au BufNewFile gulpfile.js 0r ~/.vim/skeletons/gulpfile.js

" Puppet facter, type and provider skeletons
au BufNewFile */lib/puppet/provider/*.rb 0r ~/.vim/skeletons/puppet_provider.rb
au BufNewFile */lib/puppet/type/*.rb 0r ~/.vim/skeletons/puppet_type.rb
au BufNewFile */lib/facter/*.rb 0r ~/.vim/skeletons/puppet_facter.rb

" .editorconfig skeleton
au BufNewFile .editorconfig 0r ~/.vim/skeletons/editorconfig

" Apache vhost simple skeleton
au BufNewFile /etc/apache2/vhosts.d/*.conf 0r ~/.vim/skeletons/apache_vhost.conf

" webpack config skeleton
au BufNewFile webpack.config.js 0r ~/.vim/skeletons/webpack.config.js

" gitreview config skeleton
au BufNewFile .gitreview 0r ~/.vim/skeletons/gitreview

" gitlab-ci skeleton
au BufNewFile .gitlab-ci.yml 0r ~/.vim/skeletons/gitlab-ci.yml

" phpcs skeleton
au BufNewFile .phpcs.xml,phpcs.xml,.phpcs.xml.dist,phpcs.xml.dist 0r ~/.vim/skeletons/phpcs.xml

" phpunit skeleton
au BufNewFile phpunit.xml,phpunit.xml.dist 0r ~/.vim/skeletons/phpunit.xml.dist
