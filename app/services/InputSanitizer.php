<?php 

namespace CovidDashboard\App\Services;

interface InputSanitizer {
  public function sanitizeInput($data);
} 