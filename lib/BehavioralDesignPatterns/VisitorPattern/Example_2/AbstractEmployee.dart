
abstract class AbstractEmployee {

  final String id, name, department, employmentType, email;
  final double salary;
  final int experienceYears;

  const AbstractEmployee(
      this.id,
      this.name,
      this.salary,
      this.department,
      this.experienceYears,
      this.employmentType,
      this.email
  );
}