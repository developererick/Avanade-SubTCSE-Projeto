using Avanade.SubTCSE.Projeto.Data.Repositories.Base;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Repository;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.EmployeeRole
{
    public class EmployeeRoleRepository
        : BaseRepository<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole, string>
        , IEmployeeRoleRepository
    {
        public override Task<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole> AddAsync(Domain.Aggregates.EmployeeRole.Entities.EmployeeRole entity)
        {
            return base.AddAsync(entity);
        }
    }
}
