const { sql } = require("../config/db");


// Database function to insert new doctor  //
const addDoctor = async (req) => {
  var query = `INSERT INTO doctors (doctor_fname, doctor_lname, doctor_age, doctor_field, doctor_potential, VM_supervisors) values ('${req.doctor_fname}', '${req.doctor_lname}', '${req.doctor_age}', '${req.doctor_field}', '${req.doctor_potential}', '${req.VM_supervisors}')`;
  try {
    let doctor = await sql(query);
    return doctor;
  } catch (err) {
    console.log(err)
  }
}

// Database function to retrieve all doctors  //
const getDoctors = async () => {
  var query = `Select * from doctors`;
  try {
    let doctors = await sql(query);
    return doctors;
  } catch (err) {
    console.log(err)
  }
}

// Database function to retrieve all doctors by VM supervisor //
const getDoctorsByVMSupervisor = async (user_id) => {
  var query = `Select * from doctors WHERE FIND_IN_SET(${user_id}, doctors.VM_supervisors)`;
  try {
    let doctors = await sql(query);
    return doctors;
  } catch (err) {
    console.log(err)
  }
}

// Database function to retrieve last doctor  //
const getLastDoctor = async () => {
  var query = `SELECT * FROM doctors ORDER BY doctor_id DESC LIMIT 1`;
  try {
    let doctors = await sql(query);
    return doctors;
  } catch (err) {
    console.log(err)
  }
}

module.exports = {
  addDoctor,
  getDoctors,
  getDoctorsByVMSupervisor,
  getLastDoctor,
}