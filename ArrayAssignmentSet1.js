const Student=[
    {
      "FirstName": "John",
      "LastName": "Doe",
      "Age": 20,
      "Department": "Computer Science"
    },
    {
      "FirstName": "Jane",
      "LastName": "Smith",
      "Age": 22,
      "Department": "Physics"
    },
    {
      "FirstName": "Michael",
      "LastName": "Johnson",
      "Age": 21, 
      "Department": "Mathematics"
    },
    {
      "FirstName": "Sarah",
      "LastName": "Williams",
      "Age": 19,
      "Department": "Computer Science"
    },
    {
      "FirstName": "Robert",
      "LastName": "Brown",
      "Age": 23,
      "Department": "Mathematics"
    },
    {
      "FirstName": "Emily",
      "LastName": "Davis",
      "Age": 20,
      "Department": "Computer Science"
    }
  ];

  //1. List the students whose department is computer science.
  const CsStudents=Student.filter(Student=>Student.Department==="Computer Science");
CsStudents.forEach(element => {
    console.log(element);
});

//2. List the first name of students whose age is greater than  21
const Greater21=Student.filter(Student=>Student.Age>21);
Greater21.forEach(element =>{
    console.log(element);
})

//3. Check whether a student having a first name as Robert is 
//present in the Computer Science Department. The result should be in boolean type
const isRobert=Student.some(Student=>Student.FirstName=="Robert" && Student.Department=="Computer Science");
console.log(isRobert);

//4. Check whether there is any student whose age is greater than 23 is studying in
// the Maths department.The result should be in boolean type
const isStudent=Student.some(Student=>Student.Age>23 && Student.Department=="Mathematics");
console.log(isStudent);

//5. Check whether all the students are above an age group of 18.The result should be in boolean type.
const is18=Student.every(Student=>Student.Age>18);
console.log(is18);

//6. Assuming that there is only one student having a first name as John, Print his department name.
const deptJohn=Student.find(Student=>Student.FirstName="John");
console.log(deptJohn.Department);
