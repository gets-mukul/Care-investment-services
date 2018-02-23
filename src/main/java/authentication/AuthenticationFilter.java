package authentication;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
public class AuthenticationFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthenticationFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		String uri = req.getRequestURI();
		if(uri.contains("index.jsp")  || uri.contains("login")|| uri.endsWith(".css") || uri.endsWith(".js") || uri.contains("create_session") || uri.contains("register.jsp"))
		{
			chain.doFilter(request, response);
		}
		else
		{
			if(req.getSession()!=null && req.getSession().getAttribute("id")!=null)
			{
				
				chain.doFilter(request, response);
			}
			else
			{
				res.sendRedirect("index.jsp");	
			}	
		}						
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	private ServletContext context;
	public void init(FilterConfig fConfig) throws ServletException {
		this.context = fConfig.getServletContext();
		this.context.log("AuthenticationFilter initialized");
	}

}
