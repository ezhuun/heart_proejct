package spring.model.bbs;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BbsServiceImpl implements IBbsService {
	@Autowired
	private BbsInter binter;
	
//	@Autowired
//	private ReplyInter rinter;
	
	//댓글, 답변은 따로 컨트롤러는 만들지 않고 각각의 기능에 넣어줌
	public void reply(BbsDTO dto) throws Exception{
								
			Map map = new HashMap();
			map.put("grpno", dto.getGrpno());
			map.put("ansnum", dto.getAnsnum());
			
			
			binter.upAnsnum(map);
			binter.createReply(dto);
	
	}
	
	//댓글이 달린 부모글 삭제시 댓글도 모두 삭제
	public void delete(int bbsno) throws Exception{
		
		//자식레코드 삭제(댓글들 삭제)
		//부모레코드 삭제(글 삭제)
		//rinter.bdelete(bbsno);//부모글에 달린 댓글을 삭제
		binter.delete(bbsno);//부모글 삭제
		
		
	}
}
