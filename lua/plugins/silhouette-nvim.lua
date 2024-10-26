-- denops.nvimが起動し終わる前に実行されるとエラーになるためwaitを入れる
-- マシンスペックや環境によって1000(ms)の値を調整する必要あり
vim.defer_fn(function()
    -- 設定はデフォルト値. 指定しなかった場合は下記の値になります
    require("silhouette").setup({
        task = {
            repetition_tasks_path = "./repetition-tasks.md",
            holidays_path = "./holidays.md",
        },
    })
end, 1000)
