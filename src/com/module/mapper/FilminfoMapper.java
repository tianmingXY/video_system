package com.module.mapper;

import com.module.pojo.Filminfo;

import java.util.List;
import java.util.Map;

/**
 * 视频类 数据层
 *
 * @author administrator
 * @date 2019-08-06 22:02:26
 */
public interface FilminfoMapper {

    /**
     * 数据统计查询
     *
     * @param map
     * @return
     */
    public List<Map> countData(Map map);

    /**
     * 查询视频类信息
     *
     * @param id 视频类ID
     * @return 视频类信息
     */
    public Filminfo selectFilminfoById(Integer id);

    /**
     * 查询视频类列表
     *
     * @param Filminfo 视频类信息
     * @return 视频类集合
     */
    public List<Filminfo> selectFilminfoList(Filminfo filminfo);

    /**
     * 查询所有视频类
     *
     * @return 视频类列表
     */
    public List<Filminfo> selectAll(Map map);

    /**
     * 新增视频类
     *
     * @param Filminfo 视频类信息
     * @return 结果
     */
    public int insertFilminfo(Filminfo filminfo);

    /**
     * 修改视频类
     *
     * @param filminfo 视频类信息
     * @return 结果
     */
    public int updateFilminfo(Filminfo filminfo);

    /**
     * 更新视频点击数
     *
     * @param id
     * @return
     */
    public int updateFilminfoHits(int id);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    public int batchUpdate(List<Filminfo> list);

    /**
     * 删除视频类
     *
     * @param id 视频类ID
     * @return 结果
     */
    public int deleteFilminfoById(Integer id);

    /**
     * 批量删除视频类
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int batchDeleteFilminfo(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    public int batchAdd(List<Filminfo> list);

}