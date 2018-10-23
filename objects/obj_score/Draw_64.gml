/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 390A0483
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "74236a22-ff2a-4e04-ae4e-031e88c7f543"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1D97D0A3
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 108CA8F9
/// @DnDArgument : "color" "$FF6565FF"
draw_set_colour($FF6565FF & $ffffff);
draw_set_alpha(($FF6565FF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 02CF1DC4
/// @DnDArgument : "x" "512"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "thescore"
draw_text(512, 32, string("Score: ") + string(thescore));