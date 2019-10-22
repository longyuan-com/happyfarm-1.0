package com.ssm.mapper;

import com.ssm.entity.OrderforBuyer;
import com.ssm.entity.OrderforBuyerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderforBuyerMapper {
    long countByExample(OrderforBuyerExample example);

    int deleteByExample(OrderforBuyerExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OrderforBuyer record);

    int insertSelective(OrderforBuyer record);

    List<OrderforBuyer> selectByExample(OrderforBuyerExample example);

    OrderforBuyer selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OrderforBuyer record, @Param("example") OrderforBuyerExample example);

    int updateByExample(@Param("record") OrderforBuyer record, @Param("example") OrderforBuyerExample example);

    int updateByPrimaryKeySelective(OrderforBuyer record);

    int updateByPrimaryKey(OrderforBuyer record);
}