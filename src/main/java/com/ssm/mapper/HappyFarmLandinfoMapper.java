package com.ssm.mapper;

import com.ssm.entity.HappyFarmLandinfo;
import com.ssm.entity.HappyFarmLandinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HappyFarmLandinfoMapper {
    long countByExample(HappyFarmLandinfoExample example);

    int deleteByExample(HappyFarmLandinfoExample example);

    int deleteByPrimaryKey(Integer landid);

    int insert(HappyFarmLandinfo record);

    int insertSelective(HappyFarmLandinfo record);

    List<HappyFarmLandinfo> selectByExample(HappyFarmLandinfoExample example);

    HappyFarmLandinfo selectByPrimaryKey(Integer landid);

    int updateByExampleSelective(@Param("record") HappyFarmLandinfo record, @Param("example") HappyFarmLandinfoExample example);

    int updateByExample(@Param("record") HappyFarmLandinfo record, @Param("example") HappyFarmLandinfoExample example);

    int updateByPrimaryKeySelective(HappyFarmLandinfo record);

    int updateByPrimaryKey(HappyFarmLandinfo record);
    
    int updatestatus(@Param("landid")int landid ,@Param("status")int status);
}