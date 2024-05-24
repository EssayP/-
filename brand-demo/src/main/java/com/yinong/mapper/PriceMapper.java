package com.yinong.mapper;

import com.yinong.pojo.Addr;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PriceMapper {
    @Select("select * from tb_web")
        //@ResultMap("AddrResultMap")
    List<Addr> selectAddr();
}
