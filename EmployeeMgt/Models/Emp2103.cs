using System;
using System.Collections.Generic;

namespace EmployeeMgt.Models
{
    public partial class Emp2103
    {
        public int EmpId { get; set; }
        public string? EmpName { get; set; }
        public string? EmpEmail { get; set; }
        public int DeptId { get; set; }
        public bool? IsActive { get; set; }
        public decimal? Salary { get; set; }
    }
}
