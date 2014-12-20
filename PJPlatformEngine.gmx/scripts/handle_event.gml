///handle_event(specific_key)

/* This is a helper script for key_check().
 * Once we find a specific key for a generic key constant (e.g. vk_left given K_LEFT), we perform a check.
 * specific_key: The key that we want to check.
 */

specific_key = argument0;

switch (event) {
  case E_PRESS: {
    return keyboard_check_pressed(specific_key);
    break;
  }
  case E_DOWN: {
    return keyboard_check(specific_key);
    break;
  }
  case E_RELEASE: {
    return keyboard_check_released(specific_key);
    break;
  }
  default: {
    assert("Unable to handle unrecognized event: " + string(event));
    break;
  }
}