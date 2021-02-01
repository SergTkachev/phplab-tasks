<?php
/**
 * The $minute variable contains a number from 0 to 59 (i.e. 10 or 25 or 60 etc).
 * Determine in which quarter of an hour the number falls.
 * Return one of the values: "first", "second", "third" and "fourth".
 * Throw InvalidArgumentException if $minute is negative of greater then 60.
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  int  $minute
 * @return string
 * @throws InvalidArgumentException
 */

function getMinuteQuarter(int $minute)
{
if ($minute >= 0 && $minute <= 14) {
	echo('first');
}
if ($minute >= 15 && $minute <= 30) {
	echo('second');
}
if ($minute >= 31 && $minute <= 45) {
	echo('third');
}
if ($minute >= 46 && $minute <= 60) {
	echo('fourth');  
    
}
if($min<0 && $min>=61)
	{
		return InvalidArgumentException;
		echo 'Ohibka';
	}
}
getMinuteQuarter(10)
//$min = 10;



/**
 * The $year variable contains a year (i.e. 1995 or 2020 etc).
 * Return true if the year is Leap or false otherwise.
 * Throw InvalidArgumentException if $year is lower then 1900.
 * @see https://en.wikipedia.org/wiki/Leap_year
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  int  $year
 * @return boolean
 * @throws InvalidArgumentException
 */
function isLeapYear(int $year )
{
    if( $year % 4 == 0 )
        # Год високосный
       echo 'True';
    else
        # Год не високосный
       echo 'False';
   if($year<1900)
	{
		return InvalidArgumentException;
	}    
}
isLeapYear(2020)


/**
 * The $input variable contains a string of six digits (like '123456' or '385934').
 * Return true if the sum of the first three digits is equal with the sum of last three ones
 * (i.e. in first case 1+2+3 not equal with 4+5+6 - need to return false).
 * Throw InvalidArgumentException if $input contains more then 6 digits.
 * @see https://www.php.net/manual/en/class.invalidargumentexception.php
 *
 * @param  string  $input
 * @return boolean
 * @throws InvalidArgumentException
 */
$str='123456';
$str1='385934'; 

$str=(int)$str;
$str1=(int)$str1;

function isSumEqual(string $str){
    $count= 0;
    for($i=1;$i<6;$i++){
        $str = (string)$i;
        if(strlen($str)<6){
            for($j=strlen($str);$j<6;$j++){
                $str='0'.$str;
            }
        }
        If($str[0]+$str[1]+$str[2] == $str[3]+$str[4]+$str[5]){  
            $count++; echo 'Билет номер: '.$str.'<br>';
        }
    }
//echo 'Количество счастливых билетов: '.$count;
}
echo isSumEqual($str1);

