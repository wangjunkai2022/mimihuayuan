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
    public static final k<?, ?> f3450k = new b();
    public final f.d.a.o.n.b0.b a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.s.h.f f3451c;

    /* renamed from: d  reason: collision with root package name */
    public final c.a f3452d;

    /* renamed from: e  reason: collision with root package name */
    public final List<f.d.a.s.d<Object>> f3453e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<Class<?>, k<?, ?>> f3454f;

    /* renamed from: g  reason: collision with root package name */
    public final l f3455g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f3456h;

    /* renamed from: i  reason: collision with root package name */
    public final int f3457i;
    @Nullable
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    public f.d.a.s.e f3458j;

    public e(@NonNull Context context, @NonNull f.d.a.o.n.b0.b bVar, @NonNull h hVar, @NonNull f.d.a.s.h.f fVar, @NonNull c.a aVar, @NonNull Map<Class<?>, k<?, ?>> map, @NonNull List<f.d.a.s.d<Object>> list, @NonNull l lVar, boolean z, int i2) {
        super(context.getApplicationContext());
        this.a = bVar;
        this.b = hVar;
        this.f3451c = fVar;
        this.f3452d = aVar;
        this.f3453e = list;
        this.f3454f = map;
        this.f3455g = lVar;
        this.f3456h = z;
        this.f3457i = i2;
    }
}
