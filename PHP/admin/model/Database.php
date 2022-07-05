<?php
    class Database {
        private $dbHost = "localhost";
        private $dbUser = "root";
        private $dbPass = "";
        private $dbName = 'asmphp2';

        private $statement;
        private $db;
        private $error;

        public function __construct() {
            $conn = 'mysql:host=' . $this->dbHost . ';dbname=' . $this->dbName;
            $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
            try {
                $this->db = new PDO($conn, $this->dbUser, $this->dbPass, $options);
            } catch (PDOException $e) {
                $this->error = $e->getMessage();
                echo $this->error;
            }
        }

        //Allows us to write queries
        public function query($sql) {
            $this->statement = $this->db->prepare($sql);
        }

        //Bind values
        public function bind($parameter, $value) {
            $this->statement->bindParam($parameter, $value);  
        }

        //Execute the prepared statement
        public function execute() {
            return $this->statement->execute();
        }

        //Return an array
        public function resultSet() {
            $this->execute();
            return $this->statement->fetchAll();
        }

        //Return a specific row as an object
        public function single() {
            $this->execute();
            return $this->statement->fetch(PDO::FETCH_OBJ);
        }

        //Get's the row count
        public function rowCount() {
            return $this->statement->rowCount();
        }
    }
