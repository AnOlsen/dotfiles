#!/bin/bash

php artisan migrate:refresh --step=1 --env=testing
php artisan migrate:refresh --step=1
