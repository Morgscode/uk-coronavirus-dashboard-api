<?php

$api->slim_app->get('/info/nhs-covid-19', 'DashboardWidgetController:getNHSCovidInfo');

if (ENV === 'dev') :

  $api->slim_app->get('/info/nhs-covid-19-test', 'DashboardWidgetController:testNHSApiResponse');

endif;