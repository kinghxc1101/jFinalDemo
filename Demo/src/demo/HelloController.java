package demo;

import com.jfinal.core.Controller;

public class HelloController extends Controller
{
	public void index()
	{
		renderText("dasdasd");
	}

	public void say()
	{
		setAttr("aa", "dsadasddsadasdasd");
		renderJsp("a.jsp");
		System.out.println(getParaToInt(2));
	}

	public void hh()
	{

		System.out.println(getPara("user"));
		System.out.println(getPara("sex"));
		System.out.println(getPara(1));
		Student a = getModel(Student.class);
	}
}
