package specification;

public interface Specification<T> {

	/**
	 * 规约接口
	 * @param entity
	 * @return
	 */
	public boolean isSatisfiedBy(T entity);
	
}
