///key_check(key, event)

/* This script appropriately handles player input, given a key and event.
 * We use this to make support for multiple input types (gamepads) easier.
 * key: K_LEFT, K_RIGHT, K_UP, K_DOWN, K_JUMP, K_FIRE, K_START
 * event: E_PRESS, E_DOWN, E_RELEASE
 */ 

key   = argument0;
event = argument1;

// Define the default keyboard controls for each player.
switch (PLAYER_NUMBER) {
  case 1: {
    k_left = vk_left;
    k_right = vk_right;
    k_up = vk_up;
    k_down = vk_down;
    k_jump = ord("Z");
    k_fire = ord("X");
    k_start = vk_enter;
    break;
  }
  case 2: {
    k_left = ord("A");
    k_right = ord("D");
    k_up = ord("W");
    k_down = ord("S");
    k_jump = ord("R");
    k_fire = ord("T");
    k_start = ord("Q");
    break;
  }
  default: {
    assert("Default keyboard controls for player #" + string(PLAYER_NUMBER) + " haven't been specified.");
    break;
  }
}

// Handle an event based on the given key.
switch (key) {
  case K_LEFT: {
    return handle_event(k_left);
    break;
  }
  case K_RIGHT: {
    return handle_event(k_right);
    break;
  }
  case K_UP: {
    return handle_event(k_up);
    break;
  }
  case K_DOWN: {
    return handle_event(k_down);
    break;
  }
  case K_JUMP: {
    return handle_event(k_jump);
    break;
  }
  case K_FIRE: {
    return handle_event(k_fire);
    break;
  }
  case K_START: {
    return handle_event(k_start);
    break;
  }
  default: {
    assert("Unable to handle unrecognized key: " + string(key));
    break;
  }
}
    