#include "constants.h"

class laptop_flat_menu {
	idd = laptop_flat_menu_dialog_idd;
	movingEnable = true;
	controlsBackground[] = {laptop_flat_menu_background};
	objects[] = { };

	name = "LAPTOP_FLAT_MENU";
	onUnload = "";
	onLoad="uiNamespace setVariable ['LAPTOP_FLAT_MENU',_this select 0]";

	controls[] = {
		laptop_flat_menu_background,
		laptop_flat_menu_screen,
		laptop_flat_menu_screen_text_tl,
		laptop_flat_menu_button_mouse,
		laptop_flat_menu_button_space
	};

	class laptop_flat_menu_screen_text_tl : gui_RscText {
		idc = laptop_flat_menu_screen_text_tl_idc;
		x = -10; y = -10;
		w = 0.05; h = 0.05;
		style = ST_LEFT;
		text = "Sample Text";
	};

	class laptop_flat_menu_background : gui_RscPictureKeepAspect {
		idc = laptop_flat_menu_background_idc;
		x = -10; y = -10;
		w = 0.05; h = 0.05;
		moving = 1;
	};

	class laptop_flat_menu_screen : gui_RscPicture {
		idc = laptop_flat_menu_screen_idc;
		x = -10; y = -10;
		w = 0.05; h = 0.05;
		moving = 1;
	};

	class laptop_flat_menu_button_mouse : gui_RscMenuButton {
		idc = laptop_flat_menu_button_mouse_idc;
		x = -10; y = -10;
		w = 0.05; h = 0.05;
		text = "";
	};

	class laptop_flat_menu_button_space : gui_RscMenuButton {
		idc = laptop_flat_menu_button_space_idc;
		x = -10; y = -10;
		w = 0.05; h = 0.05;
		text = "";
	};
};