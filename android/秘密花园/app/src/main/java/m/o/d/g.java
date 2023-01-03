package m.o.d;

import j.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import m.k;

/* compiled from: SubscriptionList.java */
/* loaded from: classes2.dex */
public final class g implements k {
    public List<k> a;
    public volatile boolean b;

    public g() {
    }

    @Override // m.k
    public boolean a() {
        return this.b;
    }

    public void b(k kVar) {
        if (!kVar.a()) {
            if (!this.b) {
                synchronized (this) {
                    if (!this.b) {
                        List list = this.a;
                        if (list == null) {
                            list = new LinkedList();
                            this.a = list;
                        }
                        list.add(kVar);
                        return;
                    }
                }
            }
            kVar.c();
        }
    }

    @Override // m.k
    public void c() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    this.b = true;
                    List<k> list = this.a;
                    ArrayList arrayList = null;
                    this.a = null;
                    if (list != null) {
                        for (k kVar : list) {
                            try {
                                kVar.c();
                            } catch (Throwable th) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(th);
                            }
                        }
                        b.A(arrayList);
                    }
                }
            }
        }
    }

    public g(k... kVarArr) {
        this.a = new LinkedList(Arrays.asList(kVarArr));
    }

    public g(k kVar) {
        LinkedList linkedList = new LinkedList();
        this.a = linkedList;
        linkedList.add(kVar);
    }
}
