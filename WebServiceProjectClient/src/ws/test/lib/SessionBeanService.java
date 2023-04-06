
package ws.test.lib;

import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;

@WebServiceClient(name = "SessionBeanService", targetNamespace = "http://lib.test.ws/", wsdlLocation = "WEB-INF/wsdl/SessionBeanService.wsdl")
public class SessionBeanService
    extends Service
{

    private final static URL SESSIONBEANSERVICE_WSDL_LOCATION;
    private final static WebServiceException SESSIONBEANSERVICE_EXCEPTION;
    private final static QName SESSIONBEANSERVICE_QNAME = new QName("http://lib.test.ws/", "SessionBeanService");

    static {
            SESSIONBEANSERVICE_WSDL_LOCATION = ws.test.lib.SessionBeanService.class.getResource("/WEB-INF/wsdl/SessionBeanService.wsdl");
        WebServiceException e = null;
        if (SESSIONBEANSERVICE_WSDL_LOCATION == null) {
            e = new WebServiceException("Cannot find 'WEB-INF/wsdl/SessionBeanService.wsdl' wsdl. Place the resource correctly in the classpath.");
        }
        SESSIONBEANSERVICE_EXCEPTION = e;
    }

    public SessionBeanService() {
        super(__getWsdlLocation(), SESSIONBEANSERVICE_QNAME);
    }

    public SessionBeanService(WebServiceFeature... features) {
        super(__getWsdlLocation(), SESSIONBEANSERVICE_QNAME, features);
    }

    public SessionBeanService(URL wsdlLocation) {
        super(wsdlLocation, SESSIONBEANSERVICE_QNAME);
    }

    public SessionBeanService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, SESSIONBEANSERVICE_QNAME, features);
    }

    public SessionBeanService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public SessionBeanService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns SessionBeanDelegate
     */
    @WebEndpoint(name = "SessionBeanPort")
    public SessionBeanDelegate getSessionBeanPort() {
        return super.getPort(new QName("http://lib.test.ws/", "SessionBeanPort"), SessionBeanDelegate.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns SessionBeanDelegate
     */
    @WebEndpoint(name = "SessionBeanPort")
    public SessionBeanDelegate getSessionBeanPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://lib.test.ws/", "SessionBeanPort"), SessionBeanDelegate.class, features);
    }

    private static URL __getWsdlLocation() {
        if (SESSIONBEANSERVICE_EXCEPTION!= null) {
            throw SESSIONBEANSERVICE_EXCEPTION;
        }
        return SESSIONBEANSERVICE_WSDL_LOCATION;
    }

}
