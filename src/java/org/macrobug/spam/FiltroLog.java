// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: fullnames braces deadcode 
// Source File Name:   FiltroLog.java

package org.macrobug.spam;

import java.io.File;
import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;

public class FiltroLog
{

	public void print(java.lang.String s)
	{
		log.info(s);
	}

	public FiltroLog(java.io.File f)
	{
		try
		{
			log = java.util.logging.Logger.getLogger("org.macrobug.spam");
			java.util.logging.FileHandler fh = new FileHandler(f.getAbsolutePath(), 0x10000, 0x10000, true);
			log.addHandler(fh);
		}
		catch(java.io.IOException ex) { }
		catch(java.lang.SecurityException ex) { }
	}

	private java.util.logging.Logger log;
}
