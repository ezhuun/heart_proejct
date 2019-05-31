package spring.ojt.heart;

import static org.junit.Assert.assertTrue;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import spring.model.bbs.BbsInter;



@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
					})
public class BbsInterTest {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BbsInter inter;

	
//	@Test
//	@Ignore
//	public void testCreate() {
//		//ReplyDTO dto = new ReplyDTO();
//		dto.setBbsno(1);
//		dto.setContent("댓글1");
//		dto.setId("user1");
//		
//		assertTrue(inter.create(dto) > 0);
//	}
//
//	@Test
//	//@Ignore
//	public void testRead() {
//		ReplyDTO dto = inter.read(3);
//		logger.info("dto:" + dto);
//	}
//
//	@Test
//	@Ignore
//	public void testUpdate() {
//		ReplyDTO dto = new ReplyDTO();
//		dto.setContent("댓글2로 변경");
//		dto.setRnum(4);
//		
//		assertTrue(inter.update(dto) > 0);
//	}
//
//	@Test
//	@Ignore
//	public void testDelete() {
//		int rnum=4;
//		
//		assertTrue(inter.delete(rnum) > 0);
//	}
//
//	@Test
//	@Ignore
//	public void testList() {
//		Map map = new HashMap();
//		map.put("bbsno", 1);
//		map.put("sno", 1);
//		map.put("eno", 5);
//		
//		List<ReplyDTO> list = inter.list(map);
//		logger.info("list: " + list);
//	}
//
//	@Test
//	@Ignore
//	public void testTotal() {
//		int bbsno = 1;
//		int cnt = inter.total(bbsno);
//		logger.info("total: " + cnt);
//	}
//
//	@Test
//	@Ignore
//	public void testRcount() {
//		int bbsno = 1;
//		int cnt = inter.rcount(bbsno);
//		
//		logger.info("replyCnt: " + cnt);
//	}

}
