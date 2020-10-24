package com.module.mapper;

import com.module.pojo.Danmu;

import java.util.List;
import java.util.Map;

/**
 * 弹幕 数据层
 */
public interface DanmuMapper {

    /**
     * 查询弹幕信息
     *
     * @param id 弹幕ID
     * @return 弹幕信息
     */
    public Danmu selectDanmuById(Integer id);

    /**
     * 查询弹幕列表
     *
     * @param Danmu 弹幕信息
     * @return 弹幕集合
     */
    public List<Danmu> selectDanmuList(Danmu danmu);

    /**
     * 查询所有弹幕
     *
     * @return 弹幕列表
     */
    public List<Danmu> selectAll(Map map);

    /**
     * 新增弹幕
     *
     * @param Danmu 弹幕信息
     * @return 结果
     */
    public int insertDanmu(Danmu danmu);

    /**
     * 修改弹幕
     *
     * @param danmu 弹幕信息
     * @return 结果
     */
    public int updateDanmu(Danmu danmu);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    public int batchUpdate(List<Danmu> list);

    /**
     * 删除弹幕
     *
     * @param id 弹幕ID
     * @return 结果
     */
    public int deleteDanmuById(Integer id);

    /**
     * 批量删除弹幕
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int batchDeleteDanmu(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    public int batchAdd(List<Danmu> list);

}