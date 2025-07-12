-- lua/plugins/smart-open.lua
-- Plugin personalizado para abrir archivos en splits específicos

local M = {}

-- Función para obtener la lista de splits disponibles
function M.get_splits()
  local splits = {}
  local current_win = vim.api.nvim_get_current_win()
  
  -- Obtener todas las ventanas
  local wins = vim.api.nvim_list_wins()
  
  for _, win in ipairs(wins) do
    local buf = vim.api.nvim_win_get_buf(win)
    local buf_name = vim.api.nvim_buf_get_name(buf)
    local win_id = win
    local is_current = (win == current_win) and " (actual)" or ""
    
    table.insert(splits, {
      win_id = win_id,
      buf_name = buf_name,
      display = string.format("Split %d: %s%s", win_id, buf_name ~= "" and buf_name or "[No file]", is_current)
    })
  end
  
  return splits
end

-- Función para mostrar el menú de splits
function M.show_split_menu(file_path, callback)
  local splits = M.get_splits()
  
  if #splits == 1 then
    -- Solo hay una ventana, abrir directamente
    callback(splits[1].win_id, file_path)
    return
  end
  
  -- Crear el menú
  local menu_items = {}
  for i, split in ipairs(splits) do
    table.insert(menu_items, string.format("%d. %s", i, split.display))
  end
  table.insert(menu_items, "n. Nueva ventana")
  table.insert(menu_items, "c. Cancelar")
  
  -- Mostrar el menú usando vim.ui.select
  vim.ui.select(menu_items, {
    prompt = "¿En qué split quieres abrir '" .. vim.fn.fnamemodify(file_path, ":t") .. "'?",
    format_item = function(item)
      return item
    end,
  }, function(choice, idx)
    if not choice then return end -- Cancelado
    
    if choice:match("^%d+%.") then
      -- Split existente
      local split_idx = tonumber(choice:match("^(%d+)"))
      local target_win = splits[split_idx].win_id
      callback(target_win, file_path)
    elseif choice:match("^n%.") then
      -- Nueva ventana
      vim.cmd("vsplit")
      local new_win = vim.api.nvim_get_current_win()
      callback(new_win, file_path)
    end
    -- Si es "c." o cualquier otra cosa, no hacer nada (cancelar)
  end)
end

-- Función para abrir archivo en una ventana específica
function M.open_in_window(win_id, file_path)
  -- Cambiar a la ventana objetivo
  vim.api.nvim_set_current_win(win_id)
  
  -- Abrir el archivo
  vim.cmd("edit " .. vim.fn.fnameescape(file_path))
end

-- Función para configurar Telescope con Smart Open
function M.setup_telescope_smart_open()
  require('telescope.builtin').file_browser({
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      
      -- Mapear Enter para abrir con selección de split
      map('i', '<CR>', function()
        local entry = require('telescope.actions.state').get_selected_entry()
        if entry then
          actions.close(prompt_bufnr)
          M.show_split_menu(entry[1], M.open_in_window)
        end
      end)
      
      map('n', '<CR>', function()
        local entry = require('telescope.actions.state').get_selected_entry()
        if entry then
          actions.close(prompt_bufnr)
          M.show_split_menu(entry[1], M.open_in_window)
        end
      end)
      
      return true
    end
  })
end

-- Función para abrir archivo actual en split específico
function M.open_current_file_in_split()
  local current_file = vim.fn.expand('%:p')
  if current_file ~= "" then
    M.show_split_menu(current_file, M.open_in_window)
  else
    vim.notify("No hay archivo actual para abrir", vim.log.levels.WARN)
  end
end

-- Exportar el módulo para que sea accesible
_G.smart_open = M

return {
  "nvim-lua/plenary.nvim", -- Dependencia para vim.ui.select
  config = function()
    -- Exportar el módulo globalmente para que sea accesible desde keymaps
    _G.smart_open = M
  end,
} 