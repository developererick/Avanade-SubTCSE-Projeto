using FluentValidation.Results;

namespace Avanade.SubTCSE.Projeto.Application.Dtos.Base
{
    public abstract class BaseDto
    {
        public int Identificador { get; set; }

        public ValidationResult ValidationResult { get; set; }
    }
}
