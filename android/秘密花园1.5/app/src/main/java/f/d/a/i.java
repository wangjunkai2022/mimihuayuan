package f.d.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import f.d.a.p.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: RequestBuilder.java */
/* loaded from: classes.dex */
public class i<TranscodeType> extends f.d.a.s.a<i<TranscodeType>> implements Cloneable {
    public final Context A;
    public final j B;
    public final Class<TranscodeType> C;
    public final e D;
    @NonNull
    public k<?, ? super TranscodeType> E;
    @Nullable
    public Object F;
    @Nullable
    public List<f.d.a.s.d<TranscodeType>> G;
    public boolean H = true;
    public boolean I;

    /* compiled from: RequestBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[f.values().length];
            b = iArr;
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        new f.d.a.s.e().f(f.d.a.o.n.k.f3658c).r(f.LOW).v(true);
    }

    @SuppressLint({"CheckResult"})
    public i(@NonNull c cVar, j jVar, Class<TranscodeType> cls, Context context) {
        f.d.a.s.e eVar;
        this.B = jVar;
        this.C = cls;
        this.A = context;
        e eVar2 = jVar.a.f3433c;
        k<?, ?> kVar = eVar2.f3454f.get(cls);
        if (kVar == null) {
            for (Map.Entry<Class<?>, k<?, ?>> entry : eVar2.f3454f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    kVar = (k<?, ? super TranscodeType>) entry.getValue();
                }
            }
        }
        this.E = (k<?, ? super TranscodeType>) (kVar == null ? (k<?, ? super TranscodeType>) e.f3450k : kVar);
        this.D = cVar.f3433c;
        for (f.d.a.s.d<Object> dVar : jVar.f3478j) {
            B(dVar);
        }
        synchronized (jVar) {
            eVar = jVar.f3479k;
        }
        a(eVar);
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> B(@Nullable f.d.a.s.d<TranscodeType> dVar) {
        if (dVar != null) {
            if (this.G == null) {
                this.G = new ArrayList();
            }
            this.G.add(dVar);
        }
        return this;
    }

    @Override // f.d.a.s.a
    @NonNull
    @CheckResult
    /* renamed from: C */
    public i<TranscodeType> a(@NonNull f.d.a.s.a<?> aVar) {
        c.a.a.b.g.h.s(aVar, "Argument must not be null");
        return (i) super.a(aVar);
    }

    public final f.d.a.s.b D(Object obj, f.d.a.s.h.h<TranscodeType> hVar, @Nullable f.d.a.s.d<TranscodeType> dVar, @Nullable f.d.a.s.c cVar, k<?, ? super TranscodeType> kVar, f fVar, int i2, int i3, f.d.a.s.a<?> aVar, Executor executor) {
        return K(obj, hVar, dVar, aVar, null, kVar, fVar, i2, i3, executor);
    }

    @Override // f.d.a.s.a
    @CheckResult
    /* renamed from: E */
    public i<TranscodeType> d() {
        i<TranscodeType> iVar = (i) super.clone();
        iVar.E = (k<?, ? super TranscodeType>) iVar.E.a();
        return iVar;
    }

    public final <Y extends f.d.a.s.h.h<TranscodeType>> Y F(@NonNull Y y, @Nullable f.d.a.s.d<TranscodeType> dVar, f.d.a.s.a<?> aVar, Executor executor) {
        c.a.a.b.g.h.s(y, "Argument must not be null");
        if (this.I) {
            f.d.a.s.b D = D(new Object(), y, dVar, null, this.E, aVar.f3826d, aVar.f3833k, aVar.f3832j, aVar, executor);
            f.d.a.s.b f2 = y.f();
            f.d.a.s.g gVar = (f.d.a.s.g) D;
            if (gVar.j(f2)) {
                if (!(!aVar.f3831i && f2.d())) {
                    c.a.a.b.g.h.s(f2, "Argument must not be null");
                    if (!f2.isRunning()) {
                        f2.c();
                    }
                    return y;
                }
            }
            this.B.m(y);
            y.i(D);
            j jVar = this.B;
            synchronized (jVar) {
                jVar.f3474f.a.add(y);
                n nVar = jVar.f3472d;
                nVar.a.add(D);
                if (!nVar.f3822c) {
                    gVar.c();
                } else {
                    gVar.clear();
                    Log.isLoggable("RequestTracker", 2);
                    nVar.b.add(D);
                }
            }
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f.d.a.s.h.i<android.widget.ImageView, TranscodeType> G(@androidx.annotation.NonNull android.widget.ImageView r5) {
        /*
            r4 = this;
            f.d.a.u.i.a()
            java.lang.String r0 = "Argument must not be null"
            c.a.a.b.g.h.s(r5, r0)
            int r0 = r4.a
            r1 = 2048(0x800, float:2.87E-42)
            boolean r0 = f.d.a.s.a.j(r0, r1)
            if (r0 != 0) goto L50
            boolean r0 = r4.n
            if (r0 == 0) goto L50
            android.widget.ImageView$ScaleType r0 = r5.getScaleType()
            if (r0 == 0) goto L50
            int[] r0 = f.d.a.i.a.a
            android.widget.ImageView$ScaleType r1 = r5.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L47;
                case 2: goto L3e;
                case 3: goto L35;
                case 4: goto L35;
                case 5: goto L35;
                case 6: goto L2c;
                default: goto L2b;
            }
        L2b:
            goto L50
        L2c:
            f.d.a.s.a r0 = r4.d()
            f.d.a.s.a r0 = r0.m()
            goto L51
        L35:
            f.d.a.s.a r0 = r4.d()
            f.d.a.s.a r0 = r0.n()
            goto L51
        L3e:
            f.d.a.s.a r0 = r4.d()
            f.d.a.s.a r0 = r0.m()
            goto L51
        L47:
            f.d.a.s.a r0 = r4.d()
            f.d.a.s.a r0 = r0.l()
            goto L51
        L50:
            r0 = r4
        L51:
            f.d.a.e r1 = r4.D
            java.lang.Class<TranscodeType> r2 = r4.C
            f.d.a.s.h.f r1 = r1.f3451c
            r3 = 0
            if (r1 == 0) goto L97
            java.lang.Class<android.graphics.Bitmap> r1 = android.graphics.Bitmap.class
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L68
            f.d.a.s.h.b r1 = new f.d.a.s.h.b
            r1.<init>(r5)
            goto L75
        L68:
            java.lang.Class<android.graphics.drawable.Drawable> r1 = android.graphics.drawable.Drawable.class
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L7b
            f.d.a.s.h.d r1 = new f.d.a.s.h.d
            r1.<init>(r5)
        L75:
            java.util.concurrent.Executor r5 = f.d.a.u.d.a
            r4.F(r1, r3, r0, r5)
            return r1
        L7b:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Unhandled class: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r1 = ", try .as*(Class).transcode(ResourceTranscoder)"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        L97:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.i.G(android.widget.ImageView):f.d.a.s.h.i");
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> H(@Nullable @DrawableRes @RawRes Integer num) {
        this.F = num;
        this.I = true;
        return a(new f.d.a.s.e().u(f.d.a.t.a.c(this.A)));
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> I(@Nullable Object obj) {
        this.F = obj;
        this.I = true;
        return this;
    }

    @NonNull
    @CheckResult
    public i<TranscodeType> J(@Nullable String str) {
        this.F = str;
        this.I = true;
        return this;
    }

    public final f.d.a.s.b K(Object obj, f.d.a.s.h.h<TranscodeType> hVar, f.d.a.s.d<TranscodeType> dVar, f.d.a.s.a<?> aVar, f.d.a.s.c cVar, k<?, ? super TranscodeType> kVar, f fVar, int i2, int i3, Executor executor) {
        Context context = this.A;
        e eVar = this.D;
        return new f.d.a.s.g(context, eVar, obj, this.F, this.C, aVar, i2, i3, fVar, hVar, dVar, this.G, cVar, eVar.f3455g, kVar.a, executor);
    }
}
