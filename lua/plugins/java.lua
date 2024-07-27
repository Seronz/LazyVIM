return {
  {
    "mfussenegger/nvim-jdtls",
    config = function()
      local jdtls = require("jdtls")

      local jdtls_path = os.getenv("HOME") .. "/jdtls"

      local config = {
        cmd = { jdtls_path .. "/bin/jdtls" },
        root_dir = jdtls.setup.find_root({ ".git", "pom.xml", "build.gradle" }),
        settings = {
          java = {},
        },
      }
      jdtls.start_or_attach(config)
    end,
  },
}
