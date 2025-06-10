@echo off
cd /d "C:\Users\Sandhiya Sivanandam\NewMan"

echo Running Newman Collection...
newman run "GoRest_EndPoints.postman_collection.json" -e "Dev.postman_environment.json" -r allure --reporter-allure-export "allure-results"

echo Generating Allure Report...
"C:\Users\Sandhiya Sivanandam\AppData\Roaming\npm\allure.cmd" generate "allure-results" -o "allure-report" --clean

echo Opening Allure Report in browser...
start "" "allure-report\index.html"
