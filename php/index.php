<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css"
      integrity="2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
<style>
*{
    font-size: 95%;
}
    div{
        border: 1px solid black;
        width: 95%;
        margin-left: 2%;
        margin-top: 2%;
    }
</style>

<?php
require('spreadsheet-reader-master/php-excel-reader/excel_reader2.php');
require('spreadsheet-reader-master/SpreadsheetReader.php');
require_once 'Class/DataBase.php';

$pdo = new PDO($dsn, $user, $pass, $opt);
$mimes = ['application/vnd.ms-excel', 'text/xls', 'text/xlsx', 'application/vnd.oasis.opendocument.spreadsheet'];
$uploadFilePath = 'task.xlsx';
$reader = new SpreadsheetReader($uploadFilePath);
$totalSheet = count($reader->sheets());
$reader->ChangeSheet(0);

if (empty($_REQUEST['sort'])) {
    $_REQUEST['sort'] = 'id_customer';
}

/**
 * Імпорт з Exel файла в одну таблицю
 */
/*
foreach ($reader as $row) {
    $stmt = $pdo->exec("INSERT INTO test
      (name, surename, email, phone, tariff, date, sex, country, city, account, 
      description, count_workers, coordinator )
      VALUES ('" . $row[0] . "', '" . $row[1] . "','" . $row[2] . "','" . $row[3] . "',
      '" . $row[4] . "','" . $row[5] . "',
        '" . $row[6] . "', '" . $row[7] . "','" . $row[8] . "','" . $row[9] . "','" . $row[10] . "',
         '" . $row[11] . "','" . $row[12] . "' )");

}

//Виидалення першого запису з таблиці
// $pdo->exec("delete from test where id = (select id from test order by id LIMIT 0,1)");

//Перенесення даних в окремі таблиці
$pdo->exec("INSERT INTO customer(name, surename, account, count_workers, description2) SELECT test.name, test.surename, test.account, test.count_workers, test.description FROM test ");
$pdo->exec("INSERT into contacts(email, phone) SELECT test.email, test.phone FROM test");
$pdo->exec("INSERT into country(country_name) SELECT DISTINCT test.country FROM test WHERE test.country != ' '");
$pdo->exec("INSERT into city(city_name) SELECT DISTINCT test.city FROM test WHERE test.city != ' '");
$pdo->exec("INSERT into gender(title_gender) SELECT DISTINCT test.gender FROM test");
$pdo->exec("INSERT into tariff(title_tariff) SELECT DISTINCT test.tariff FROM test WHERE test.city != ' '");
$pdo->exec("INSERT into description(all_description) SELECT  test.description FROM test");
$pdo->exec("update country, city, test set city.id_country = country.id_country
                      where country.country_name=test.country and city.city_name = test.city;");
$pdo->exec("update test, customer, contacts set customer.id_contacts= contacts.id_contacts
                      where test.phone = contacts.phone and test.email = contacts.email and test.name = customer.name and test.surename=customer.surename");
$pdo->exec("update customer, test, gender set customer.id_gender = gender.id_gender
                      where test.gender = gender.title_gender and customer.name = test.name");
$pdo->exec("update customer, test, tariff set customer.id_tariff = tariff.id_tariff
                      where test.tariff=tariff.title_tariff and test.surename = customer.surename");
$pdo->exec("update contacts, test, city set contacts.id_city = city.id_city
                      where test.city = city.city_name and test.email = contacts.email");
$pdo->exec("update customer, test, coordinator set customer.id_coordinator = coordinator.id_coordinator
                      where test.coordinator = coordinator.coordinator_name and test.surename = customer.surename");
*/
/**
 * Вивід всіх даних з таблиць
 */
$all_table = $pdo->query("
SELECT  customer.id_customer, customer.name, customer.surename,  contacts.email, contacts.phone, tariff.title_tariff, customer.date, 
gender.title_gender,  country.country_name, city.city_name, customer.account, customer.description2, customer.count_workers,
coordinator.coordinator_name
from customer
left JOIN tariff on tariff.id_tariff=customer.id_tariff 
left JOIN contacts on contacts.id_contacts=customer.id_contacts
left JOIN gender on gender.id_gender = customer.id_gender
left JOIN city on city.id_city = contacts.id_city
left JOIN country on country.id_country = city.id_country
left JOIN coordinator on coordinator.id_coordinator = customer.id_coordinator
order  by " . $_REQUEST['sort'] . "");

//Вивід зведної таблиці в html форматі

echo '<div>';
echo '<table class="table">';
echo '
<thead class="thead-inverse">
<th><a href="index.php?sort=id_customer">Id</a></th>
<th><a href="index.php?sort=customer.name">Имя</a></th>
<th><a href="index.php?sort=customer.surename">Прізвище</a></th>
<th><a href="index.php?sort=contacts.email">Ел.пошта</a></th>
<th><a href="index.php?sort=contacts.email">Телефон</a></th>
<th><a href="index.php?sort=tariff.title_tariff">Тариф</a></th>
<th><a href="index.php?sort=customer.date">Дата народження</a></th>
<th><a href="index.php?sort=gender.title_gender">Стать</a></th>
<th><a href="index.php?sort=country.country_name">Країна</a></th>
<th><a href="index.php?sort=city.city_name">Місто</a></th>
<th><a href="index.php?sort=customer.account">Стан рахунку, USD</a></th>
<th><a href="index.php?sort=customer.description2">Ключові слова</a></th>
<th><a href="index.php?sort=customer.count_workers">Кількість підлеглих</a></th>
<th><a href="index.php?sort=coordinator.coordinator_name">Координатор</a></th>
</thead>';
foreach ($all_table as $elem) {
    echo '<tr>';
    foreach ($elem as $item) {
        echo '<td>' . $item . '</td>';
    }
    echo '</tr>';
}
echo '</table>';
echo '</div>';













