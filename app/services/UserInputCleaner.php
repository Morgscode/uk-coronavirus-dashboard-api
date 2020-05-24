<?php 

namespace CovidDashboard\App\Services;

use CovidDashboard\App\Services\InputSanitizer;

class UserInputCleaner implements InputSanitizer {

  private static function sanitize_input_field($field) {
      switch (gettype($field)) {
        case 'string': 
          return filter_var($field, FILTER_SANITIZE_STRING);
          break;
        case 'integer':
          return filter_var($field, FILTER_SANITIZE_NUMBER_INT);
          break;
      }
    }
  
  public function sanitizeInput($post_data) {
    return array_map('self::sanitize_input_field', $post_data);
  }

}