return {
  "julienvincent/nvim-paredit",
  config = function()
    local paredit = require("nvim-paredit")
    paredit.setup({
      filetypes = { "clojure" },
      indent = {
        enabled = true,
        indentor = require("nvim-paredit.indentation.native").indentor,
      },
      keys = {
        [">)"] = { paredit.api.slurp_forwards, "Slurp forwards" },
        [">("] = { paredit.api.barf_backwards, "Barf backwards" },
        ["<)"] = { paredit.api.barf_forwards, "Barf forwards" },
        ["<("] = { paredit.api.slurp_backwards, "Slurp backwards" },
        [">e"] = { paredit.api.drag_element_forwards, "Drag element right" },
        ["<e"] = { paredit.api.drag_element_backwards, "Drag element left" },
        [">f"] = { paredit.api.drag_form_forwards, "Drag form right" },
        ["<f"] = { paredit.api.drag_form_backwards, "Drag form left" },
        ["<localleader>o"] = { paredit.api.raise_form, "Raise form" },
        ["<localleader>O"] = { paredit.api.raise_element, "Raise element" },
      },
    })
  end
}
