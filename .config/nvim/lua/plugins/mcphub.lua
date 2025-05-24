return {
  "ravitemer/mcphub.nvim",
  opts = {
    show_result_in_chat = true, -- Show mcp tool results in chat
    make_vars = true, -- Convert resources to #variables
    make_slash_commands = true, -- Add prompts as /slash commands
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
  config = function()
    require("mcphub").setup({
      --- `mcp-hub` binary related options-------------------
      config = vim.fn.expand("~/.config/mcphub/servers.json"), -- Absolute path to MCP Servers config file (will create if not exists)
      port = 37373, -- The port `mcp-hub` server listens to
      shutdown_delay = 60 * 10 * 1000, -- Delay in ms before shutting down the server when last instance closes (default: 10 minutes)
      use_bundled_binary = false,

      ---Chat-plugin related options-----------------
      auto_approve = true, -- Auto approve mcp tool calls
      auto_toggle_mcp_servers = true, -- Let LLMs start and stop MCP servers automatically
    })
  end,
}
