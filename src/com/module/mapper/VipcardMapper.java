package com.module.mapper;

import com.module.pojo.Vipcard;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * vip充值卡 数据层
 *
 * @author administrator
 * @date 2019-08-07 19:07:14
 */
public interface VipcardMapper {

    /**
     * 查询vip充值卡信息
     *
     * @param id vip充值卡ID
     * @return vip充值卡信息
     */
    public Vipcard selectVipcardById(Integer id);

    /**
     * 根据vip充值码查询
     *
     * @param cardcode
     * @return
     */
    public Vipcard selectVipcardByCardcode(@Param("cardcode") String cardcode);

    /**
     * 查询vip充值卡列表
     *
     * @param Vipcard vip充值卡信息
     * @return vip充值卡集合
     */
    public List<Vipcard> selectVipcardList(Vipcard vipcard);

    /**
     * 查询所有vip充值卡
     *
     * @return vip充值卡列表
     */
    public List<Vipcard> selectAll(Map map);

    /**
     * 新增vip充值卡
     *
     * @param Vipcard vip充值卡信息
     * @return 结果
     */
    public int insertVipcard(Vipcard vipcard);

    /**
     * 修改vip充值卡
     *
     * @param vipcard vip充值卡信息
     * @return 结果
     */
    public int updateVipcard(Vipcard vipcard);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    public int batchUpdate(List<Vipcard> list);

    /**
     * 删除vip充值卡
     *
     * @param id vip充值卡ID
     * @return 结果
     */
    public int deleteVipcardById(Integer id);

    /**
     * 批量删除vip充值卡
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int batchDeleteVipcard(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    public int batchAdd(List<Vipcard> list);

}