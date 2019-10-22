package com.ssm.mapper;

import com.ssm.entity.OrderforSeller;
import com.ssm.entity.OrderforSellerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderforSellerMapper {
    long countByExample(OrderforSellerExample example);

    int deleteByExample(OrderforSellerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderforSeller record);

    int insertSelective(OrderforSeller record);

    List<OrderforSeller> selectByExample(OrderforSellerExample example);

    OrderforSeller selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OrderforSeller record, @Param("example") OrderforSellerExample example);

    int updateByExample(@Param("record") OrderforSeller record, @Param("example") OrderforSellerExample example);

    int updateByPrimaryKeySelective(OrderforSeller record);

    int updateByPrimaryKey(OrderforSeller record);
}