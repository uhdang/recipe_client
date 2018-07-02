CLIENT_OUT := "bin/client"
PKG := "github.com/uhdang/recipe_client"
CLIENT_PKG_BUILD := "${PKG}/client"
PKG_LIST := $(shell go list ${PKG}/... | grep -v /vendor/)

.PHONY: client

client: ## Build the binary for client
	@go build -i -v -o $(CLIENT_OUT) $(CLIENT_PKG_BUILD)

