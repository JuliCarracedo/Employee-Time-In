# Employee-Encounters

> Imput the times at which your employees checked in and out of the office in a week, and find out how many times they encountered each other.


## Built With

- Ruby 3.0.1


## Getting Started


To get a local copy up and running follow these simple example steps.

### Prerequisites

- Git Bash
- Ruby 2.7 or higher
- A code editor

### Setup

- Copy the repository locally by running `git clone https://github.com/JuliCarracedo/Employee-Time-In.git`

### Usage

- You can launch the console app by running `ruby app/script.rb` in the root folder
- FOR EACH EMPLOYEE
    - You will be asked to input a name
    - You will be asked to input a check-in and check-out time per day
- Once you are done inserting employee data, quit the suite by pressing q and enter
- You will see how many times the pairs of employees encountered each other while in the office.
- If there is no output, it means no one saw each other in the whole week.

### Explaination

- The application runtime can be split into two halves: the input stage and the output stage
    - In the input stage, the user is expected to fill in the required information. A loop keeps them from moving forward unless they provide the right information(proper time format, check-out is later than check-in) and a  higher level loop waits for the user to input as many employees as they want, being able to quit after each input ends.
    - In the output stage, all of the collected data is processed and a response is provided to the user(How many times each pair of users have encountered each other during the week)
- The app folder contains all of the logic, spreaded into four files.
    - Employees.rb defines the employee class and establishes how it will behave and compare to others
    - MyTime.rb is a convenient class that stores time and allows to compare two times.
    - Routines.rb is a module full of the most broad tasks to be executed, like the input stage's loops.
    - script.rb is the main file, calling on the functions provided by Routines in the order necesary for the application to function.

## Author

👤 **Julian Carracedo**

- GitHub: [@JuliCarracedo](https://github.com/JuliCarracedo)
- Twitter: [@CarracedoTrigo](https://twitter.com/CarracedoTrigo)
- LinkedIn: [Julian Carracedo](https://linkedin.com/in/julian-carracedo)
