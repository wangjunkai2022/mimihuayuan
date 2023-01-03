package f.d.a;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import f.d.a.c;
import f.d.a.o.n.l;
import java.util.List;
import java.util.Map;

/* compiled from: GlideContext.java */
/* loaded from: classes.dex */
public class e extends ContextWrapper {
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    public static final k<?, ?> f3375k = new b();
    public final f.d.a.o.n.b0.b a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.s.h.f f3376c;

    /* renamed from: d  reason: collision with root package name */
    public final c.a f3377d;

    /* renamed from: e  reason: collision with root package name */
    public final List<f.d.a.s.d<Object>> f3378e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<Class<?>, k<?, ?>> f3379f;

    /* renamed from: g  reason: collision with root package name */
    public final l f3380g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f3381h;

    /* renamed from: i  reason: collision with root package name */
    public final int f3382i;
    @Nullable
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    public f.d.a.s.e f3383j;

    public e(@NonNull Context context, @NonNull f.d.a.o.n.b0.b bVar, @NonNull h hVar, @NonNull f.d.a.s.h.f fVar, @NonNull c.a aVar, @NonNull Map<Class<?>, k<?, ?>> map, @NonNull List<f.d.a.s.d<Object>> list, @NonNull l lVar, boolean z, int i2) {
        super(context.getApplicationContext());
        this.a = bVar;
        this.b = hVar;
        this.f3376c = fVar;
        this.f3377d = aVar;
        this.f3378e = list;
        this.f3379f = map;
        this.f3380g = lVar;
        this.f3381h = z;
        this.f3382i = i2;
    }
}
