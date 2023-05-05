using EmployeeMgt.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace EmployeeMgt.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        [HttpGet]
        [Route("getEmployeeList")]
        public IActionResult getAllEmployee()
        {
            sdirectdbContext sdirectdbContext = new sdirectdbContext();
            var objEmployee = sdirectdbContext.Emp2103s.ToList();
            return Ok(objEmployee);

            //List<EmployeeResponse> objResponse1 = new List<EmployeeResponse>();
            //EmployeeResponse objResponse = new EmployeeResponse();
            ////SqlConnection con = new SqlConnection("Data Source=192.168.0.240;Initial Catalog=sdirectdb;User ID=sdirectdb;Password=sdirectdb");
            //var builder = WebApplication.CreateBuilder();
            //string conStr = builder.Configuration.GetConnectionString("AppConnectionString");
            //SqlConnection con = new SqlConnection(conStr);
            //con.Open();
            //DataSet ds = new DataSet();
            //SqlDataAdapter adap = new SqlDataAdapter("select * from Emp_2103", con);
            //adap.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    foreach (DataRow drr in ds.Tables[0].Rows)
            //    {
            //        objResponse.EmpName = drr.ItemArray[1].ToString();
            //        objResponse.EmpEmail = drr.ItemArray[2].ToString();

            //        objResponse1.Add(new EmployeeResponse { EmpName = drr.ItemArray[1].ToString(), EmpEmail = drr.ItemArray[2].ToString() });
            //    }
            //}
            //responseData res = new responseData();
            //res.lstData1 = objResponse;
            //res.lstData = objResponse1;
            //return Ok(res);
        }


        [HttpPost]
        [Route("SaveEmployee")]
        public IActionResult SaveEmployee(string empName, string empEmail, int DeptId,decimal salary, bool isActive)
        {
            try
            {
                ReponseModel objModel = new ReponseModel();
                sdirectdbContext dbContext = new sdirectdbContext();
                Emp2103 model = new Emp2103();
                model.EmpName = empName;
                model.EmpEmail = empEmail;
                model.DeptId = DeptId;
                model.IsActive = isActive;
                model.Salary = salary;
                dbContext.Emp2103s.Add(model);
                dbContext.SaveChanges();
                objModel.ResponseCode = "OK";
                objModel.ResponseMessage = "Record has been successfully submitted.";
                return Ok(objModel);
            }
            catch (Exception ex)
            {
                return Ok();
            }

            //ReponseModel objModel = new ReponseModel();
            //int iActive = isActive == true ? 1 : 0;
            //SqlConnection con = new SqlConnection("Data Source=192.168.0.240;Initial Catalog=sdirectdb;User ID=sdirectdb;Password=sdirectdb");
            //con.Open();
            //SqlCommand cmp = new SqlCommand("Insert into Emp_2103 (EmpName,EmpEmail,DeptID,IsActive) Values('" + empName + "','" + empEmail + "','" + DeptId + "'," + iActive + ")", con);
            //cmp.Connection = con;
            //int i = cmp.ExecuteNonQuery();
            //con.Close();
            //objModel.ResponseCode = "OK";
            //objModel.ResponseMessage = "Record has been successfully submitted.";
            //return Ok(objModel);
        }


        [HttpPut]
        [Route("UpdateEmployee")]
        public IActionResult UpdateEmployee(int empId, string empEmail,decimal salary)
        {
            try
            {
                ReponseModel objModel = new ReponseModel();
                sdirectdbContext dbContext = new sdirectdbContext();
                var objEmployee = dbContext.Emp2103s.FirstOrDefault(l=> l.EmpId == empId);
                if (objEmployee != null)
                {
                    objEmployee.EmpEmail = empEmail;
                    objEmployee.Salary = salary;
                    dbContext.SaveChanges();

                    objModel.ResponseCode = "OK";
                    objModel.ResponseMessage = "Record has updated successfully.";
                }
                else
                {
                    objModel.ResponseCode = "OK";
                    objModel.ResponseMessage = "Record not exist.";
                }
                
                return Ok(objModel);
            }
            catch (Exception ex)
            {
                return Ok();
            }

        }



        [HttpGet]
        [Route("LinqDemo")]
        public IActionResult LinqDemo()
        {
            List<Employee> lstData = new List<Employee>();
            lstData.Add(new Employee { empName = "Prasant", amount = 100 });
            lstData.Add(new Employee { empName = "Raju", amount = 200 });
            lstData.Add(new Employee { empName = "Shakshi", amount = 300 });
            lstData.Add(new Employee { empName = "Harshit", amount = 150 });
            lstData.Add(new Employee { empName = "Saheil", amount = 500 });
            lstData.Add(new Employee { empName = "Anusha", amount = 70 });


            var data = lstData.ToList();

            List<Employee1> lstname = new List<Employee1>();

            lstname = (from item in lstData
                       select new Employee1 { EmployeeName = item.empName }
                       ).ToList();


            //lstname = lstData.ToList().Select(new Employee1 {empName =  });
            //foreach(var item in lstData)
            //{
            //    lstname.Add(item.empName);
            //}

            string fdfdfd = "";



            //var sumData = lstData.Sum();
            //var sumData1 = lstData.FirstOrDefault();
            //var sumData2 = lstData.Take(2);


            //var data = (from item in lstData
            //            select item
            //            ).ToList();

            //var dataOnly20 = lstData.FirstOrDefault(l=> Convert.ToInt32(l.ToString()) == 20);


            //var data20 = (from item in lstData
            //              where Convert.ToInt32(ite.ToString()) == 20
            //            select item
            //            ).ToList();







            return Ok(lstname);
        }
    }
}
