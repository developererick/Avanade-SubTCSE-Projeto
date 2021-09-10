using Avanade.SubTCSE.Projeto.Data.Repositories.Base;
using Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Interfaces.Repository;
using Avanade.SubTCSE.Projeto.Domain.Base.Repository.MongoDB;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.EmployeeRole
{
    public class EmployeeRoleRepository
        : BaseRepository<Domain.Aggregates.EmployeeRole.Entities.EmployeeRole, string>
        , IEmployeeRoleRepository
    {
        public EmployeeRoleRepository(IMongoDBContext mongoDBContext)
            :base(mongoDBContext,"employeeRole")
        {

        }
    }
}
