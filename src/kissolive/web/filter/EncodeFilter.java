package kissolive.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodeFilter implements Filter {

	private FilterConfig filterConfig;
	private String defaultCharset = "UTF-8";
	
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		String charset = this.filterConfig.getInitParameter("charset");
		if(charset == null){
			charset = defaultCharset;
		}
		
		request.setCharacterEncoding(charset);  //这句代码智能解决post方式的乱码问题，不能解决get方式的乱码问题
		chain.doFilter(request, response);
	}
	
	public void destroy() {
		// TODO Auto-generated method stub
	}


	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

}