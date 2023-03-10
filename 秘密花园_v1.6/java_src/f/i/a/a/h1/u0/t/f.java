package f.i.a.a.h1.u0.t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
/* compiled from: HlsMediaPlaylist.java */
/* loaded from: classes.dex */
public final class f extends g {

    /* renamed from: d  reason: collision with root package name */
    public final int f5198d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5199e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5200f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5201g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5202h;

    /* renamed from: i  reason: collision with root package name */
    public final long f5203i;

    /* renamed from: j  reason: collision with root package name */
    public final int f5204j;

    /* renamed from: k  reason: collision with root package name */
    public final long f5205k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f5206l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f5207m;
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
        public final long f5208c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5209d;

        /* renamed from: e  reason: collision with root package name */
        public final long f5210e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final f.i.a.a.z0.e f5211f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f5212g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final String f5213h;

        /* renamed from: i  reason: collision with root package name */
        public final long f5214i;

        /* renamed from: j  reason: collision with root package name */
        public final long f5215j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f5216k;

        public a(String str, @Nullable a aVar, String str2, long j2, int i2, long j3, @Nullable f.i.a.a.z0.e eVar, @Nullable String str3, @Nullable String str4, long j4, long j5, boolean z) {
            this.a = str;
            this.b = aVar;
            this.f5208c = j2;
            this.f5209d = i2;
            this.f5210e = j3;
            this.f5211f = eVar;
            this.f5212g = str3;
            this.f5213h = str4;
            this.f5214i = j4;
            this.f5215j = j5;
            this.f5216k = z;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Long l2) {
            Long l3 = l2;
            if (this.f5210e > l3.longValue()) {
                return 1;
            }
            return this.f5210e < l3.longValue() ? -1 : 0;
        }
    }

    public f(int i2, String str, List<String> list, long j2, long j3, boolean z, int i3, long j4, int i4, long j5, boolean z2, boolean z3, boolean z4, @Nullable f.i.a.a.z0.e eVar, List<a> list2) {
        super(str, list, z2);
        long j6;
        this.f5198d = i2;
        this.f5200f = j3;
        this.f5201g = z;
        this.f5202h = i3;
        this.f5203i = j4;
        this.f5204j = i4;
        this.f5205k = j5;
        this.f5206l = z3;
        this.f5207m = z4;
        this.n = eVar;
        this.o = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            a aVar = list2.get(list2.size() - 1);
            this.p = aVar.f5210e + aVar.f5208c;
        } else {
            this.p = 0L;
        }
        if (j2 == -9223372036854775807L) {
            j6 = -9223372036854775807L;
        } else {
            j6 = j2 >= 0 ? j2 : this.p + j2;
        }
        this.f5199e = j6;
    }

    @Override // f.i.a.a.e1.y
    public g a(List list) {
        return this;
    }
}
