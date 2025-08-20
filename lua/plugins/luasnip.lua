return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  dependencies = {
    "rafamadriz/friendly-snippets", -- ✅ VSCode-style snippets including HTML boilerplate
  },
  config = function()
    local ls = require("luasnip")

    -- 🔽 Load snippets from friendly-snippets (html, js, etc.)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- ✅ Your existing Unity snippets (cs filetype)
    ls.add_snippets("cs", {
      ls.snippet("start", {
        ls.text_node("void Start() {"),
        ls.text_node({ "", "  " }),
        ls.insert_node(1),
        ls.text_node({ "", "}" }),
      }),
      ls.snippet("update", {
        ls.text_node("void Update() {"),
        ls.text_node({ "", "  " }),
        ls.insert_node(1),
        ls.text_node({ "", "}" }),
      }),
    })
  end,
}

