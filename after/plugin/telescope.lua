local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- [p]roject [f]iles
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- git files
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input(" Grep > ") }) -- [p]roject [s]earch (with grep)
end)
