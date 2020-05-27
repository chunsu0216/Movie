package movie.com.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class MovieDao {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		sqlSessionFactory=SqlSessionFactoryManager.getSqlSessionFactory(); 
	}	

	public static Object movieInfo(int no) {
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectOne("movieInfo", no);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(sqlSession!=null)sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return null;
	}
	
}
