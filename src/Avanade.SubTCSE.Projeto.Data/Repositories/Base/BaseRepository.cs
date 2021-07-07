using Avanade.SubTCSE.Projeto.Domain.Base.Repository;
using MongoDB.Driver;
using System.Threading.Tasks;

namespace Avanade.SubTCSE.Projeto.Data.Repositories.Base
{
    public abstract class BaseRepository<TEntity, Tid>
        : IBaseRepository<TEntity, Tid>
        where TEntity : Domain.Aggregates.BaseEntity<Tid>
    {
        private readonly IMongoCollection<TEntity> _collection;

        public virtual async Task<TEntity> Add(TEntity entity)
        {
            await _collection.InsertOneAsync(entity);
            return entity;
        }

        public virtual async Task<TEntity> FindById(Tid id)
        {
            throw new System.NotImplementedException();
        }
    }
}
