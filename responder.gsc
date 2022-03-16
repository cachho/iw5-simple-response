init() {
    level thread chatListener();
}

chatListener() {
    while (true) {
        level waittill("say", message, player);
        str = strTok( message, "" );
        response = responses(str[0]);
        
        if(response != false) {
            cmdexec("say @" + player.name + " > " + response);
        }
    }
}

responses(message) {
    switch(message) {
        case "!discord": return "discord link: ^1discord.com";
        case "!rules": return "No rules, just behave...";
        default: return false;
    }
}