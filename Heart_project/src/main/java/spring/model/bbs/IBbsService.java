package spring.model.bbs;

public interface IBbsService {
	
	void delete(int bbsno) throws Exception;
	public void reply(BbsDTO dto) throws Exception;

}
