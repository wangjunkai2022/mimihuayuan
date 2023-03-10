package f.i.a.a.h1.u0.t;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.e1.c0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: HlsMasterPlaylist.java */
/* loaded from: classes.dex */
public final class e extends g {

    /* renamed from: l  reason: collision with root package name */
    public static final e f5184l = new e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: d  reason: collision with root package name */
    public final List<Uri> f5185d;

    /* renamed from: e  reason: collision with root package name */
    public final List<b> f5186e;

    /* renamed from: f  reason: collision with root package name */
    public final List<a> f5187f;

    /* renamed from: g  reason: collision with root package name */
    public final List<a> f5188g;

    /* renamed from: h  reason: collision with root package name */
    public final b0 f5189h;

    /* renamed from: i  reason: collision with root package name */
    public final List<b0> f5190i;

    /* renamed from: j  reason: collision with root package name */
    public final Map<String, String> f5191j;

    /* renamed from: k  reason: collision with root package name */
    public final List<f.i.a.a.z0.e> f5192k;

    /* compiled from: HlsMasterPlaylist.java */
    /* loaded from: classes.dex */
    public static final class a {
        @Nullable
        public final Uri a;
        public final b0 b;

        /* renamed from: c  reason: collision with root package name */
        public final String f5193c;

        public a(@Nullable Uri uri, b0 b0Var, String str, String str2) {
            this.a = uri;
            this.b = b0Var;
            this.f5193c = str2;
        }
    }

    /* compiled from: HlsMasterPlaylist.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final Uri a;
        public final b0 b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f5194c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f5195d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f5196e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f5197f;

        public b(Uri uri, b0 b0Var, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.a = uri;
            this.b = b0Var;
            this.f5194c = str;
            this.f5195d = str2;
            this.f5196e = str3;
            this.f5197f = str4;
        }
    }

    public e(String str, List<String> list, List<b> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, b0 b0Var, List<b0> list7, boolean z, Map<String, String> map, List<f.i.a.a.z0.e> list8) {
        super(str, list, z);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list2.size(); i2++) {
            Uri uri = list2.get(i2).a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        b(list3, arrayList);
        b(list4, arrayList);
        b(list5, arrayList);
        b(list6, arrayList);
        this.f5185d = Collections.unmodifiableList(arrayList);
        this.f5186e = Collections.unmodifiableList(list2);
        Collections.unmodifiableList(list3);
        this.f5187f = Collections.unmodifiableList(list4);
        this.f5188g = Collections.unmodifiableList(list5);
        Collections.unmodifiableList(list6);
        this.f5189h = b0Var;
        this.f5190i = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f5191j = Collections.unmodifiableMap(map);
        this.f5192k = Collections.unmodifiableList(list8);
    }

    public static void b(List<a> list, List<Uri> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            Uri uri = list.get(i2).a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    public static <T> List<T> c(List<T> list, int i2, List<c0> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i3 = 0; i3 < list.size(); i3++) {
            T t = list.get(i3);
            int i4 = 0;
            while (true) {
                if (i4 < list2.size()) {
                    c0 c0Var = list2.get(i4);
                    if (c0Var.b == i2 && c0Var.f4712c == i3) {
                        arrayList.add(t);
                        break;
                    }
                    i4++;
                }
            }
        }
        return arrayList;
    }

    public static e d(String str) {
        return new e(null, Collections.emptyList(), Collections.singletonList(new b(Uri.parse(str), b0.k("0", null, "application/x-mpegURL", null, null, -1, 0, 0, null), null, null, null, null)), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    @Override // f.i.a.a.e1.y
    public g a(List list) {
        return new e(this.a, this.b, c(this.f5186e, 0, list), Collections.emptyList(), c(this.f5187f, 1, list), c(this.f5188g, 2, list), Collections.emptyList(), this.f5189h, this.f5190i, this.f5217c, this.f5191j, this.f5192k);
    }
}
