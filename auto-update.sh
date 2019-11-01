#!/bin/bash
AUTHUR_NAME="sunny0826" # 软件拥有者的 GitHub 用户名
# FORMULA_NAME="kubecm" # 软件仓库名
FORMULA_NAMES=(
kubecm
hamal
)  # 软件仓库名

log(){
    echo ''
    echo '-------------------------------------'
    echo "$*"
    echo '-------------------------------------'
    echo ''
}
loop_parser(){
    while true
    do
       result=$(curl -s https://api.github.com/repos/"$AUTHUR_NAME"/"$FORMULA_NAME"/releases/latest | grep "$1" | cut -d '"' -f 4)
       if [ ! -z "$result" ]; then
        echo $result
        break
       fi
    done
}
# clone
git clone https://github.com/sunny0826/homebrew-tap.git

# download
for FORMULA_NAME in ${FORMULA_NAMES[@]}
do
    echo $FORMULA_NAME
    FILE_NAME=$FORMULA_NAME # Formula 的文件名 (等于全小写的 $FORMULA_NAME)
    log "parser $FORMULA_NAME download url"
    V_VERSION=$( loop_parser "tag_name" )
    if [ -z "$V_VERSION" ]; then
        log 'parser file version error, skip update.'
        exit 0
    fi
    echo ${V_VERSION#*v}
    DOWNLOAD_URL="https://github.com/$AUTHUR_NAME/$FORMULA_NAME/releases/download/$V_VERSION/"$FORMULA_NAME"_"${V_VERSION#*v}"_Darwin_x86_64.tar.gz"
    if [ -z "$DOWNLOAD_URL" ]; then
        log 'parser download url error.'
        exit 0
    fi
    log "download url: $DOWNLOAD_URL  start downloading..."
    # wget -c $DOWNLOAD_URL -O $FORMULA_NAME.$V_VERSION.tar.gz
    curl -L  $DOWNLOAD_URL > $FORMULA_NAME.$V_VERSION.tar.gz
    if [ ! -e $FORMULA_NAME.$V_VERSION.tar.gz ]; then
        log "file download failed!"
        exit 1
    fi
    V_HASH256=$(sha256sum $FORMULA_NAME.$V_VERSION.tar.gz |cut  -d ' ' -f 1)
    UPDATE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
    log "file hash: $V_HASH256 parser $FORMULA_NAME version..."
    log "file version: $V_VERSION start clone..."
    log "update config...."
    sed -i "s#^\s*url.*#  url \"$DOWNLOAD_URL\"#g" homebrew-tap/$FILE_NAME.rb
    sed -i "s#^\s*version.*#  version \"$V_VERSION\"#g" homebrew-tap/$FILE_NAME.rb
    sed -i "s#^\s*sha256.*#  sha256 \"$V_HASH256\"#g" homebrew-tap/$FILE_NAME.rb
    # sed -i "s#^\s*desc.*#  desc \"$UPDATE_TIME\"#g" homebrew-tap/$FILE_NAME.rb
done

cd homebrew-tap
echo ”UpdateTime：$UPDATE_TIME” > update_time  
git add .
git commit -am "travis automated update" || exit 0
git push  --quiet "https://${GITHUB_TOKEN}@${GH_REF}" master:master

