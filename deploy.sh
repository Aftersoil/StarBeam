#!/usr/bin/env sh.
set -e

before="\033[32m"
rear="\033[0m"
address="origin"

prompt() {
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶▶ $rear"
}

pull() {
  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 正在获取远分支请稍后... $rear"
  git branch -r
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 远程分支获取完成 $rear"
  prompt

  read -p " ▶▶▶▶▶▶▶▶▶▶▶▶ 请输入你要拉取的分支: " dev

  # https://<USERNAME>.github.io/<REPO>  git@github.com:Aftersoil/Aftersoil-wiki.git
  git pull origin "$temp_branch"

  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 分支拉取成功, 并成功合并到本地分支 $rear"
  prompt

  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 重现编译现有环境, 请稍后... $rear"
  prompt
  # npm install
  # npm install cnpm --registry=https://registry.npm.taobao.org

  prompt
  echo -e "$before▶▶▶▶▶▶▶▶▶▶▶▶ 环境下载成功，请重启服务😎😎😎 $rear"
  prompt

  exit
}

push () {
  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 查看本地文件状态📖📖📖 $rear"
  git status

  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 新编辑的文件正在提交到暂存区, 请等待📒📒📒 $rear"
  git add .
  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 文件已传送到暂存区📗📗📗 $rear"
  prompt

  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 查看本地文件状态📗📗📗 $rear"
  prompt
  git status

  prompt
  read -p "▶▶▶▶▶▶▶▶▶▶▶▶ 请输入您提交 commit:" commit
  git commit -m "$commit"
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ commit 提交添加成功 📃📃📃 $rear"
  prompt

  sleep 1s

  TARGET_FILE_TMP=`sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' -e 's/\//\_/g'`
  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 正在在查看当前分支，如下: $rear"
  echo "$TARGET_FILE_TMP"
  prompt

  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 请选择要执行的操作: $rear"
  prompt
  select var in "push";
  do
    break
  done

  case $var in
  push)
    prompt
    echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ $TARGET_FILE_TMP 正在远程提交请稍后... $rear"
    prompt
    git push "$address" "$TARGET_FILE_TMP"
    prompt
    echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ $TARGET_FILE_TMP 分支成功推送，欢迎下次使用😘😘😘 $rear"
    prompt
  ;;
  *)
    prompt
    echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 您的输入有误请重新选择 $rear"
    push
  ;;
  esac

  exit
}

Quickly() {
  exit
}

deploy() {
  prompt
  echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 请输入您的操作 $rear"
  prompt
  select var in "pull" "push" "Quickly generate" "exit"
  do
    break
  done

  case $var in
    pull)
      pull
    ;;
    push)
      push
    ;;
    "Quickly generate")
      Quickly
    ;;
    exit)
      prompt
      echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 欢迎使用 🎉🎉🎉 $rear"
      prompt
      exit
    ;;
    *)
      prompt
      echo -e "$before ▶▶▶▶▶▶▶▶▶▶▶▶ 请输入正确的格式 😊😊😊👌🌹  $rear"
      deploy
      prompt
    ;;
  esac
}

deploy

# exit the program
exit
