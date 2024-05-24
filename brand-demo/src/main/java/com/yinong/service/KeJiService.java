package com.yinong.service;

import com.yinong.mapper.KeJiMapper;
import com.yinong.mapper.ZiXunMapper;
import com.yinong.pojo.Addr;
import com.yinong.pojo.KeJi;
import com.yinong.pojo.ZiXun;
import com.yinong.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class KeJiService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public List<KeJi> selectAll(){
        //调用BrandMapper.selectAll()

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取BrandMapper
        KeJiMapper mapper = sqlSession.getMapper(KeJiMapper.class);

        //4. 调用方法
        List<KeJi> kejis= mapper.selectAll();

        sqlSession.close();

        return kejis;
    }
    public  List<Addr> selectAddr(){
        SqlSession sqlSession = factory.openSession();
        KeJiMapper mapper = sqlSession.getMapper(KeJiMapper.class);
        List<Addr> addr = mapper.selectAddr();
        sqlSession.close();
        return  addr;
    }
}
