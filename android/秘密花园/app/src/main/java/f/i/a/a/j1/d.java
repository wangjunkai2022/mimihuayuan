package f.i.a.a.j1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import f.i.a.a.b0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.j;
import f.i.a.a.j1.l;
import f.i.a.a.j1.m;
import f.i.a.a.m1.h0;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: DefaultTrackSelector.java */
/* loaded from: classes.dex */
public class d extends f {

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f5406f = new int[0];

    /* renamed from: d  reason: collision with root package name */
    public final j.b f5407d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicReference<c> f5408e = new AtomicReference<>(c.A);

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final int a;
        public final int b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f5409c;

        public a(int i2, int i3, @Nullable String str) {
            this.a = i2;
            this.b = i3;
            this.f5409c = str;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a == aVar.a && this.b == aVar.b && TextUtils.equals(this.f5409c, aVar.f5409c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i2 = ((this.a * 31) + this.b) * 31;
            String str = this.f5409c;
            return i2 + (str != null ? str.hashCode() : 0);
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes.dex */
    public static final class b implements Comparable<b> {
        public final boolean a;
        public final c b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f5410c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5411d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5412e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5413f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f5414g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5415h;

        /* renamed from: i  reason: collision with root package name */
        public final int f5416i;

        /* renamed from: j  reason: collision with root package name */
        public final int f5417j;

        public b(b0 b0Var, c cVar, int i2) {
            int i3;
            this.b = cVar;
            int i4 = 0;
            this.f5410c = d.f(i2, false);
            this.f5411d = d.d(b0Var, cVar.a);
            boolean z = true;
            this.f5414g = (b0Var.f4007c & 1) != 0;
            this.f5415h = b0Var.v;
            this.f5416i = b0Var.w;
            int i5 = b0Var.f4009e;
            this.f5417j = i5;
            if ((i5 != -1 && i5 > cVar.q) || ((i3 = b0Var.v) != -1 && i3 > cVar.p)) {
                z = false;
            }
            this.a = z;
            String[] M = h0.M();
            int i6 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i7 = 0;
            while (true) {
                if (i7 >= M.length) {
                    break;
                }
                int d2 = d.d(b0Var, M[i7]);
                if (d2 > 0) {
                    i6 = i7;
                    i4 = d2;
                    break;
                }
                i7++;
            }
            this.f5412e = i6;
            this.f5413f = i4;
        }

        /* renamed from: a */
        public int compareTo(@NonNull b bVar) {
            int c2;
            boolean z = this.f5410c;
            int i2 = 1;
            if (z != bVar.f5410c) {
                return z ? 1 : -1;
            }
            int i3 = this.f5411d;
            int i4 = bVar.f5411d;
            if (i3 != i4) {
                return d.b(i3, i4);
            }
            boolean z2 = this.a;
            if (z2 != bVar.a) {
                if (z2) {
                    return 1;
                }
                return -1;
            } else if (!this.b.u || (c2 = d.c(this.f5417j, bVar.f5417j)) == 0) {
                boolean z3 = this.f5414g;
                if (z3 == bVar.f5414g) {
                    int i5 = this.f5412e;
                    int i6 = bVar.f5412e;
                    if (i5 != i6) {
                        return -d.b(i5, i6);
                    }
                    int i7 = this.f5413f;
                    int i8 = bVar.f5413f;
                    if (i7 != i8) {
                        return d.b(i7, i8);
                    }
                    if (!this.a || !this.f5410c) {
                        i2 = -1;
                    }
                    int i9 = this.f5415h;
                    int i10 = bVar.f5415h;
                    if (i9 != i10) {
                        return d.b(i9, i10) * i2;
                    }
                    int i11 = this.f5416i;
                    int i12 = bVar.f5416i;
                    if (i11 != i12) {
                        return d.b(i11, i12) * i2;
                    }
                    return d.b(this.f5417j, bVar.f5417j) * i2;
                } else if (z3) {
                    return 1;
                } else {
                    return -1;
                }
            } else if (c2 > 0) {
                return -1;
            } else {
                return 1;
            }
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes.dex */
    public static final class c extends l {
        public static final c A;
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* renamed from: f  reason: collision with root package name */
        public final int f5418f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5419g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5420h;

        /* renamed from: i  reason: collision with root package name */
        public final int f5421i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f5422j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f5423k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f5424l;

        /* renamed from: m  reason: collision with root package name */
        public final int f5425m;
        public final int n;
        public final boolean o;
        public final int p;
        public final int q;
        public final boolean r;
        public final boolean s;
        public final boolean t;
        public final boolean u;
        public final boolean v;
        public final boolean w;
        public final int x;
        public final SparseArray<Map<p0, e>> y;
        public final SparseBooleanArray z;

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<c> {
            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public c[] newArray(int i2) {
                return new c[i2];
            }
        }

        static {
            l lVar = l.f5447e;
            A = new c(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true, false, true, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true, lVar.a, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, true, false, false, lVar.b, lVar.f5448c, lVar.f5449d, false, false, true, 0, new SparseArray(), new SparseBooleanArray());
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public c() {
            /*
                r26 = this;
                r0 = r26
                f.i.a.a.j1.l r1 = f.i.a.a.j1.l.f5447e
                java.lang.String r11 = r1.a
                java.lang.String r2 = r1.b
                r17 = r2
                boolean r2 = r1.f5448c
                r18 = r2
                int r1 = r1.f5449d
                r19 = r1
                android.util.SparseArray r1 = new android.util.SparseArray
                r24 = r1
                r1.<init>()
                android.util.SparseBooleanArray r1 = new android.util.SparseBooleanArray
                r25 = r1
                r1.<init>()
                r1 = 2147483647(0x7fffffff, float:NaN)
                r2 = 2147483647(0x7fffffff, float:NaN)
                r3 = 2147483647(0x7fffffff, float:NaN)
                r4 = 2147483647(0x7fffffff, float:NaN)
                r5 = 1
                r6 = 0
                r7 = 1
                r8 = 2147483647(0x7fffffff, float:NaN)
                r9 = 2147483647(0x7fffffff, float:NaN)
                r10 = 1
                r12 = 2147483647(0x7fffffff, float:NaN)
                r13 = 2147483647(0x7fffffff, float:NaN)
                r14 = 1
                r15 = 0
                r16 = 0
                r20 = 0
                r21 = 0
                r22 = 1
                r23 = 0
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.j1.d.c.<init>():void");
        }

        public final boolean a(int i2) {
            return this.z.get(i2);
        }

        @Nullable
        public final e b(int i2, p0 p0Var) {
            Map<p0, e> map = this.y.get(i2);
            if (map != null) {
                return map.get(p0Var);
            }
            return null;
        }

        @Override // f.i.a.a.j1.l, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX WARNING: Removed duplicated region for block: B:59:0x00b0  */
        /* JADX WARNING: Removed duplicated region for block: B:78:0x0118 A[LOOP:1: B:63:0x00c1->B:78:0x0118, LOOP_END] */
        /* JADX WARNING: Removed duplicated region for block: B:87:0x00be A[SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
        @Override // f.i.a.a.j1.l, java.lang.Object
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(@androidx.annotation.Nullable java.lang.Object r11) {
            /*
            // Method dump skipped, instructions count: 290
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.j1.d.c.equals(java.lang.Object):boolean");
        }

        @Override // f.i.a.a.j1.l, java.lang.Object
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.f5418f) * 31) + this.f5419g) * 31) + this.f5420h) * 31) + this.f5421i) * 31) + (this.f5422j ? 1 : 0)) * 31) + (this.f5423k ? 1 : 0)) * 31) + (this.f5424l ? 1 : 0)) * 31) + (this.o ? 1 : 0)) * 31) + this.f5425m) * 31) + this.n) * 31) + this.p) * 31) + this.q) * 31) + (this.r ? 1 : 0)) * 31) + (this.s ? 1 : 0)) * 31) + (this.t ? 1 : 0)) * 31) + (this.u ? 1 : 0)) * 31) + (this.v ? 1 : 0)) * 31) + (this.w ? 1 : 0)) * 31) + this.x;
        }

        @Override // f.i.a.a.j1.l, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.a);
            parcel.writeString(this.b);
            h0.s0(parcel, this.f5448c);
            parcel.writeInt(this.f5449d);
            parcel.writeInt(this.f5418f);
            parcel.writeInt(this.f5419g);
            parcel.writeInt(this.f5420h);
            parcel.writeInt(this.f5421i);
            parcel.writeInt(this.f5422j ? 1 : 0);
            parcel.writeInt(this.f5423k ? 1 : 0);
            parcel.writeInt(this.f5424l ? 1 : 0);
            parcel.writeInt(this.f5425m);
            parcel.writeInt(this.n);
            parcel.writeInt(this.o ? 1 : 0);
            parcel.writeInt(this.p);
            parcel.writeInt(this.q);
            parcel.writeInt(this.r ? 1 : 0);
            parcel.writeInt(this.s ? 1 : 0);
            parcel.writeInt(this.t ? 1 : 0);
            parcel.writeInt(this.u ? 1 : 0);
            parcel.writeInt(this.v ? 1 : 0);
            parcel.writeInt(this.w ? 1 : 0);
            parcel.writeInt(this.x);
            SparseArray<Map<p0, e>> sparseArray = this.y;
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = sparseArray.keyAt(i3);
                Map<p0, e> valueAt = sparseArray.valueAt(i3);
                int size2 = valueAt.size();
                parcel.writeInt(keyAt);
                parcel.writeInt(size2);
                for (Map.Entry<p0, e> entry : valueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
            parcel.writeSparseBooleanArray(this.z);
        }

        public c(int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3, int i6, int i7, boolean z4, @Nullable String str, int i8, int i9, boolean z5, boolean z6, boolean z7, @Nullable String str2, boolean z8, int i10, boolean z9, boolean z10, boolean z11, int i11, SparseArray<Map<p0, e>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, z8, i10);
            this.f5418f = i2;
            this.f5419g = i3;
            this.f5420h = i4;
            this.f5421i = i5;
            this.f5422j = z;
            this.f5423k = z2;
            this.f5424l = z3;
            this.f5425m = i6;
            this.n = i7;
            this.o = z4;
            this.p = i8;
            this.q = i9;
            this.r = z5;
            this.s = z6;
            this.t = z7;
            this.u = z9;
            this.v = z10;
            this.w = z11;
            this.x = i11;
            this.y = sparseArray;
            this.z = sparseBooleanArray;
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f5418f = parcel.readInt();
            this.f5419g = parcel.readInt();
            this.f5420h = parcel.readInt();
            this.f5421i = parcel.readInt();
            boolean z = true;
            this.f5422j = parcel.readInt() != 0;
            this.f5423k = parcel.readInt() != 0;
            this.f5424l = parcel.readInt() != 0;
            this.f5425m = parcel.readInt();
            this.n = parcel.readInt();
            this.o = parcel.readInt() != 0;
            this.p = parcel.readInt();
            this.q = parcel.readInt();
            this.r = parcel.readInt() != 0;
            this.s = parcel.readInt() != 0;
            this.t = parcel.readInt() != 0;
            this.u = parcel.readInt() != 0;
            this.v = parcel.readInt() != 0;
            this.w = parcel.readInt() == 0 ? false : z;
            this.x = parcel.readInt();
            int readInt = parcel.readInt();
            SparseArray<Map<p0, e>> sparseArray = new SparseArray<>(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i3 = 0; i3 < readInt3; i3++) {
                    hashMap.put((p0) parcel.readParcelable(p0.class.getClassLoader()), (e) parcel.readParcelable(e.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            this.y = sparseArray;
            this.z = parcel.readSparseBooleanArray();
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* renamed from: f.i.a.a.j1.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0078d extends l.b {

        /* renamed from: e  reason: collision with root package name */
        public int f5426e;

        /* renamed from: f  reason: collision with root package name */
        public int f5427f;

        /* renamed from: g  reason: collision with root package name */
        public int f5428g;

        /* renamed from: h  reason: collision with root package name */
        public int f5429h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f5430i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f5431j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f5432k;

        /* renamed from: l  reason: collision with root package name */
        public int f5433l;

        /* renamed from: m  reason: collision with root package name */
        public int f5434m;
        public boolean n;
        public int o;
        public int p;
        public boolean q;
        public boolean r;
        public boolean s;
        public boolean t;
        public boolean u;
        public boolean v;
        public int w;
        public final SparseArray<Map<p0, e>> x;
        public final SparseBooleanArray y;

        public C0078d(c cVar) {
            super(cVar);
            this.f5426e = cVar.f5418f;
            this.f5427f = cVar.f5419g;
            this.f5428g = cVar.f5420h;
            this.f5429h = cVar.f5421i;
            this.f5430i = cVar.f5422j;
            this.f5431j = cVar.f5423k;
            this.f5432k = cVar.f5424l;
            this.f5433l = cVar.f5425m;
            this.f5434m = cVar.n;
            this.n = cVar.o;
            this.o = cVar.p;
            this.p = cVar.q;
            this.q = cVar.r;
            this.r = cVar.s;
            this.s = cVar.t;
            this.t = cVar.u;
            this.u = cVar.v;
            this.v = cVar.w;
            this.w = cVar.x;
            SparseArray<Map<p0, e>> sparseArray = cVar.y;
            SparseArray<Map<p0, e>> sparseArray2 = new SparseArray<>();
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                sparseArray2.put(sparseArray.keyAt(i2), new HashMap(sparseArray.valueAt(i2)));
            }
            this.x = sparseArray2;
            this.y = cVar.z.clone();
        }

        public c a() {
            return new c(this.f5426e, this.f5427f, this.f5428g, this.f5429h, this.f5430i, this.f5431j, this.f5432k, this.f5433l, this.f5434m, this.n, this.a, this.o, this.p, this.q, this.r, this.s, this.b, this.f5450c, this.f5451d, this.t, this.u, this.v, this.w, this.x, this.y);
        }

        public final C0078d b(int i2, boolean z) {
            if (this.y.get(i2) == z) {
                return this;
            }
            if (z) {
                this.y.put(i2, true);
            } else {
                this.y.delete(i2);
            }
            return this;
        }

        public final C0078d c(int i2, p0 p0Var, e eVar) {
            Map<p0, e> map = this.x.get(i2);
            if (map == null) {
                map = new HashMap<>();
                this.x.put(i2, map);
            }
            if (map.containsKey(p0Var) && h0.b(map.get(p0Var), eVar)) {
                return this;
            }
            map.put(p0Var, eVar);
            return this;
        }
    }

    public d(j.b bVar) {
        this.f5407d = bVar;
    }

    public static int b(int i2, int i3) {
        if (i2 > i3) {
            return 1;
        }
        return i3 > i2 ? -1 : 0;
    }

    public static int c(int i2, int i3) {
        if (i2 == -1) {
            return i3 == -1 ? 0 : -1;
        }
        if (i3 == -1) {
            return 1;
        }
        return i2 - i3;
    }

    public static int d(b0 b0Var, @Nullable String str) {
        String str2 = b0Var.A;
        if (str2 == null || str == null) {
            return 0;
        }
        if (TextUtils.equals(str2, str)) {
            return 3;
        }
        if (b0Var.A.startsWith(str) || str.startsWith(b0Var.A)) {
            return 2;
        }
        if (h0.m0(b0Var.A, "-")[0].equals(str.split("-", 2)[0])) {
            return 1;
        }
        return 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0057  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.List<java.lang.Integer> e(f.i.a.a.h1.o0 r12, int r13, int r14, boolean r15) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r12.a
            r0.<init>(r1)
            r1 = 0
            r2 = 0
        L_0x0009:
            int r3 = r12.a
            if (r2 >= r3) goto L_0x0017
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)
            r0.add(r3)
            int r2 = r2 + 1
            goto L_0x0009
        L_0x0017:
            r2 = 2147483647(0x7fffffff, float:NaN)
            if (r13 == r2) goto L_0x00a6
            if (r14 != r2) goto L_0x0020
            goto L_0x00a6
        L_0x0020:
            r3 = 0
            r4 = 2147483647(0x7fffffff, float:NaN)
        L_0x0024:
            int r5 = r12.a
            r6 = 1
            if (r3 >= r5) goto L_0x0080
            f.i.a.a.b0[] r5 = r12.b
            r5 = r5[r3]
            int r7 = r5.n
            if (r7 <= 0) goto L_0x007d
            int r8 = r5.o
            if (r8 <= 0) goto L_0x007d
            if (r15 == 0) goto L_0x0045
            if (r7 <= r8) goto L_0x003b
            r9 = 1
            goto L_0x003c
        L_0x003b:
            r9 = 0
        L_0x003c:
            if (r13 <= r14) goto L_0x003f
            goto L_0x0040
        L_0x003f:
            r6 = 0
        L_0x0040:
            if (r9 == r6) goto L_0x0045
            r6 = r13
            r9 = r14
            goto L_0x0047
        L_0x0045:
            r9 = r13
            r6 = r14
        L_0x0047:
            int r10 = r7 * r6
            int r11 = r8 * r9
            if (r10 < r11) goto L_0x0057
            android.graphics.Point r6 = new android.graphics.Point
            int r7 = f.i.a.a.m1.h0.i(r11, r7)
            r6.<init>(r9, r7)
            goto L_0x0061
        L_0x0057:
            android.graphics.Point r7 = new android.graphics.Point
            int r8 = f.i.a.a.m1.h0.i(r10, r8)
            r7.<init>(r8, r6)
            r6 = r7
        L_0x0061:
            int r7 = r5.n
            int r5 = r5.o
            int r8 = r7 * r5
            int r9 = r6.x
            float r9 = (float) r9
            r10 = 1065017672(0x3f7ae148, float:0.98)
            float r9 = r9 * r10
            int r9 = (int) r9
            if (r7 < r9) goto L_0x007d
            int r6 = r6.y
            float r6 = (float) r6
            float r6 = r6 * r10
            int r6 = (int) r6
            if (r5 < r6) goto L_0x007d
            if (r8 >= r4) goto L_0x007d
            r4 = r8
        L_0x007d:
            int r3 = r3 + 1
            goto L_0x0024
        L_0x0080:
            if (r4 == r2) goto L_0x00a6
            int r13 = r0.size()
            int r13 = r13 - r6
        L_0x0087:
            if (r13 < 0) goto L_0x00a6
            java.lang.Object r14 = r0.get(r13)
            java.lang.Integer r14 = (java.lang.Integer) r14
            int r14 = r14.intValue()
            f.i.a.a.b0[] r15 = r12.b
            r14 = r15[r14]
            int r14 = r14.v()
            r15 = -1
            if (r14 == r15) goto L_0x00a0
            if (r14 <= r4) goto L_0x00a3
        L_0x00a0:
            r0.remove(r13)
        L_0x00a3:
            int r13 = r13 + -1
            goto L_0x0087
        L_0x00a6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.j1.d.e(f.i.a.a.h1.o0, int, int, boolean):java.util.List");
    }

    public static boolean f(int i2, boolean z) {
        int i3 = i2 & 7;
        return i3 == 4 || (z && i3 == 3);
    }

    public static boolean g(b0 b0Var, int i2, a aVar, int i3, boolean z, boolean z2) {
        int i4;
        int i5;
        String str;
        if (!f(i2, false)) {
            return false;
        }
        int i6 = b0Var.f4009e;
        if ((i6 != -1 && i6 > i3) || (i4 = b0Var.v) == -1 || i4 != aVar.a) {
            return false;
        }
        if (!z && ((str = b0Var.f4013i) == null || !TextUtils.equals(str, aVar.f5409c))) {
            return false;
        }
        if (z2 || ((i5 = b0Var.w) != -1 && i5 == aVar.b)) {
            return true;
        }
        return false;
    }

    public static boolean h(b0 b0Var, @Nullable String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (!f(i2, false) || (i2 & i3) == 0) {
            return false;
        }
        if (str != null && !h0.b(b0Var.f4013i, str)) {
            return false;
        }
        int i8 = b0Var.n;
        if (i8 != -1 && i8 > i4) {
            return false;
        }
        int i9 = b0Var.o;
        if (i9 != -1 && i9 > i5) {
            return false;
        }
        float f2 = b0Var.p;
        if (f2 != -1.0f && f2 > ((float) i6)) {
            return false;
        }
        int i10 = b0Var.f4009e;
        if (i10 == -1 || i10 <= i7) {
            return true;
        }
        return false;
    }

    public static boolean j(@Nullable String str) {
        return TextUtils.isEmpty(str) || TextUtils.equals(str, "und");
    }

    public void i(c cVar) {
        m.a aVar;
        if (cVar == null) {
            throw null;
        } else if (!this.f5408e.getAndSet(cVar).equals(cVar) && (aVar = this.a) != null) {
            aVar.a();
        }
    }

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes.dex */
    public static final class e implements Parcelable {
        public static final Parcelable.Creator<e> CREATOR = new a();
        public final int a;
        public final int[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5435c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5436d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5437e;

        /* compiled from: DefaultTrackSelector.java */
        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<e> {
            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public e createFromParcel(Parcel parcel) {
                return new e(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public e[] newArray(int i2) {
                return new e[i2];
            }
        }

        public e(int i2, int... iArr) {
            this.a = i2;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.b = copyOf;
            this.f5435c = iArr.length;
            this.f5436d = 2;
            this.f5437e = 0;
            Arrays.sort(copyOf);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // java.lang.Object
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (this.a == eVar.a && Arrays.equals(this.b, eVar.b) && this.f5436d == eVar.f5436d && this.f5437e == eVar.f5437e) {
                return true;
            }
            return false;
        }

        @Override // java.lang.Object
        public int hashCode() {
            return ((((Arrays.hashCode(this.b) + (this.a * 31)) * 31) + this.f5436d) * 31) + this.f5437e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.a);
            parcel.writeInt(this.b.length);
            parcel.writeIntArray(this.b);
            parcel.writeInt(this.f5436d);
            parcel.writeInt(this.f5437e);
        }

        public e(Parcel parcel) {
            this.a = parcel.readInt();
            int readByte = parcel.readByte();
            this.f5435c = readByte;
            int[] iArr = new int[readByte];
            this.b = iArr;
            parcel.readIntArray(iArr);
            this.f5436d = parcel.readInt();
            this.f5437e = parcel.readInt();
        }
    }
}
