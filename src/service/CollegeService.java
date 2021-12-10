package service;

import java.util.List;

import model.College;
import model.PageBean;

public interface CollegeService {
	// ����ѧԺ
	int addCollege(College college);
	
	// ɾ��ѧԺ
	int deleteCollege(int collegeId);
	
	// �༭ѧԺ
	int editCollege(College college);
	
	// ѡ��ѧԺ
	College selectCollege(College college);
	
	// �鿴����ѧԺ
	List<College> findAll();
	
	// ��ѯĳ��ѧԺ
	List<College> findOne(int collegeId);
	
	// ��ҳ��ѯѧԺ
	PageBean collegePageList(int pageNo, int pageCount);
}