return {
  name = "ant clear",
  builder = function(params)
    return {
      cmd = {'ant'},
      args = {"clear"},
      name = "clear",
      --cwd = "/tmp",
      --env = {
        --VAR = "FOO",
      --},
      --components = {"my_custom_component", "default"},
      --metadata = {
        --foo = "bar",
      --},
    }
  end,
  desc = "Limpiar proyecto ant",
  --tags = {overseer.TAG.BUILD},
  params = {
    -- See :help overseer-params
  },
  -- Determines sort order when choosing tasks. Lower comes first.
  --priority = 50,
  -- Add requirements for this template. If they are not met, the template will not be visible.
  -- All fields are optional.
  condition = {
    filetype = {"java", "form","xml",'mf"},
    --dir = "/home/user/my_project",
    callback = function(search)
      print(vim.inspect(search))
      return true
    end,
  },
}
