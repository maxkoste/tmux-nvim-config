vim.api.nvim_create_user_command("Run", function()
  local function is_gradle_project()
    return vim.fn.filereadable(vim.fn.getcwd() .. "/build.gradle") == 1
  end

  local function is_maven_project()
    return vim.fn.filereadable(vim.fn.getcwd() .. "/pom.xml") == 1
  end

  local function get_main_class()
    local current_file = vim.fn.expand("%:p")
    return current_file:gsub(".*/src/main/java/", ""):gsub("%.java", ""):gsub("/", ".")
  end

  local main_class = get_main_class()
  local command = nil

  if is_gradle_project() then
    command = "gradle run --args='" .. main_class .. "'"
  elseif is_maven_project() then
    command = "mvn compile exec:java -Dexec.mainClass=" .. main_class
  else
    vim.notify("No build.gradle or pom.xml found in project root.", vim.log.levels.ERROR)
    return
  end

  vim.cmd("split | terminal " .. command)
end, {})
