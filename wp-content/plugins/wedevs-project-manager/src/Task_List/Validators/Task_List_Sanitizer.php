<?php

namespace WeDevs\PM\Task_List\Validators;

use WeDevs\PM\Core\Sanitizer\Abstract_Sanitizer;

class Task_List_Sanitizer extends Abstract_Sanitizer {
	public function filters() {
        return [
            'title'       => 'trimer|pm_kses',
            'description' => 'trimer|pm_kses',
        ];
    }
}
