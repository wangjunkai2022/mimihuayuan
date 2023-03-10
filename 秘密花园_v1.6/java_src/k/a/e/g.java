package k.a.e;

import java.io.IOException;
import k.a.e.f;
/* compiled from: DocumentType.java */
/* loaded from: classes2.dex */
public class g extends k {
    public g(String str, String str2, String str3) {
        j.b.s(str);
        j.b.s(str2);
        j.b.s(str3);
        c("name", str);
        c("publicId", str2);
        c("systemId", str3);
        if (!k.a.d.a.e(b("publicId"))) {
            c("pubSysKey", "PUBLIC");
        } else if (!k.a.d.a.e(b("systemId"))) {
            c("pubSysKey", "SYSTEM");
        }
    }

    @Override // k.a.e.l
    public String q() {
        return "#doctype";
    }

    @Override // k.a.e.l
    public void s(Appendable appendable, int i2, f.a aVar) throws IOException {
        if (aVar.f7096h == f.a.EnumC0116a.html && !(!k.a.d.a.e(b("publicId"))) && !(!k.a.d.a.e(b("systemId")))) {
            appendable.append("<!doctype");
        } else {
            appendable.append("<!DOCTYPE");
        }
        if (!k.a.d.a.e(b("name"))) {
            appendable.append(" ").append(b("name"));
        }
        if (!k.a.d.a.e(b("pubSysKey"))) {
            appendable.append(" ").append(b("pubSysKey"));
        }
        if (!k.a.d.a.e(b("publicId"))) {
            appendable.append(" \"").append(b("publicId")).append('\"');
        }
        if (!k.a.d.a.e(b("systemId"))) {
            appendable.append(" \"").append(b("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) {
    }
}
