require "util"

Settings = {
  new = function(player)
    local new = {
      collect=true
    }
    setmetatable(new, {__index=Settings})
    return new
  end,

  loadByPlayer = function(player)
    local name = player.name
    if name and name == "" then
      name = "noname"
    end
    local settings = util.table.deepcopy(defaultSettings)
    if not glob.players[name] then
      glob.players[name] = settings
    end
    glob.players[name].player = player
    setmetatable(glob.players[name], Settings)
    return glob.players[name]
  end,
  
  update = function(self, key, value)
    if type(key) == "table" then
      for k,v in pairs(key) do
        self[k] = v
      end
    else
      self.key = value
    end
  end,
}
