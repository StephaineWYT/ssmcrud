package wen.dao;

import wen.pojo.Paper;

import java.util.List;

public interface PaperDao {

    int addPaper(Paper paper);

    int deletePaperById(long id);

    int updatePaper(Paper paper);

    Paper queryById(long id);

    List<Paper> queryAllPaper();
}
