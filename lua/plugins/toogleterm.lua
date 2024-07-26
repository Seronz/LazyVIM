-- ~/.config/nvim/lua/plugins/toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 10, -- Ukuran terminal, sesuaikan sesuai keinginanmu
      open_mapping = [[<c-\>]], -- Shortcut untuk membuka terminal
      direction = "horizontal", -- Posisi terminal (horizontal di bawah)
      shade_terminals = true,
      shading_factor = "1", -- Faktor shading
      start_in_insert = true,
      insert_mappings = true, -- Mapping saat di mode insert
      terminal_mappings = true, -- Mapping di dalam terminal
      persist_size = true,
      close_on_exit = true, -- Menutup terminal saat proses selesai
      -- Opsi tambahan jika diperlukan
      float_opts = {
        border = "curved",
        wiblend = 80,
        hightlight = {
          border = "Normal",
          background = "Normal",
        },
      },
    })
  end,
}
