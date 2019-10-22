package com.ssm.mapper;

import com.ssm.entity.HappyFarmManager;
import com.ssm.entity.HappyFarmManagerExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface HappyFarmManagerMapper {
    long countByExample(HappyFarmManagerExample example);

    int deleteByExample(HappyFarmManagerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HappyFarmManager record);

    int insertSelective(HappyFarmManager record);

    List<HappyFarmManager> selectByExample(HappyFarmManagerExample example);

    HappyFarmManager selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HappyFarmManager record, @Param("example") HappyFarmManagerExample example);

    int updateByExample(@Param("record") HappyFarmManager record, @Param("example") HappyFarmManagerExample example);

    int updateByPrimaryKeySelective(HappyFarmManager record);

    int updateByPrimaryKey(HappyFarmManager record);
    
    HappyFarmManager selectManger(Map<String,String> map);
    
}