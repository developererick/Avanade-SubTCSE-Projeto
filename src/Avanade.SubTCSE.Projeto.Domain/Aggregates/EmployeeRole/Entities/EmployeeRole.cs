using MongoDB.Bson.Serialization.Attributes;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Entities
{
    public record EmployeeRole: BaseEntity<string>
    {
        [BsonConstructor]
        public EmployeeRole(string id, string roleName)
        {
            Id = id;
            RoleName = roleName;
        }

        public EmployeeRole(string roleName)
        {
            RoleName = roleName;
        }

        //Init aliado ao tipo record da classe definem que essa prop
        //só pode ser setada pelo construtor
        [BsonElement("RoleName")]
        public string RoleName { get; init; }
    }
}
