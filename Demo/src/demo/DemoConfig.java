package demo;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.template.Engine;

public class DemoConfig extends JFinalConfig
{

	@Override
	public void configConstant(Constants me)
	{
		// TODO Auto-generated method stub
		me.setDevMode(true);
 	}

	@Override
	public void configRoute(Routes me)
	{
		// TODO Auto-generated method stub
		me.setBaseViewPath("/WEB-INF/a");
		me.add("/hello",HelloController.class);
		me.add("/student",StudentController.class);
	}
	
	
	@Override
	public void configEngine(Engine me)
	{
		// TODO Auto-generated method stub

	}

	@Override
	public void configPlugin(Plugins me)
	{
		// TODO Auto-generated method stub
		loadPropertyFile("mysql.txt");
		DruidPlugin druidPlugin = new DruidPlugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password"));
		me.add(druidPlugin);
		ActiveRecordPlugin arp =  new ActiveRecordPlugin(druidPlugin);
		me.add(arp);
		arp.addMapping("t_student", Student.class);
		arp.addMapping("t_user", User.class);
	}

	@Override
	public void configInterceptor(Interceptors me)
	{
		// TODO Auto-generated method stub
	}

	@Override
	public void configHandler(Handlers me)
	{
		// TODO Auto-generated method stub

	}

}
