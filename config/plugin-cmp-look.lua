----
-- Plugin: cmp-look
-- look source for nvim-cmp. See https://github.com/octaltree/cmp-look#look-source-for-nvim-cmp for details
----

require('cmp').setup({
    sources = {
        {
            name = 'look',
            keyword_length = 2,
            option = {
                convert_case = true,
                loud = true,
                dict = '/usr/share/dict/words'
            }
        }
    }
})
