/// @description Insert description here
//Count
    timer += pendulum_frequency;

//Reset the timer
    if(timer > 360) {
        timer -=360;
    }

//Play the audio files
    if( timer == 180 || timer == 360 ){
        if( on_tick ){
            audio_play_sound(snd_tick, 1, false);
            on_tick = false; 
        }else{
            audio_play_sound(snd_tock, 1, false);
            on_tick = true;         
        }
    }

//Handle the pendulum
    orbit_angle = pendulum_amplitude*sin(degtorad(timer));
    
    image_angle = orbit_angle; 
