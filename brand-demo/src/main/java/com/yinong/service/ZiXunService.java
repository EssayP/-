package com.yinong.service;

import com.yinong.mapper.BrandMapper;
import com.yinong.mapper.ZiXunMapper;
import com.yinong.pojo.Addr;
import com.yinong.pojo.Brand;
import com.yinong.pojo.ZiXun;
import com.yinong.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class ZiXunService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public List<ZiXun> selectAll(){
        //调用BrandMapper.selectAll()

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        //3. 获取BrandMapper
        ZiXunMapper mapper = sqlSession.getMapper(ZiXunMapper.class);

        //4. 调用方法
        List<ZiXun> zixun= mapper.selectAll();

        sqlSession.close();

        return zixun;
    }
    public  List<Addr> selectAddr(){
        SqlSession sqlSession = factory.openSession();
        ZiXunMapper mapper = sqlSession.getMapper(ZiXunMapper.class);
        List<Addr> addrs = mapper.selectAddr();
        sqlSession.close();
        return  addrs;
    }
}
