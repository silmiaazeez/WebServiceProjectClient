
package ws.test.lib;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

@WebService(name = "SessionBeanDelegate", targetNamespace = "http://lib.test.ws/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface SessionBeanDelegate {


    /**
     * 
     * @return
     *     returns int
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getBook", targetNamespace = "http://lib.test.ws/", className = "ws.test.lib.GetBook")
    @ResponseWrapper(localName = "getBookResponse", targetNamespace = "http://lib.test.ws/", className = "ws.test.lib.GetBookResponse")
    @Action(input = "http://lib.test.ws/SessionBeanDelegate/getBookRequest", output = "http://lib.test.ws/SessionBeanDelegate/getBookResponse")
    public int getBook();

    /**
     * 
     * @param arg0
     * @return
     *     returns boolean
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "isBookExist", targetNamespace = "http://lib.test.ws/", className = "ws.test.lib.IsBookExist")
    @ResponseWrapper(localName = "isBookExistResponse", targetNamespace = "http://lib.test.ws/", className = "ws.test.lib.IsBookExistResponse")
    @Action(input = "http://lib.test.ws/SessionBeanDelegate/isBookExistRequest", output = "http://lib.test.ws/SessionBeanDelegate/isBookExistResponse")
    public boolean isBookExist(
        @WebParam(name = "arg0", targetNamespace = "")
        int arg0);

}
