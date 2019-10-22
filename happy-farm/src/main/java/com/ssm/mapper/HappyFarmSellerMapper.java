package com.ssm.mapper;

import com.ssm.entity.HappyFarmSeller;
import com.ssm.entity.HappyFarmSellerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HappyFarmSellerMapper {
    long countByExample(HappyFarmSellerExample example);

    int deleteByExample(HappyFarmSellerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(HappyFarmSeller record);

    int insertSelective(HappyFarmSeller record);

    List<HappyFarmSeller> selectByExample(HappyFarmSellerExample example);

    HappyFarmSeller selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") HappyFarmSeller record, @Param("example") HappyFarmSellerExample example);

    int updateByExample(@Param("record") HappyFarmSeller record, @Param("example") HappyFarmSellerExample example);

    int updateByPrimaryKeySelective(HappyFarmSeller record);

    int updateByPrimaryKey(HappyFarmSeller record);
}