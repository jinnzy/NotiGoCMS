#!/bin/bash
#set -u -e -o pipefail

export NOTION_TOKEN=d1ab20cd92feb723f825d091fbedbc370e75ed12e795d8bc1a5315eb985b8ac2a2c0fd8394a4ffda0ec8b4a8efa1ddd1e58cc908da49ac7ee853066f3c80e82fe24ef4ce9de2ff4a754e06d0a9e4
# setup git
git config user.email "839444083@qq.com"
git config user.name "jinnzy"

#[ -d "blog" ] && git rm -r --cached blog
#rm -rf blog

#git submodule add --force git@github.com:jinnzy/jinnzy.github.io.source.git blog
git clone git@github.com:jinnzy/jinnzy.github.io.source.git blog
./NotiGoCMS

#cd blog
#git status
#git add *
#git status
#now=`date "+%Y-%m-%d %a"`

# "git commit" returns 1 if there's nothing to commit, so don't report this as failed build
#set +e
#git commit -am "ci: update from notion on ${now}"
#if [ "$?" -ne "0" ]; then
#    echo "nothing to commit"
#    exit 0
#fi
#set -e
#git push "https://${GITHUB_ACTOR}:${GH_TOKEN_OVERRIDE}@github.com/lvntbkdmr/blog.git" master || true
#cd ../
