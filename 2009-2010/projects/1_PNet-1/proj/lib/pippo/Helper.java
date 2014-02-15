package pippo;

import fr.obeo.acceleo.gen.template.eval.ENodeCastException;

public class Helper
{
        public String
        concat(String s1, String s2)
                throws ENodeCastException
        {
                return s1.concat(s2);
        }

        public String
        appendTo(String s1, String s2)
                throws ENodeCastException
        {
                return s2.concat(s1);
        }
}
