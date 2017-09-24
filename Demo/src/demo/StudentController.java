package demo;

import java.util.List;

import com.jfinal.core.Controller;

public class StudentController extends Controller
{
	public void index()
	{

	}

	public void hh()
	{
		System.out.println(getPara(1));
		Student a = getModel(Student.class);
		System.out.println(a._getAttrNames());
	}

	public void query()
	{
		List<Student> list = Student.me.find("select * from t_student");
		setAttr("studentList", list);
		renderJsp("common.jsp");
	}

	public void deleteByID()
	{
		int id = getParaToInt(0);
		Student.me.findById(id).delete();
		redirect("/student/query");
	}

	public void add()
	{
		renderJsp("studentAdd.jsp");
	}

	public void addStudent()
	{
		Student student = getModel(Student.class);
		student.save();
		redirect("/student/query");

	}
}
