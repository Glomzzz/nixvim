{ helpers, ... }:

{
  plugins.mini = {
    enable = true;
    modules.icons = {

    };
    mockDevIcons = true;
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>bd";
      action = helpers.mkRaw ''
        function()
        	local bd = require("mini.bufremove").delete
        	if vim.bo.modified then
        		local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
        		if choice == 1 then -- Yes
        			vim.cmd.write()
        			bd(0)
        		elseif choice == 2 then -- No
        			bd(0, true)
        		end
        	else
        		bd(0)
        	end
        end
      '';
      options = {
        desc = "Remove Buffere";
      };
    }
  ];
}
