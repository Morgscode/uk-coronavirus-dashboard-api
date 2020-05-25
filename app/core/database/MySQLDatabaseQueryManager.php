<?php

namespace CovidDashboard\App\Core\Database;

use CovidDashboard\App\Core\Database\QueryBuilder;
use \PDO;

class MySQLDatabaseQueryManager implements QueryBuilder
{
  protected $db_interface;
  protected $query;
  protected $statement;

  public function __construct($db_connection)
  {
    $this->db_interface = $db_connection;
  }

  public function getAll($table)
  {
    $this->query = 'SELECT * FROM {$table}';
    $this->statement = $this->db_interface->prepare($this->query);
    $this->statement->execute();
    return $this->statement->fetchAll(PDO::FETCH_OBJ);
  }

  public function getRowById($table, $id)
  {
    $this->query = 'SELECT * FROM ${table} WHERE id = :id';
    $this->statement = $this->db_interface->prepare($this->query);
    $this->statement->bindParam(':id', $id);
    $this->statement->execute();
    return $this->statement->fetchAll(PDO::FETCH_OBJ);
  }

  public function getRowByMostRecentDateEntry($table)
  {
    $this->query = 'SELECT * FROM {$table} ORDER BY date DESC LIMIT 1';
    $this->statement = $this->db_interface->prepare($this->query);
    $this->statement->execute();
    return $this->statement->fetchAll(PDO::FETCH_OBJ);
  }

  public function getRowByMostRecentEntry($table)
  {
    $this->query = 'SELECT * FROM {$table} ORDER BY id DESC LIMIT 1';
    $this->statement = $this->db_interface->prepare($this->query);
    $this->statement->execute();
    return $this->statement->fetchAll(PDO::FETCH_OBJ);
  }

  public function insertSingle($table, $data)
  {
    $this->query = sprintf(
      'INSERT INTO %s (%s) VALUES (%s)',
      $table,
      implode(', ', array_keys($data)),
      ':' . implode(',  :', array_keys($data))
    );
    $this->statement = $this->db_interface->prepare($this->query);
    $this->statement->execute($data);
  }
}
