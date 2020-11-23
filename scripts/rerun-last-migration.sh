#!/bin/bash

php artisan migrate:rollback --step=1
php artisan migrate:rollback --step=1 --env=testing
php artisan migrate
php artisan migrate --env=testing
