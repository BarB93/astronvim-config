return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>bb"] = {
            function() Snacks.picker.buffers() end,
            desc = "Select buffer",
          },
        },
      },
    },
  },
}
