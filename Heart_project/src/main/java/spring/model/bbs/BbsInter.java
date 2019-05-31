package spring.model.bbs;

import java.util.List;
import java.util.Map;

//mapper
public interface BbsInter {
	int create(BbsDTO dto);
	BbsDTO read(int bbsno);
	int update(BbsDTO dto);
	int delete(int bbsno);
	List<BbsDTO> list(Map map);
	int total(Map map);
	BbsDTO readReply(int bbsno);
	int createReply(BbsDTO dto);
	void upAnsnum(Map map);
	int passCheck(Map map);
	int refnumCheck(int bbsno);
	void upViewcnt(int bbsno);
}
