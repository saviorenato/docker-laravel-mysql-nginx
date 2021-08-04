#!/bin/sh

green='\033[0;32m'
NC='\033[0m' # No Color

_="$(dirname "$0")/_functions"

echo "${green}===> [Start] Running composer${NC}"
$_/composer
echo "${green}===> [End] Running composer${NC}"

echo "${green}===> [Start] Running frontend${NC}"
$_/frontend
echo "${green}===> [End] Running frontend${NC}"
