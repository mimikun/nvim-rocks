vim-fall を入れてRocks syncしたら fall/ というディレクトリが生えた

`:Fall` が使えるようになってたが実行したらエラー

エラーは以下

```txt
Error detected while processing function fall#command#Fall#call[21]..function fall#command#Fall#call[10]..denops#request
[1]..denops#_internal#server#chan#request[6]..denops#_internal#rpc#nvim#request:
line    1:
Error invoking 'invoke' on channel 4 (denops):
Error: Failed to call 'picker:start' API in 'fall': Expected a value that satisfies the predicate isString, got undefine
d: undefined
    at Plugin.call (file:///home/USERNAME/.local/share/nvim-rocks/site/pack/rocks/start/denops.vim/denops/@denops-private/se
rvice.ts:279:13)
    at eventLoopTick (ext:core/01_core.js:175:7)
    at async Service.#dispatch (file:///home/USERNAME/.local/share/nvim-rocks/site/pack/rocks/start/denops.vim/denops/@denop
s-private/service.ts:117:12)
    at async Service.dispatch (file:///home/USERNAME/.local/share/nvim-rocks/site/pack/rocks/start/denops.vim/denops/@denops
-private/service.ts:123:14)
    at async dispatch (https://jsr.io/@lambdalisue/messagepack-rpc/2.4.0/dispatcher.ts:36:12)
    at async Session.#dispatch (https://jsr.io/@lambdalisue/messagepack-rpc/2.4.0/session.ts:255:22)
    at async Session.#handleRequestMessage (https://jsr.io/@lambdalisue/messagepack-rpc/2.4.0/session.ts:282:33)
```
