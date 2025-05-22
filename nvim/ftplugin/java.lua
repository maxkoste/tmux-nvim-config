vim.api.nvim_create_user_command("Run", function()
  local current_file = vim.fn.expand("%:p")
  local main_class = current_file:gsub(".*/src/main/java/", ""):gsub("%.java", ""):gsub("/", ".")

  vim.cmd("split | terminal mvn compile exec:java -Dexec.mainClass=" .. main_class)
end, {})
