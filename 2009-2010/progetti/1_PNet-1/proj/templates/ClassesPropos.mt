<%
metamodel http://www.eclipse.org/uml2/2.1.0/UML

import pippo.Helper
%>

<%script type="Model" name="genClassesPropos" file="ClassesPropositions.list"%>
<%for (eAllContents("Package")) {%>
    <%for (eAllContents("Class")) {%>
<%--
/*
    concat() ed appendTo sono funzioni esportate dal servizio pippo.Helper
*/
<%if (superClass){%>
    <%superClass.name.appendTo("� un \"").concat("\";").put("$ClassType")%>
<%}%>;
--%>
La classe "<%name%>"
        <%if (superClass) {%>
    � un "<%superClass.name%>" ed ha gli attributi e le operazioni ereditati da esso;
        <%}%>
        <%if (attribute.nSize() == 1) {%>
    � composta dal seguente attributo:
        <%}else{%> <%if (attribute.nSize() > 1) {%>
    � composta dai seguenti <%attribute.nSize()%> attributi:
        <%}%><%}%>
        <%for (attribute) {%>
        - <%name%>;
        <%}%>
        <%if (ownedOperation.nSize() == 1) {%>
    fornisce il seguente metodo:
        <%}else{%> <%if (ownedOperation.nSize() > 1) {%>
    fornisce i seguenti <%attribute.nSize()%> metodi:
        <%}%><%}%>
        <%for (ownedOperation){%>
        - "<%name%>",<%if (ownedComment) {%><%--
            --%> per <%ownedComment.body%><%--
            --%><%}%><%--
        --%>;
        <%}%>
        <%if (getRelationships()[ownedComment != ""].nSize() == 1) {%>
    presenta la seguente relazione:
        <%}else{%> <%if (getRelationships()[ownedComment != ""].nSize() > 1) {%>
    presenta le seguenti <%getRelationships()[ownedComment != ""].nSize()%> relazioni:
        <%}%><%}%>
        <%for (getRelationships()[ownedComment != ""]) {%>
            - la relazione che mi fa associare "<%ownedComment.body%>";
        <%}%>

    <%}%>
<%}%>
