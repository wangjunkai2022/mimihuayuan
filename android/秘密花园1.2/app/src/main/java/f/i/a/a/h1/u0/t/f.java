package f.i.a.a.h1.u0.t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;

/* compiled from: HlsMediaPlaylist.java */
/* loaded from: classes.dex */
public final class f extends g {

    /* renamed from: d  reason: collision with root package name */
    public final int f5189d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5190e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5191f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f5192g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5193h;

    /* renamed from: i  reason: collision with root package name */
    public final long f5194i;

    /* renamed from: j  reason: collision with root package name */
    public final int f5195j;

    /* renamed from: k  reason: collision with root package name */
    public final long f5196k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f5197l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f5198m;
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
        public final long f5199c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5200d;

        /* renamed from: e  reason: collision with root package name */
        public final long f5201e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final f.i.a.a.z0.e f5202f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        public final String f5203g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public final String f5204h;

        /* renamed from: i  reason: collision with root package name */
        public final long f5205i;

        /* renamed from: j  reason: collision with root package name */
        public final long f5206j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f5207k;

        public a(String str, @Nullable a aVar, String str2, long j2, int i2, long j3, @Nullable f.i.a.a.z0.e eVar, @Nullable String str3, @Nullable String str4, long j4, long j5, boolean z) {
            this.a = str;
            this.b = aVar;
            this.f5199c = j2;
            this.f5200d = i2;
            this.f5201e = j3;
            this.f5202f = eVar;
            this.f5203g = str3;
            this.f5204h = str4;
            this.f5205i = j4;
            this.f5206j = j5;
            this.f5207k = z;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Long l2) {
            Long l3 = l2;
            if (this.f5201e > l3.longValue()) {
                return 1;
            }
            return this.f5201e < l3.longValue() ? -1 : 0;
        }
    }

    public f(int i2, String str, List<String> list, long j2, long j3, boolean z, int i3, long j4, int i4, long j5, boolean z2, boolean z3, boolean z4, @Nullable f.i.a.a.z0.e eVar, List<a> list2) {
        super(str, list, z2);
        long j6;
        this.f5189d = i2;
        this.f5191f = j3;
        this.f5192g = z;
        this.f5193h = i3;
        this.f5194i = j4;
        this.f5195j = i4;
        this.f5196k = j5;
        this.f5197l = z3;
        this.f5198m = z4;
        this.n = eVar;
        this.o = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            a aVar = list2.get(list2.size() - 1);
            this.p = aVar.f5201e + aVar.f5199c;
        } else {
            this.p = 0L;
        }
        if (j2 == -9223372036854775807L) {
            j6 = -9223372036854775807L;
        } else {
            j6 = j2 >= 0 ? j2 : this.p + j2;
        }
        this.f5190e = j6;
    }

    @Override // f.i.a.a.e1.y
    public g a(List list) {
        return this;
    }
}
