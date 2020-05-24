<?php

$api->slim_app->get('/stats/deaths', 'StatsController:getAllCovidDeaths');

$api->slim_app->get('/stats/cases', 'StatsController:getAllCovidCases');

$api->slim_app->get('/stats/deaths/latest', 'StatsController:getLatestCovidDeathStats');

$api->slim_app->get('/stats/cases/latest', 'StatsController:getLatestCovidCasesStats');
