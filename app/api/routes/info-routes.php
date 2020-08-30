<?php

$api->slim_app->get('/info/nhs-covid-19', 'DashboardWidgetController:getNHSCovidInfo');

if (ENV === 'dev') :

  $api->slim_app->get('/info/nhs-covid-api-test', 'DashboardWidgetController:testApiResponse');

  $api->slim_app->get('/info/update-covid-api-info', 'DashboardWidgetController:updateNHSCovidInfo');

endif;