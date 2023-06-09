
package ws.test.lib;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the ws.test.lib package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _IsBookExist_QNAME = new QName("http://lib.test.ws/", "isBookExist");
    private final static QName _GetBook_QNAME = new QName("http://lib.test.ws/", "getBook");
    private final static QName _IsBookExistResponse_QNAME = new QName("http://lib.test.ws/", "isBookExistResponse");
    private final static QName _GetBookResponse_QNAME = new QName("http://lib.test.ws/", "getBookResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: ws.test.lib
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetBookResponse }
     * 
     */
    public GetBookResponse createGetBookResponse() {
        return new GetBookResponse();
    }

    /**
     * Create an instance of {@link GetBook }
     * 
     */
    public GetBook createGetBook() {
        return new GetBook();
    }

    /**
     * Create an instance of {@link IsBookExist }
     * 
     */
    public IsBookExist createIsBookExist() {
        return new IsBookExist();
    }

    /**
     * Create an instance of {@link IsBookExistResponse }
     * 
     */
    public IsBookExistResponse createIsBookExistResponse() {
        return new IsBookExistResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsBookExist }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://lib.test.ws/", name = "isBookExist")
    public JAXBElement<IsBookExist> createIsBookExist(IsBookExist value) {
        return new JAXBElement<IsBookExist>(_IsBookExist_QNAME, IsBookExist.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBook }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://lib.test.ws/", name = "getBook")
    public JAXBElement<GetBook> createGetBook(GetBook value) {
        return new JAXBElement<GetBook>(_GetBook_QNAME, GetBook.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link IsBookExistResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://lib.test.ws/", name = "isBookExistResponse")
    public JAXBElement<IsBookExistResponse> createIsBookExistResponse(IsBookExistResponse value) {
        return new JAXBElement<IsBookExistResponse>(_IsBookExistResponse_QNAME, IsBookExistResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBookResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://lib.test.ws/", name = "getBookResponse")
    public JAXBElement<GetBookResponse> createGetBookResponse(GetBookResponse value) {
        return new JAXBElement<GetBookResponse>(_GetBookResponse_QNAME, GetBookResponse.class, null, value);
    }

}
