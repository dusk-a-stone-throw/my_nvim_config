require('code_runner').setup({
    mode = 'toggle',
    -- put here the commands by filetype
    filetype = {
        java = 'time cd $dir && javac $fileName && java $fileNameWithoutExt',
        python = 'time python3 -u',
        typescript = 'time deno run',
        rust = 'cd $dir && time rustc $fileName && $dir/$fileNameWithoutExt',
        cpp = 'make && time make run',
        sh = 'bash',
    },
})
