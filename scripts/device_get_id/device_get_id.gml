///device_get_id()

var rID = "unknown";
ini_open("ga.ini");
    if (ini_key_exists("ga", "id")) {
        rID = ini_read_string("ga", "id", "unknown");
    } else {
        rID = random_string(25);
        ini_write_string("ga", "id", rID);
    }
ini_close();


return rID;

