/*
	This script simply grabs the OS and returns a nice string. 
*/

var _os = "";

switch (os_type){
	case os_windows: _os = "Windows"; break;
	case os_android: _os = "Android"; break;
	case os_linux: _os = "Linux"; break;
	case os_macosx: _os = "Mac"; break;
	case os_ios: _os = "Iphone"; break;
	case os_winphone: _os = "Windows Phone"; break;
	default: _os = "Unknown" break;
}
   
return _os; 