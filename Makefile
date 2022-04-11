

login:
	bash login_ghcr.sh

pandoc-latex-ja: login
	bash deploy_ghcr.sh $@

python-facker: login
	bash deploy_ghcr.sh $@

python-science-ja: login
	bash deploy_ghcr.sh $@

pandoc-lualatex-ja: login
	bash deploy_ghcr.sh $@
