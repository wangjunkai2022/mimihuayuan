package k.a.e;

import java.io.IOException;
import k.a.e.f;

/* compiled from: DataNode.java */
/* loaded from: classes.dex */
public class e extends k {
    public e(String str) {
        this.f7032c = str;
    }

    @Override // k.a.e.l
    public Object clone() throws CloneNotSupportedException {
        return (e) super.clone();
    }

    @Override // k.a.e.l
    public l h() {
        return (e) super.clone();
    }

    @Override // k.a.e.l
    public String q() {
        return "#data";
    }

    @Override // k.a.e.l
    public void s(Appendable appendable, int i2, f.a aVar) throws IOException {
        appendable.append(z());
    }

    @Override // k.a.e.l
    public void t(Appendable appendable, int i2, f.a aVar) {
    }

    @Override // k.a.e.l
    public String toString() {
        return r();
    }
}
