package f.a.a.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: RangeLayoutHelperFinder.java */
/* loaded from: classes.dex */
public class k extends f.a.a.a.b {
    @NonNull
    public List<b> a = new LinkedList();
    @NonNull
    public List<f.a.a.a.a> b = new LinkedList();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public Comparator<b> f3382c = new a(this);

    /* compiled from: RangeLayoutHelperFinder.java */
    /* loaded from: classes.dex */
    public class a implements Comparator<b> {
        public a(k kVar) {
        }

        @Override // java.util.Comparator
        public int compare(b bVar, b bVar2) {
            return bVar.a() - bVar2.a();
        }
    }

    /* compiled from: RangeLayoutHelperFinder.java */
    /* loaded from: classes.dex */
    public static class b {
        public f.a.a.a.a a;

        public b(f.a.a.a.a aVar) {
            this.a = aVar;
        }

        public int a() {
            return this.a.a.a.intValue();
        }
    }

    @Override // f.a.a.a.b
    @Nullable
    public f.a.a.a.a b(int i2) {
        b bVar;
        int size = this.a.size();
        if (size == 0) {
            return null;
        }
        int i3 = 0;
        int i4 = size - 1;
        while (true) {
            if (i3 > i4) {
                bVar = null;
                break;
            }
            int i5 = (i3 + i4) / 2;
            bVar = this.a.get(i5);
            if (bVar.a() <= i2) {
                if (bVar.a.a.b.intValue() >= i2) {
                    if (bVar.a() <= i2 && bVar.a.a.b.intValue() >= i2) {
                        break;
                    }
                } else {
                    i3 = i5 + 1;
                }
            } else {
                i4 = i5 - 1;
            }
        }
        if (bVar == null) {
            return null;
        }
        return bVar.a;
    }

    @Override // f.a.a.a.b
    public void c(@Nullable List<f.a.a.a.a> list) {
        this.b.clear();
        this.a.clear();
        if (list != null) {
            for (f.a.a.a.a aVar : list) {
                this.b.add(aVar);
                this.a.add(new b(aVar));
            }
            Collections.sort(this.a, this.f3382c);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<f.a.a.a.a> iterator() {
        return Collections.unmodifiableList(this.b).iterator();
    }
}
