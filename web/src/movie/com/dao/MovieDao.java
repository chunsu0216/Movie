package movie.com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import movie.com.model.MovieBean;
import movie.com.model.MovieScBean;
import movie.com.model.MovieScheduleBean;

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
	
	public static List<MovieBean> listMovie(){
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			//return sqlSession.selectOne("listMovie");
			return sqlSession.selectList("listMovie");
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
	
	public static List<MovieScheduleBean> movieSchedule(int no) {
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			//return sqlSession.selectOne("listMovie");
			return sqlSession.selectList("movieSchedule",no);
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
	 public static void MovieScInsert(MovieScBean bean) {
	      SqlSession sqlSession=null;
	      try {
	         sqlSession=sqlSessionFactory.openSession();
	         sqlSession.insert("MovieScInsert", bean);
	         sqlSession.commit();
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	         sqlSession.rollback();
	      }finally {
	         try {
	            if(sqlSession!=null)sqlSession.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	            e2.printStackTrace();
	         }
	      }
	   }
	   public static boolean checkMovieSc(HashMap<String,Object>map) {
	      SqlSession sqlSession=null;
	      List<Object> ck=null;
	      try {
	         sqlSession=sqlSessionFactory.openSession();
	         ck=sqlSession.selectList("checkMovieSc", map);
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
	      return ck==null||ck.equals("")?false:true;
	   }
	   public static List<String> selectMoveSc(HashMap<String,Object>map) {
	      SqlSession sqlSession=null;
	      try {
	         sqlSession=sqlSessionFactory.openSession();
	         return sqlSession.selectList("checkMovieSc", map);
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
