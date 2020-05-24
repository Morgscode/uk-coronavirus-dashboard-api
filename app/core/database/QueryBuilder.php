<?php

namespace CovidDashboard\App\Core\Database;

interface QueryBuilder
{
  public function getAll($table);
  public function getRowByID($table, $id);
  public function getRowByMostRecentEntry($table);
  public function getRowByMostRecentDateEntry($table);
  public function insertSingle($data, $table);
}
