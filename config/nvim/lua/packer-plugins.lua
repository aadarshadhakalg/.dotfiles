return require('packer').startup(function(use)
	--packer can manage itself
	
	use 'wbthomason/packer.nvim'

	--colorscheme
	use 'gruvbox-community/gruvbox'

	--Nvim Tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
		'nvim-tree/nvim-web-devicons',
		},
		tag='nightly'
	}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use {'neoclide/coc.nvim', branch = 'release'}

	use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

end)
