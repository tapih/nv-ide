setup:
	brew install yarn

lsp: python terraform dockerfile graphql vscode

python:
	yarn global add pyright

terraform:
	brew install hashicorp/tap/terraform-ls

dockerfile:
	yarn global add dockerfile-language-server-nodejs

graphql:
	yarn global add graphql-language-service-cli

vscode:
	yarn global add vscode-langservers-extracted
