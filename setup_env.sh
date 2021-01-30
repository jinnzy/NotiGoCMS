#!/bin/bash
#set -u -e -o pipefail


# setup git
git config user.email "839444083@qq.com"
git config user.name "jinnzy"

[ -d "blog" ] && git rm -r --cached blog
rm -rf blog

git submodule add --force git@github.com:jinnzy/jinnzy.github.io.source.git blog

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
