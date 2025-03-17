return {
  "iamcco/markdown-preview.nvim",
  -- build = "cd app && npm install", -- 确保插件正确安装
  ft = "markdown", -- 仅对 Markdown 文件类型加载
  config = function()
    -- 设置 <leader>mp 快捷键来执行 MarkdownPreview 命令
    vim.keymap.set(
      "n",
      "<leader>mp",
      ":MarkdownPreview<CR>",
      { noremap = true, silent = true, desc = "Markdown Preview" }
    )

    vim.keymap.set(
      "n",
      "<leader>ms",
      ":MarkdownPreviewStop<CR>",
      { noremap = true, silent = true, desc = "Markdown Preview" }
    )

    vim.g.mkdp_port = "8080" -- 指定端口
    vim.g.mkdp_theme = "dark" -- 设置主题
  end,
}
