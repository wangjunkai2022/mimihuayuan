package k.a.e;

import j.b;
import java.io.IOException;
import k.a.d.a;
import k.a.e.f;

/* compiled from: DocumentType.java */
/* loaded from: classes.dex */
public class g extends k {
    public g(String str, String str2, String str3) {
        b.s(str);
        b.s(str2);
        b.s(str3);
        c("name", str);
        c("publicId", str2);
        c("systemId", str3);
        if (!a.e(b("publicId"))) {
            c("pubSysKey", "PUBLIC");
        } else if (!a.e(b("systemId"))) {
            c("pubSysKey", "SYSTEM");
        }
    }

    @Override // k.a.e.l
    public String q() {
        return "#doctype";
    }

    @Override // k.a.e.l
    public void s(Appendable appendable, int i2, f.a aVar) throws IOException {
        if (aVar.f7012h != f.a.EnumC0109a.html || (!a.e(b("publicId"))) || (!a.e(b("systemId")))) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (!a.e(b("name"))) {
            appendable.append(" ").append(b("name"));
        }
        if (!a.e(b("pubSysKey"))) {
            appendable.append(" ").append(b("pubSysKey"));
        }
        if (!a.e(b("publicId"))) {
            appendable.append(" \"").append(b("publicId")).append('\"');
        }
        if (!a.e(b("systemId"))) {
            appendable.append(" \"").append(b("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) {
    }
}
