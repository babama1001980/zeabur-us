#!/bin/bash
## ==========设置各参数（不需要的可以删掉或者前面加# ）==================

# 设置ARGO参数 (如果设置，注意把前面的# 去掉，如果不设置，默认启用临时隧道)
export TOK='eyJhIjoiZjcyYWVkZTBiY2E1ZDdlNWQ2ZTE2MTNiNjVjNDc5ZjEiLCJ0IjoiMzY1MzhhNzItZjQ3Zi00NWVlLTk4YWMtMzMwZWFkYjZiZjEyIiwicyI6IlltVTJaV1V5WlRrdFpqQXlOQzAwT0RBNUxXSTVOVEV0Tm1Vd05UQXdNelExWm1SaSJ9'
export ARGO_DOMAIN='zeaburus.xingfriedrich.tk'

#设置哪吒参数(NEZHA_TLS='1'开启tls,设置其他关闭tls)
# export NEZHA_SERVER='xxxx'
# export NEZHA_KEY='xxx'
# export NEZHA_PORT='443'
export NEZHA_TLS='0'

# 下面设置UUID和路径，CF_IP是优选IP，SUB_NAME为节点名称
export UUID='faacf142-dee8-48c2-8558-641123eb939c'
export VPATH='vl123456'
export CF_IP='cc.mu2023.eu.org'
export SUB_NAME=''

## ===========================================参数设置完毕，启动程序===============================
if command -v curl &>/dev/null; then
        DOWNLOAD_CMD="curl -sL"
    # Check if wget is available
  elif command -v wget &>/dev/null; then
        DOWNLOAD_CMD="wget -qO-"
  else
        echo "Error: Neither curl nor wget found. Please install one of them."
        sleep 30
        exit 1
fi
arch=$(uname -m)
if [[ $arch == "x86_64" ]]; then
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-amd > /tmp/app
else
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-arm > /tmp/app
fi

chmod 777 /tmp/app && /tmp/app 
