plugin.register("Mr0maks", "invis", "0.0.1", "invisible admin")

local say_text = reg_user_msg("SayText", -1)

local function print_chat(E, string_msg)
	message_begin(2, say_text, { 0, 0, 0 }, 0)
	write_byte(index_of_edict(E));
	write_string(string_msg);
	message_end();

	print(string_msg)
end

cmd.setChatCommand("invis", function (E, argv, args)
	if argv[1] == nil then print_chat(E, "bruh\n") return end
end)