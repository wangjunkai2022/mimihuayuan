package f.c.a.f;

import java.util.List;
/* compiled from: ArrayWheelAdapter.java */
/* loaded from: classes.dex */
public class a<T> implements f.f.a.a {
    public List<T> a;

    public a(List<T> list) {
        this.a = list;
    }

    public Object a(int i2) {
        return (i2 < 0 || i2 >= this.a.size()) ? "" : this.a.get(i2);
    }

    public int b() {
        return this.a.size();
    }
}
