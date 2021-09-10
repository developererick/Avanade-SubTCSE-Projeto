using FluentValidation;

namespace Avanade.SubTCSE.Projeto.Domain.Aggregates.EmployeeRole.Validators
{
    //validação do dominio utilizando o FluentValidation
    public class EmployeeRoleValidator : AbstractValidator<Entities.EmployeeRole>
    {
        public EmployeeRoleValidator()
        {
            RuleSet("new", () => {
                RuleFor(e => e.RoleName)
                .NotEmpty()
                .WithMessage("{PropertyName} can not be empty");
            });

            RuleSet("GetById)", () =>
             {
                 RuleFor(e => e.Id)
                 .NotEmpty()
                 .WithMessage("{PropertyName} can not be empty or null");
             });
        }
    }
}
