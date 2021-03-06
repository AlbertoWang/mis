package cn.edu.cqu.Dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import cn.edu.cqu.Model.Branch;

public interface BranchMapper {

	void insert(Branch branch);

	Branch select(@Param("branch_name") String branch_name);

	void delete(@Param("branch_id") String branch_id);

	void update(Branch branch);

	String select_name_by_id(@Param("branch_id") String branch_id);

	ArrayList<String> select_id_by_name(@Param("branch_name") String branch_name);

	ArrayList<Branch> select_all();

}
