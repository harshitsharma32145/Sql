namespace EmployeeMgt
{
    public class EmployeeResponse
    {
        public string EmpName { get; set; }
        public string EmpEmail { get; set; }
    }

    public class responseData
    {
        public List<EmployeeResponse> lstData { get; set; }
        public EmployeeResponse lstData1 { get; set; }

    }
}
