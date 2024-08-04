return {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    vscode = true,
    opts = function()
        local ai = require("mini.ai")
        return {
            n_lines = 500,
            custom_textobjects = {
                o = ai.gen_spec.treesitter({
                    a = { "@block.outer", "@conditional.outer", "@loop.outer" },
                    i = { "@block.inner", "@conditional.inner", "@loop.inner" },
                }),
                f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
                c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
                t = ai.gen_spec.treesitter({
                    a = { "@type.outer", "@type_definition.outer", "@type", "@type_annotation", "@annotation" },
                    i = { "@type.inner", "@type_definition.inner", "@type", "@type_annotation", "@annotation" },
                }),
                x = ai.gen_spec.treesitter({ a = "@assignment.outer", i = "@assignment.inner" }),
                u = ai.gen_spec.function_call(), -- 'u' for "Usage" (function call)
            },
        }
    end,
    config = function(_, opts)
        require("mini.ai").setup(opts)
    end,
}
