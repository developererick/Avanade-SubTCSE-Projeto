using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.Employee.Interfaces.Repositories
{
    public interface IEmployeeRepository:IBaseRepository<Domain.Aggregates.Employee.Entities.Employee,string>
    {
        Task<Employee.Entities.Employee> AddEmployee(Employee.Entities.Employee employee);
    }
}
