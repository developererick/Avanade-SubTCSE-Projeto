using Avanade.SubTCSE.Projeto.Domain.Aggregates;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Domain.Base.Repository
{
    /// <summary>
    /// Classe base de repositório
    /// Para usar o repositorio a classe obrigatoriamente deve ser herdada de BaseEntity
    /// </summary>
    /// <typeparam name="TEntity">Parametro alias(apelido) que representa o tipo da classe que herda esta classe</typeparam>
    /// <typeparam name="Tid">Parametro alias(apelido) que representa o tipo do id da classe que herda esta classe</typeparam>
    public interface IBaseRepository<TEntity,Tid>
        where TEntity : BaseEntity<Tid>
    {
        Task<TEntity> AddAsync(TEntity entity);

        Task <TEntity> FindByIdAsync(Tid id);

        Task<List<TEntity>> FindAllAsync();

        //TODO: IEnumerable, IList, List
    }
}
