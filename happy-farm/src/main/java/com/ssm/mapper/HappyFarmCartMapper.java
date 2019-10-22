package com.ssm.mapper;

import com.ssm.entity.HappyFarmCart;
import com.ssm.entity.HappyFarmCartExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HappyFarmCartMapper {
    long countByExample(HappyFarmCartExample example);

    int deleteByExample(HappyFarmCartExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HappyFarmCart record);

    int insertSelective(HappyFarmCart record);

    List<HappyFarmCart> selectByExample(HappyFarmCartExample example);
    
    List<HappyFarmCart> selectCart(@Param("userid") int userid);

    HappyFarmCart selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HappyFarmCart record, @Param("example") HappyFarmCartExample example);

    int updateByExample(@Param("record") HappyFarmCart record, @Param("example") HappyFarmCartExample example);

    int updateByPrimaryKeySelective(HappyFarmCart record);

    int updateByPrimaryKey(HappyFarmCart record);
}