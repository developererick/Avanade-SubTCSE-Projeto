using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Services
{
    public interface IEmployeeService
    {
        Task<Employee.Entities.Employee> AddEmployee(Entities.EmployeeRole employee);
    }
}
