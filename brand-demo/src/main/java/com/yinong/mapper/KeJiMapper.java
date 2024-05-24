package com.yinong.mapper;

import com.yinong.pojo.Addr;
import com.yinong.pojo.KeJi;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface KeJiMapper {
    @Select("select * from information")
    @ResultMap("KeJiResultMap")
    List<KeJi> selectAll();

    @Select("select * from tb_web")
        //@ResultMap("AddrResultMap")
    List<Addr> selectAddr();
}
