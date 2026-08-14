return {
  --"nvim-treesitter/nvim-treesitter",
  --branch = "main", -- Ensure you are explicitly tracking the modern branch
  --build = ":TSUpdate",
  --config = function()
    -- Define the languages you want to ensure are installed
    --local configs = {
     -- "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline"
    --}
    
    -- Use the built-in installation utility provided on the main branch
    --require("nvim-treesitter.install").prefer_git = true
    
    -- Loop and install parsers if they aren't already present
    --for _, lang in ipairs(configs) do
     -- if not pcall(vim.treesitter.language.inspect, lang) then
     --   vim.cmd("TSInstall " .. lang)
      --end
    --end
--  end,
}

