#! /bin/bash
if ! grep -q "gitflow" .git/config ;then
  cat << EOF >> .git/config
[gitflow "branch"]
	master = main
	develop = develop
[gitflow "prefix"]
	feature = feature/
	release = release/
	hotfix = hotfix/
	support = support/
	versiontag =
EOF
fi
