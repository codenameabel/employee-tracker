// Dependencies 
var mysql = require("mysql"); 
var inquirer = require("inquirer");

// Connects to mysql 
var connection = mysql.createConnection({ 
    host: "localhost",
    port: 3001,
    user: "root",
    password: "th1znation",
    database: "employee_tracker", 
});

// Starts application 
connection.connect(function (err) {
    if (err) throw err;

    questions();
});

// Prompts questions 
function questions() {
    inquirer 
      .prompt({
          type: "list",
          name: "action",
          message : "What would you like to do?",
          choices: [
              "View All Employees",
              "View All Employees by Department", 
              "View All Employees by Role",
              "Create a Department", 
              "Create a Role",
              "Add an Employee",
              "Update Employee Role",
              "Exit",
          ],
      })
    //   Switch case for each option
    .then(function (answer) {
        switch (answer.action) {
            case "View All Employees":
                viewAll();
                break;

            case "View All Employees by Department":
                viewAllDepartment();
                break;

            case "View All Employees by Role":
                viewAllRole(); 
                break;

            case "Create a Department":
                createDep();
                break;

            case "Create a Role":
                createRole();
                break;
            
            case "Add an Employee":
                addEmployee();
                break;

            case "Update Employee Role":
                updateEmployee();
                break;

            case "Exit":
                connection.end(); 
                break;
        }
    });
}