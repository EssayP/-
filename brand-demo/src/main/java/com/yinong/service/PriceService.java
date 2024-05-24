package com.yinong.service;

import com.yinong.mapper.PriceMapper;
import com.yinong.pojo.Addr;
import com.yinong.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class PriceService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public List<Addr> selectAddr(){
        SqlSession sqlSession = factory.openSession();
        PriceMapper mapper = sqlSession.getMapper(PriceMapper.class);
        List<Addr> addrs = mapper.selectAddr();
        sqlSession.close();
        return  addrs;
    }
}
