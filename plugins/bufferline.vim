
lua << EOF
require('bufferline').setup{
  options = {
    numbers = "none",
    close_command = "bdelete! %d",
    right_mouse_command = "vertical sbuffer %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    -- close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    name_formatter = function(buf)
        if buf.name:match('%.md') then
            return vim.fn.fnamemodify(buf.name, ':t:r')
        end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
    end,
    custom_filter = function(buf_number)
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
        return true
      end
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
        return true
      end
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
        return true
      end
    end,
    offsets = {
        {
            filetype = "NvimTree",
            text = function()
                return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "center"
        }
    },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thick",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = "id"
    },
    custom_areas = {
        right = function()
            local result = {}
            local error = vim.lsp.diagnostic.get_count(0, [[Error]])
            local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
            local info = vim.lsp.diagnostic.get_count(0, [[Information]])
            local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])
            
            if error ~= 0 then
                table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
            end
            if warning ~= 0 then
                table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
            end
            if hint ~= 0 then
                table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
            end
            if info ~= 0 then
                table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
            end
            return result
        end,
    }
}
EOF

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>

nnoremap <silent> gb :BufferLinePick<CR>

