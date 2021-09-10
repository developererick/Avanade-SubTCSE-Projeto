using FluentValidation.Results;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Bson.Serialization.IdGenerators;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates
{
    /// <summary>
    /// Classe base para definição do id das classes
    /// </summary>
    /// <typeparam name="Tid">Parametro alias(apelido) para o tipo de dado do id da classe origem</typeparam>
    public record BaseEntity<Tid>
    {
        [BsonId(IdGenerator = typeof(StringObjectIdGenerator))]
        public Tid Id { get; set; }

        [BsonIgnore]
        public ValidationResult ValidationResult { get; set; }
    }
}
