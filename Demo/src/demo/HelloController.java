package demo;

import com.jfinal.core.Controller;

public class HelloController extends Controller
{
	public void index()
	{
		renderJsp("login.html");
	}

	public void login()
	{
		String username = getPara("username");
		String password = getPara("password");
		String SQL = "select * from t_user t where t.username = '" + username  + "' and t.password = '" +  password +"'";
		User user = User.me.findFirst(SQL);
		if (user != null)
		{
			redirect("/student/query");
		} 
		else
		{
			redirect("/hello");
		}
	}
	// public void say()
	// {
	// setAttr("aa", "dsadasddsadasdasd");
	// renderJsp("a.jsp");
	// System.out.println(getParaToInt(2));
	// }
	//
	// public void hh()
	// {
	//
	// System.out.println(getPara("user"));
	// System.out.println(getPara("sex"));
	// System.out.println(getPara(1));
	// Student a = getModel(Student.class);
	// }
}
