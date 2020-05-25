<?php

namespace CovidDashboard\App\Core\Database;

use  CovidDashboard\App\Core\Database\DatabaseConnection;
use \PDO;
use \PDOException;

class MySQLDataBaseConnection implements DatabaseConnection
{
  protected $servername;
  protected $dbusername;
  protected $dbpassword;
  protected $dbname;
  protected $dsn;
  public $conn;

  public function __construct($servername, $dbusername, $dbpassword, $dbname)
  {
    $this->servername = $servername;
    $this->dbusername = $dbusername;
    $this->dbpassword = $dbpassword;
    $this->dbname = $dbname;
    $this->dsn = 'mysql:host=$this->servername;dbname=$this->dbname';
  }

  public function connect()
  {

    try {
      $this->conn = new PDO($this->dsn, $this->dbusername, $this->dbpassword);
      $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $this->conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
    } catch (PDOException $e) {
      $e->getMessage();
    }
  }
}
