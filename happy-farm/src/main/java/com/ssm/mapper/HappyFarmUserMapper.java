package com.ssm.mapper;

import com.ssm.entity.HappyFarmUser;
import com.ssm.entity.HappyFarmUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HappyFarmUserMapper {
    long countByExample(HappyFarmUserExample example);

    int deleteByExample(HappyFarmUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HappyFarmUser record);

    int insertSelective(HappyFarmUser record);

    List<HappyFarmUser> selectByExample(HappyFarmUserExample example);

    HappyFarmUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HappyFarmUser record, @Param("example") HappyFarmUserExample example);

    int updateByExample(@Param("record") HappyFarmUser record, @Param("example") HappyFarmUserExample example);

    int updateByPrimaryKeySelective(HappyFarmUser record);

    int updateByPrimaryKey(HappyFarmUser record);
}