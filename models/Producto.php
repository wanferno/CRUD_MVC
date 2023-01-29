<?php
    class Producto extends Conectar{
        public function get_producto(){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_producto WHERE est=1";
            $sql=$conectar->prepare($sql);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function get_producto_x_id($prod_id){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_producto WHERE prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function delete_producto($prod_id){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_producto
                SET
                    est=0,
                    fech_elim=now()
                WHERE
                    prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function insert_producto($cat_id, $prod_nom, $prod_des){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_producto 
                (prod_id, cat_id, prod_nom, prod_des, fech_crea, fech_modi, fech_elim, est) 
                VALUES 
                (NULL, ?, ?, ?, now(), NULL, NULL, 1);";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$cat_id);
            $sql->bindValue(2,$prod_nom);
            $sql->bindValue(3,$prod_des);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }

        public function update_producto($prod_id, $cat_id, $prod_nom, $prod_des){
            $conectar=parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_producto
                SET
                    cat_id=?,
                    prod_nom=?,
                    prod_des=?,
                    fech_modi=now()
                WHERE
                    prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$cat_id);
            $sql->bindValue(2,$prod_nom);
            $sql->bindValue(3,$prod_des);
            $sql->bindValue(4,$prod_id);
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
    }
?>