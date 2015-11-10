docker pandoc
===

## Install
require docker
```
alias dpandoc='docker run -t -i -v `pwd`:/workspace greyia/pandoc pandoc '

alias dpandoc_ja='docker run -t -i -v `pwd`:/workspace greyia/pandoc pandoc  -V documentclass=ltjarticle --latex-engine=lualatex'
```

## Usage
```
dpandoc_ja -i hoge.md -o hoge.pdf
```

