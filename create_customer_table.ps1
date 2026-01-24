$connString = "Server=localhost;Port=3306;Database=housekeeping;Uid=root;Pwd=root;"
$sql = @"
CREATE TABLE IF NOT EXISTS hk_customer (
  user_id bigint NOT NULL AUTO_INCREMENT,
  nick_name varchar(50) DEFAULT NULL,
  phone varchar(20) DEFAULT NULL,
  avatar varchar(255) DEFAULT NULL,
  sex tinyint DEFAULT 0,
  status tinyint DEFAULT 0,
  open_id varchar(100) DEFAULT NULL,
  create_time datetime DEFAULT CURRENT_TIMESTAMP,
  update_time datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  del_flag tinyint DEFAULT 0,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT IGNORE INTO hk_customer (user_id, nick_name, phone, sex, status) VALUES
(100, '小明', '13800138100', 1, 0),
(101, '小红', '13800138101', 2, 0),
(102, '大白', '13800138102', 1, 0),
(103, '小花', '13800138103', 2, 0),
(104, '阿强', '13800138104', 1, 1);
"@

Write-Host "请在MySQL客户端或Navicat中执行以下SQL："
Write-Host ""
Write-Host $sql
Write-Host ""
Write-Host "或者从以下文件导入："
Write-Host "c:\Users\root\Desktop\housekeeping\housekeeping-platform\housekeeping-cloud\sql\hk_customer.sql"
