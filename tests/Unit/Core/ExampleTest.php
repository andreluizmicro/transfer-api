<?php

declare(strict_types=1);

namespace Core\classExampleTest;

use Core\Example;
use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    public function testFoo(): void
    {
        $example = new Example();

        $this->assertEquals('string', $example->foo());
    }
}