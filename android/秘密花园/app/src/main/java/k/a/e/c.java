package k.a.e;

import java.io.IOException;
import k.a.b;
import k.a.e.f;

/* compiled from: CDataNode.java */
/* loaded from: classes.dex */
public class c extends n {
    public c(String str) {
        super(str);
    }

    /* renamed from: D */
    public c h() {
        return (c) super.h();
    }

    @Override // k.a.e.n, k.a.e.l
    public String q() {
        return "#cdata";
    }

    @Override // k.a.e.n, k.a.e.l
    public void s(Appendable appendable, int i2, f.a aVar) throws IOException {
        appendable.append("<![CDATA[").append(z());
    }

    @Override // k.a.e.n, k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) {
        try {
            appendable.append("]]>");
        } catch (IOException e2) {
            throw new b(e2);
        }
    }
}
