// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: fullnames braces deadcode 
// Source File Name:   Filtro.java

package org.macrobug.spam;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

// Referenced classes of package org.macrobug.spam:
//			FiltroLog

public class Filtro
	implements javax.servlet.Filter
{

	public Filtro()
	{
	}

	public void init(javax.servlet.FilterConfig config)
	{
		fc = config;
	}

	public void doFilter(javax.servlet.ServletRequest request, javax.servlet.ServletResponse response, javax.servlet.FilterChain chain)
	{
		javax.servlet.http.HttpServletRequest r = (javax.servlet.http.HttpServletRequest)request;
		javax.servlet.RequestDispatcher rd = null;
		javax.servlet.ServletContext sc = fc.getServletContext();
		rd = sc.getRequestDispatcher("/mail.jsp");
		java.io.File f = new File("/home/hostingjava.it/SaThot/mail.log");
		if(f.exists())
		{
			org.macrobug.spam.FiltroLog fl = new FiltroLog(f);
			fl.print((new StringBuilder()).append(new Date(java.lang.System.currentTimeMillis())).append(" ").append(r.getRemoteHost()).append(" ").append(r.getHeader("user-agent")).toString());
		}
		if(rd != null)
		{
			try
			{
				rd.forward(request, response);
			}
			catch(java.io.IOException ex)
			{
				ex.printStackTrace();
			}
			catch(javax.servlet.ServletException ex)
			{
				ex.printStackTrace();
			}
			return;
		} else
		{
			return;
		}
	}

	public void destroy()
	{
	}

	javax.servlet.FilterConfig fc;
}
