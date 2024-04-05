function get_package(package)
    local path = vim.fn.stdpath("data") .. "/" .. package
    if vim.fn.isdirectory(package) == 0 then
        if not vim.loop.fs_stat(path) then
            vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "https://github.com/" .. package,
                path
            })
        end
    end

    vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/" .. package);
end
