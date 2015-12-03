package xender.app.access;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.nutz.dao.Sqls;
import org.nutz.dao.entity.Record;
import org.nutz.dao.sql.Sql;
import org.nutz.lang.Lang;
import org.nutz.lang.Strings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import xender.app.connection.DBConnectionFactory;


public final class JdbcTemplate implements DBAccess {

    private static final Logger logger = LoggerFactory.getLogger(JdbcTemplate.class);
    private static JdbcTemplate instance = null;

    public static JdbcTemplate getInstance() {
        synchronized (JdbcTemplate.class) {
            if (instance == null) {
                instance = new JdbcTemplate();
            }
        }
        return instance;
    }

    public boolean execute(String sql) throws SQLException {
//		Connection conn = DBConnectionFactory.instance().getConnection();
//		PreparedStatement stmt = null;
//		boolean result = false;
//		try {
//			conn.setAutoCommit(false);
//			stmt = conn.prepareStatement(sql);
//			result = stmt.execute();
//			conn.commit();
//			result=true;
//			conn.setAutoCommit(true);
//		} catch (SQLException e) {
//			e.printStackTrace();
//
//			if (conn != null) {
//				conn.rollback();
//				conn.setAutoCommit(true);
//			}
//			close(conn,stmt);
//			result=false;
//			e.printStackTrace();
//
//		} finally {
//			close(conn,stmt);
//		}
//		return result;

        Sql sql_ = Sqls.create(sql);
        DbKit.getDao().execute(sql_);

        return true;


    }


    public List<Object> queryForList(String sql) throws SQLException {
        List<Object> result = new ArrayList<Object>();
        Connection conn = DBConnectionFactory.instance().getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsMetaData = rs.getMetaData();

            int rows = this.rowCount(rs);
            int columns = rsMetaData.getColumnCount();

            if (rows > 1) {
                List<Object> rowList = null;
                for (int row = 1; row <= rows; row++) {
                    rowList = new ArrayList<Object>();
                    rs.absolute(row);
                    for (int col = 1; col <= columns; col++) {
                        Object value = rs.getObject(col);
                        rowList.add(value);
                    }
                    result.add(rowList);
                }


            } else if (rows == 1) {
                rs.absolute(1);
                for (int col = 1; col <= columns; col++) {
                    Object value = rs.getObject(col);
                    result.add(value);
                }
            }

        } catch (SQLException e) {
            close(conn, stmt, rs);
            e.printStackTrace();
        } finally {
            close(conn, stmt, rs);
        }

        return result;
    }

    public int queryForInt(String sql) throws SQLException {
        int result = 0;

        Sql sql_ = Sqls.create(sql);
        sql_.setCallback(Sqls.callback.records());
        DbKit.getDao().execute(sql_);
        List<Record> res = sql_.getList(Record.class);
        if (Lang.isEmpty(res)) {
            return 0;
        }
        result = res.size();
        return result;
    }


    public Object queryForObject(String sql) throws SQLException {
        Connection conn = DBConnectionFactory.instance().getConnection();
        Object result = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                result = rs.getObject(1);
            }
        } catch (SQLException e) {
            close(conn, stmt, rs);
            e.printStackTrace();
        } finally {
            close(conn, stmt, rs);
        }
        return result;
    }

    public Map<String, Object> queryForMap(String sql) throws SQLException {
        Map<String, Object> result = new LinkedHashMap<String, Object>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnectionFactory.instance().getConnection();
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery(sql);
            ResultSetMetaData rsMetaData = rs.getMetaData();
            int columns = rsMetaData.getColumnCount();
            int rows = this.rowCount(rs);
            if (rows > 1) {
                for (int row = 1; row <= rows; row++) {
                    rs.absolute(row);
                    Map<String, Object> rowList = new LinkedHashMap<String, Object>();
                    for (int col = 1; col <= columns; col++) {
                        Object obj = rs.getObject(col);
                        String colName = rs.getMetaData().getColumnName(col);
                        rowList.put(colName, obj);
                    }
                    result.put(row + "", rowList);
                }

            } else if (rows == 1) {
                rs.absolute(1);
                Map<String, Object> rowList = new LinkedHashMap<String, Object>();
                for (int col = 1; col <= columns; col++) {
                    Object obj = rs.getObject(col);
                    String colName = rs.getMetaData().getColumnName(col);
                    rowList.put(colName, obj);
                }
                result.put("1", rowList);

            }

        } catch (SQLException e) {
            close(conn, stmt, rs);
            e.printStackTrace();
        } finally {
            close(conn, stmt, rs);
        }
        return result;
    }

    public int update(String sql) throws SQLException {
        Connection conn = DBConnectionFactory.instance().getConnection();
        PreparedStatement stmt = null;
        int result = 0;
        try {
            conn.setAutoCommit(false);
            stmt = conn.prepareStatement(sql);
            result = stmt.executeUpdate(sql);
            conn.commit();
            conn.setAutoCommit(true);
        } catch (SQLException e) {
            if (conn != null) {
                conn.rollback();
                conn.setAutoCommit(true);
            }
            close(conn, stmt);
            e.printStackTrace();
        } finally {
            close(conn, stmt);
        }
        return result;

    }

    private int rowCount(ResultSet rs) {
        int size = 0;
        try {
            rs.last();
            size = rs.getRow();
            rs.beforeFirst();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
        return size;
    }


    private void close(Connection conn, PreparedStatement ps, ResultSet rs)
            throws SQLException {
        if (conn != null) {
            try {
                conn.close();
                conn = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (ps != null) {
            try {
                ps.close();
                ps = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs != null) {
            try {
                rs.close();
                rs = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    private void close(Connection conn, PreparedStatement ps)
            throws SQLException {
        if (conn != null) {
            try {
                conn.close();
                conn = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (ps != null) {
            try {
                ps.close();
                ps = null;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    public void execute(String[] sqls) {
        if (Lang.isEmpty(sqls)) {
            return;
        }
        for (int i = 0; i < sqls.length; i++) {
            if (Strings.isBlank(sqls[i])) {
                try {
                    execute(sqls[i]);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
