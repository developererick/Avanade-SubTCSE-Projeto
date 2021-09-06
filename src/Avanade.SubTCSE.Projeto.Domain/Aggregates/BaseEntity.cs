using FluentValidation.Results;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates
{
    /// <summary>
    /// Classe base para definição do id das classes
    /// </summary>
    /// <typeparam name="Tid">Parametro alias(apelido) para o tipo de dado do id da classe origem</typeparam>
    public record BaseEntity<Tid>
    {
        public Tid Id { get; set; }

        public ValidationResult ValidationResult { get; set; }
    }
}
