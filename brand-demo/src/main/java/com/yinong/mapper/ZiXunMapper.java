package com.yinong.mapper;

import com.yinong.pojo.Addr;
import com.yinong.pojo.Brand;
import com.yinong.pojo.ZiXun;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ZiXunMapper {
    @Select("select * from information")
    @ResultMap("ZiXunResultMap")
    List<ZiXun> selectAll();

    @Select("select * from tb_web")
    //@ResultMap("AddrResultMap")
    List<Addr> selectAddr();
}
