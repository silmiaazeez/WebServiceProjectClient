<%@page contentType="text/html;charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
com.ibm.ccl.ws.jaxws.gstc.util.OutputUtils.init(session);

boolean async       = session.getAttribute("__async__") == null ? false : true;
String methodKey    = request.getParameter("key");
String resultSuffix = methodKey != null && methodKey.length() > 0 ? " - " + methodKey : "";
%>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
<LINK rel="stylesheet" type="text/css" href="TestClient.css"/>
<script language="JavaScript">

function reloadMethods() {
    window.parent.frames["methods"].location.reload(true);
}
</script>
</HEAD>
<BODY>
<TABLE class="heading" width="100%">
<TR><TD>Result<%= org.eclipse.jst.ws.util.JspUtils.markup(resultSuffix) %></TD></TR>
</TABLE>
<P>
<jsp:useBean id="sampleSessionBeanPortProxyid" scope="session" class="ws.test.lib.SessionBeanPortProxy" />

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

boolean isDone = true;
try {
    String sourceInTemp = request.getParameter("__rawxml__");
        javax.xml.transform.Source sourceIn  = sourceInTemp != null ?
            new javax.xml.transform.stream.StreamSource(new java.io.ByteArrayInputStream(sourceInTemp.getBytes())) : null;
    javax.xml.transform.Source sourceOut = null;

    boolean bypass = (sourceIn != null);

switch (methodID){ 
case 2:
    gotMethod = true;
    ws.test.lib.SessionBeanPortProxy.Descriptor returnp3mtemp = null;
    if (methodKey != null) {
        javax.xml.ws.Response resp = com.ibm.ccl.ws.jaxws.gstc.util.AsyncUtils.getResponse(session, methodKey);
        if (resp != null) {
            isDone = resp.isDone();
            if (!isDone)
                break;
            if (resp.get() != null) {
                Object o = resp.get();
                if (o instanceof javax.xml.transform.Source)
                    sourceOut = (javax.xml.transform.Source) o;
                else if (o instanceof ws.test.lib.SessionBeanPortProxy.Descriptor)
                    returnp3mtemp = (ws.test.lib.SessionBeanPortProxy.Descriptor) o;
            }
        }
    }
    else if (bypass) {
        javax.xml.ws.Dispatch dispatch = sampleSessionBeanPortProxyid._getDescriptor().getDispatch();

        if (request.getParameter("__use_soapaction__") != null)
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.useSoapAction(dispatch, request.getParameter("__soapaction__"));
        else
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.clearSoapAction(dispatch);

        if (!async)
            sourceOut = (javax.xml.transform.Source) dispatch.invoke(sourceIn);
        else {
            // async code omitted
            break;
        }
    } else {
        if (!async) {
        try {
            returnp3mtemp = sampleSessionBeanPortProxyid._getDescriptor();
            }catch(Exception exc){
                %>
                Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.toString()) %>
                Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.getMessage()) %>
                <%
break;
            }
        }
        else {
            // async code omitted
            break;
        }
    }
if (sourceOut != null) {
%>
    <TEXTAREA ROWS="8" COLs="45"><%= org.eclipse.jst.ws.util.JspUtils.markup(com.ibm.ccl.ws.jaxws.gstc.util.SourceUtils.transform(sourceOut)) %></TEXTAREA>
<%
}
else {
if (returnp3mtemp == null) {
%>
    null
<%
} else {
    %>
    <TABLE CLASS="tableform">
<TR>
<TD COLSPAN="3" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">returnp:</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="2" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">proxy:</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="1" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">book:</TD>
<TD>
<%
if(returnp3mtemp != null){
ws.test.lib.SessionBeanDelegate tebece0=returnp3mtemp.getProxy();
if(tebece0 != null){
int typebook7 = tebece0.getBook();
        String tempResultbook7 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebook7));
        %>
        <%= tempResultbook7 %>
        <%
}}
%>
</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="2" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">dispatch:</TD>
<TD>
<%
if(returnp3mtemp != null){
javax.xml.ws.Dispatch typedispatch9 = returnp3mtemp.getDispatch();
if(typedispatch9 != null){
        if(typedispatch9!= null){
        String tempdispatch9 = typedispatch9.toString();
        %>
        <%=tempdispatch9%>
        <%
        }}
else{
        %>
        <%= typedispatch9%>
        <%
}
}
%>
</TD>
<TR>
<TD CLASS="spacercol">&nbsp;</TD>
<TD COLSPAN="2" VALIGN="TOP" ALIGN="LEFT" CLASS="headingcol">endpoint:</TD>
<TD>
<%
if(returnp3mtemp != null){
java.lang.String typeendpoint11 = returnp3mtemp.getEndpoint();
if(typeendpoint11 != null){
        String tempResultendpoint11 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeendpoint11));
        %>
        <%= tempResultendpoint11 %>
        <%
}
else{
        %>
        <%= typeendpoint11%>
        <%
}
}
%>
</TD>
    </TABLE>
    <%
}
%>
<HR/><BR/>
<%
}
break;
case 15:
    gotMethod = true;
    int returnp16mtemp = 0;
    if (methodKey != null) {
        javax.xml.ws.Response resp = com.ibm.ccl.ws.jaxws.gstc.util.AsyncUtils.getResponse(session, methodKey);
        if (resp != null) {
            isDone = resp.isDone();
            if (!isDone)
                break;
            if (resp.get() != null) {
                Object o = resp.get();
                if (o instanceof javax.xml.transform.Source)
                    sourceOut = (javax.xml.transform.Source) o;
                else if (o instanceof java.lang.Integer)
                    returnp16mtemp = ((java.lang.Integer) o).intValue();
            }
        }
    }
    else if (bypass) {
        javax.xml.ws.Dispatch dispatch = sampleSessionBeanPortProxyid._getDescriptor().getDispatch();

        if (request.getParameter("__use_soapaction__") != null)
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.useSoapAction(dispatch, request.getParameter("__soapaction__"));
        else
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.clearSoapAction(dispatch);

        if (!async)
            sourceOut = (javax.xml.transform.Source) dispatch.invoke(sourceIn);
        else {
            // async code omitted
            break;
        }
    } else {
        if (!async) {
        try {
            returnp16mtemp = sampleSessionBeanPortProxyid.getBook();
            }catch(Exception exc){
                %>
                Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.toString()) %>
                Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.getMessage()) %>
                <%
break;
            }
        }
        else {
            // async code omitted
            break;
        }
    }
if (sourceOut != null) {
%>
    <TEXTAREA ROWS="8" COLs="45"><%= org.eclipse.jst.ws.util.JspUtils.markup(com.ibm.ccl.ws.jaxws.gstc.util.SourceUtils.transform(sourceOut)) %></TEXTAREA>
<%
}
else {
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(returnp16mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
%>
<HR/><BR/>
<%
}
break;
case 18:
    gotMethod = true;
    boolean returnp19mtemp = false;
    if (methodKey != null) {
        javax.xml.ws.Response resp = com.ibm.ccl.ws.jaxws.gstc.util.AsyncUtils.getResponse(session, methodKey);
        if (resp != null) {
            isDone = resp.isDone();
            if (!isDone)
                break;
            if (resp.get() != null) {
                Object o = resp.get();
                if (o instanceof javax.xml.transform.Source)
                    sourceOut = (javax.xml.transform.Source) o;
                else if (o instanceof java.lang.Boolean)
                    returnp19mtemp = ((java.lang.Boolean) o).booleanValue();
            }
        }
    }
    else if (bypass) {
        javax.xml.ws.Dispatch dispatch = sampleSessionBeanPortProxyid._getDescriptor().getDispatch();

        if (request.getParameter("__use_soapaction__") != null)
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.useSoapAction(dispatch, request.getParameter("__soapaction__"));
        else
            com.ibm.ccl.ws.jaxws.gstc.util.DispatchUtils.clearSoapAction(dispatch);

        if (!async)
            sourceOut = (javax.xml.transform.Source) dispatch.invoke(sourceIn);
        else {
            // async code omitted
            break;
        }
    } else {
        String arg0_0id=  request.getParameter("arg021");
        int arg0_0idTemp  = Integer.parseInt(arg0_0id);

        if (!async) {
        try {
            returnp19mtemp = sampleSessionBeanPortProxyid.isBookExist(arg0_0idTemp);
            }catch(Exception exc){
                %>
                Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.toString()) %>
                Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(exc.getMessage()) %>
                <%
break;
            }
        }
        else {
            // async code omitted
            break;
        }
    }
if (sourceOut != null) {
%>
    <TEXTAREA ROWS="8" COLs="45"><%= org.eclipse.jst.ws.util.JspUtils.markup(com.ibm.ccl.ws.jaxws.gstc.util.SourceUtils.transform(sourceOut)) %></TEXTAREA>
<%
}
else {
        String tempResultreturnp19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(returnp19mtemp));
        %>
        <%= tempResultreturnp19 %>
        <%
%>
<HR/><BR/>
<%
}
break;
}
} catch (Exception e) { 
%>
exception: <%=org.eclipse.jst.ws.util.JspUtils.markup(e.toString())%>
<%
return;
}
if(!gotMethod){
%>
Result: N/A
<%
} else if (!isDone) {
%>
No results available yet.
<%
} else if (async && methodKey == null) {
%>
The service has been invoked.
<script language="JavaScript">reloadMethods();</script>
<%
}
%>
</BODY>
</HTML>