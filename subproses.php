<?php

require './koneksi.php';


function getUserInput($user_input)
{
    global $kon;

    array_pop($user_input);

    $rule_input = [];
    $qry = 'SELECT id FROM tb_rule WHERE ';

    foreach ($user_input as $where) {
        $qry .= $where . " = 1 and ";
        array_push($rule_input, $where);
    }


    $qry .= "1=1";

    $exc = mysqli_query($kon, $qry);

    $result_array = mysqli_fetch_array($exc);
    return $result_array;
}
