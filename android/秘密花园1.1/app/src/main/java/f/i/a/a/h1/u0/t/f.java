package f.i.a.a.h1.u0.t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* compiled from: HlsMediaPlaylist.java */
/* loaded from: classes.dex */
public final class f extends g {

    /* renamed from: d  reason: collision with root package name */
    public final int f5114d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5115e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5116f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5117g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5118h;

    /* renamed from: i  reason: collision with root package name */
    public final long f5119i;

    /* renamed from: j  reason: collision with root package name */
    public final int f5120j;

    /* renamed from: k  reason: collision with root package name */
    public final long f5121k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f5122l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f5123m;
    @Nullable
    public final f.i.a.a.z0.e n;
    public final List<a> o;
    public final long p;

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes.dex */
    public static final class a implements Comparable<Long> {
        public final String a;
        @Nullable
        public final a b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5124c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5125d;

        /* renamed from: e  reason: collision with root package name */
        public final long f5126e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final f.i.a.a.z0.e f5127f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f5128g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final String f5129h;

        /* renamed from: i  reason: collision with root package name */
        public final long f5130i;

        /* renamed from: j  reason: collision with root package name */
        public final long f5131j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f5132k;

        public a(String str, @Nullable a aVar, String str2, long j2, int i2, long j3, @Nullable f.i.a.a.z0.e eVar, @Nullable String str3, @Nullable String str4, long j4, long j5, boolean z) {
            this.a = str;
            this.b = aVar;
            this.f5124c = j2;
            this.f5125d = i2;
            this.f5126e = j3;
            this.f5127f = eVar;
            this.f5128g = str3;
            this.f5129h = str4;
            this.f5130i = j4;
            this.f5131j = j5;
            this.f5132k = z;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Long l2) {
            Long l3 = l2;
            if (this.f5126e > l3.longValue()) {
                return 1;
            }
            return this.f5126e < l3.longValue() ? -1 : 0;
        }
    }

    public f(int i2, String str, List<String> list, long j2, long j3, boolean z, int i3, long j4, int i4, long j5, boolean z2, boolean z3, boolean z4, @Nullable f.i.a.a.z0.e eVar, List<a> list2) {
        super(str, list, z2);
        long j6;
        this.f5114d = i2;
        this.f5116f = j3;
        this.f5117g = z;
        this.f5118h = i3;
        this.f5119i = j4;
        this.f5120j = i4;
        this.f5121k = j5;
        this.f5122l = z3;
        this.f5123m = z4;
        this.n = eVar;
        this.o = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            a aVar = list2.get(list2.size() - 1);
            this.p = aVar.f5126e + aVar.f5124c;
        } else {
            this.p = 0L;
        }
        if (j2 == -9223372036854775807L) {
            j6 = -9223372036854775807L;
        } else {
            j6 = j2 >= 0 ? j2 : this.p + j2;
        }
        this.f5115e = j6;
    }

    @Override // f.i.a.a.e1.y
    public g a(List list) {
        return this;
    }
}
