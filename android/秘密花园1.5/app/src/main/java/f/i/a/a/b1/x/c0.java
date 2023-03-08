package f.i.a.a.b1.x;

import android.util.SparseArray;
import f.i.a.a.h0;
import f.i.a.a.m1.e0;
import java.util.Collections;
import java.util.List;

/* compiled from: TsPayloadReader.java */
/* loaded from: classes.dex */
public interface c0 {

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final String a;
        public final byte[] b;

        public a(String str, int i2, byte[] bArr) {
            this.a = str;
            this.b = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f4402c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f4403d;

        public b(int i2, String str, List<a> list, byte[] bArr) {
            List<a> unmodifiableList;
            this.a = i2;
            this.b = str;
            if (list == null) {
                unmodifiableList = Collections.emptyList();
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f4402c = unmodifiableList;
            this.f4403d = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes.dex */
    public interface c {
        SparseArray<c0> a();

        c0 b(int i2, b bVar);
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes.dex */
    public static final class d {
        public final String a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4404c;

        /* renamed from: d  reason: collision with root package name */
        public int f4405d;

        /* renamed from: e  reason: collision with root package name */
        public String f4406e;

        public d(int i2, int i3, int i4) {
            String str;
            if (i2 != Integer.MIN_VALUE) {
                str = i2 + "/";
            } else {
                str = "";
            }
            this.a = str;
            this.b = i3;
            this.f4404c = i4;
            this.f4405d = Integer.MIN_VALUE;
        }

        public void a() {
            int i2 = this.f4405d;
            this.f4405d = i2 == Integer.MIN_VALUE ? this.b : i2 + this.f4404c;
            this.f4406e = this.a + this.f4405d;
        }

        public String b() {
            if (this.f4405d != Integer.MIN_VALUE) {
                return this.f4406e;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public int c() {
            int i2 = this.f4405d;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    void a();

    void b(e0 e0Var, f.i.a.a.b1.h hVar, d dVar);

    void c(f.i.a.a.m1.u uVar, int i2) throws h0;
}
