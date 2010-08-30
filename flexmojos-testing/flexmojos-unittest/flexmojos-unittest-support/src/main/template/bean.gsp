<%--
  GRANITE DATA SERVICES
  Copyright (C) 2007-2008 ADEQUATE SYSTEMS SARL

  This file is part of Granite Data Services.

  Granite Data Services is free software; you can redistribute it and/or modify
  it under the terms of the GNU Lesser General Public License as published by
  the Free Software Foundation; either version 3 of the License, or (at your
  option) any later version.

  Granite Data Services is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
  FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License
  for more details.

  You should have received a copy of the GNU Lesser General Public License
  along with this library; if not, see <http://www.gnu.org/licenses/>.

  @author Franck WOLFF
--%>/**
 * Generated by Gas3 v${gVersion} (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package ${jClass.as3Type.packageName} {<%

    ///////////////////////////////////////////////////////////////////////////
    // Write Import Statements.

    if (jClass.hasInterfaces()) {
        Set as3Imports = new TreeSet();

        for (jProperty in jClass.interfacesProperties) {
            if (jProperty.as3Type.hasPackage() && jProperty.as3Type.packageName != jClass.as3Type.packageName)
                as3Imports.add(jProperty.as3Type.qualifiedName);
        }

        if (as3Imports.size() > 0) {%>
<%
        }
        for (as3Import in as3Imports) {%>
    import ${as3Import};<%
        }
    }%>

    public class ${jClass.as3Type.name} extends ${jClass.as3Type.name}Base {<%

    ///////////////////////////////////////////////////////////////////////////
    // (Re)Write Public Getters/Setters for Implemented Interfaces.

    if (jClass.hasInterfaces()) {
        for (jProperty in jClass.interfacesProperties) {
            if (jProperty.readable || jProperty.writable) {%>
<%
                if (jProperty.writable) {%>
        override public function set ${jProperty.name}(value:${jProperty.as3Type.name}):void {
            // TODO: Gas3 empty generated setter.
        }<%
                }
                if (jProperty.readable) {%>
        override public function get ${jProperty.name}():${jProperty.as3Type.name} {
            // TODO: Gas3 default generated getter.
            return ${jProperty.as3Type.nullValue};
        }<%
                }
            }
        }
    }%>
    }
}