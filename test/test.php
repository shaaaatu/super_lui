<?php
class MyClass {
    const CONST_VALUE = 'A constant value';
}

$classname = 'MyClass';
/* echo $classname::CONST_VALUE . "\n"; */

/* echo MyClass::CONST_VALUE . "\n"; */
class OtherClass extends MyClass
{
    public static $my_static = 'static var';
	public $var = 'normal var';

    public function doubleColon() {
        echo parent::CONST_VALUE . "\n";
        echo self::$my_static . "\n";
		echo $this->var . "\n";
    }
	public function change() {
		$this->var = 'changed';
		self::$my_static = 'static changed';
	}
}

$classname = 'OtherClass';
$other = new OtherClass();
$other->doubleColon();
$other->change();
$other->doubleColon();
?>
