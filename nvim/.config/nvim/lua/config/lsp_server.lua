return {
  servers = { "clangd", "pyright" },

  configs = {
    clangd = {
      cmd = {"clangd", "--query-driver=/usr/bin/c++"}
    },
    pyright = {},
  },
}
