<?php

namespace CovidDashboard\App\Api\Models;

class NHSConditionApiMeta
{

  public function __construct($api_response_obj)
  {
    $this->condition_name = $api_response_obj->about->name;
    $this->description = $api_response_obj->hasPart[0]->description;
    $this->symptoms = $api_response_obj->hasPart[0]->text;
    $this->self_care = $api_response_obj->hasPart[3]->text;
    $this->nhs_condition_url = $api_response_obj->url;
    $this->nhs_header_url = $api_response_obj->author->logo;
    $this->nhs_api_response = json_encode($api_response_obj);
  }
}
