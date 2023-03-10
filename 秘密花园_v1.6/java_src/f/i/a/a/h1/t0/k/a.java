package f.i.a.a.h1.t0.k;

import java.util.Collections;
import java.util.List;
/* compiled from: AdaptationSet.java */
/* loaded from: classes.dex */
public class a {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final List<i> f5037c;

    /* renamed from: d  reason: collision with root package name */
    public final List<d> f5038d;

    /* renamed from: e  reason: collision with root package name */
    public final List<d> f5039e;

    public a(int i2, int i3, List<i> list, List<d> list2, List<d> list3) {
        List<d> unmodifiableList;
        List<d> unmodifiableList2;
        this.a = i2;
        this.b = i3;
        this.f5037c = Collections.unmodifiableList(list);
        if (list2 == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list2);
        }
        this.f5038d = unmodifiableList;
        if (list3 == null) {
            unmodifiableList2 = Collections.emptyList();
        } else {
            unmodifiableList2 = Collections.unmodifiableList(list3);
        }
        this.f5039e = unmodifiableList2;
    }
}
