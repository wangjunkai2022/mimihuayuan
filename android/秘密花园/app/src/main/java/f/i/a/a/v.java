package f.i.a.a;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.Nullable;
import f.i.a.a.c1.c;
import f.i.a.a.d1.e;
import f.i.a.a.d1.f;
import f.i.a.a.i1.k;
import f.i.a.a.i1.l;
import f.i.a.a.n1.m;
import f.i.a.a.n1.s;
import f.i.a.a.n1.t.b;
import f.i.a.a.w0.o;
import f.i.a.a.w0.z;
import f.i.a.a.z0.g;
import f.i.a.a.z0.j;
import java.util.ArrayList;

/* compiled from: DefaultRenderersFactory.java */
/* loaded from: classes.dex */
public class v implements r0 {
    public final Context a;
    @Nullable
    public g<j> b;

    /* renamed from: c  reason: collision with root package name */
    public int f5807c;

    /* renamed from: d  reason: collision with root package name */
    public long f5808d;

    /* renamed from: e  reason: collision with root package name */
    public c f5809e;

    public v(Context context) {
        this.a = context;
        this.f5807c = 0;
        this.f5808d = 5000;
        this.f5809e = c.a;
    }

    public p0[] a(Handler handler, s sVar, o oVar, k kVar, e eVar, @Nullable g<j> gVar) {
        int i2;
        g<j> gVar2 = gVar == null ? this.b : gVar;
        ArrayList arrayList = new ArrayList();
        Context context = this.a;
        int i3 = this.f5807c;
        c cVar = this.f5809e;
        long j2 = this.f5808d;
        arrayList.add(new m(context, cVar, j2, gVar2, false, false, handler, sVar, 50));
        if (i3 != 0) {
            int size = arrayList.size();
            if (i3 == 2) {
                size--;
            }
            try {
                arrayList.add(size, (p0) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, s.class, Integer.TYPE).newInstance(Long.valueOf(j2), handler, sVar, 50));
            } catch (ClassNotFoundException unused) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        }
        Context context2 = this.a;
        int i4 = this.f5807c;
        f.i.a.a.w0.m[] mVarArr = new f.i.a.a.w0.m[0];
        arrayList.add(new z(context2, this.f5809e, gVar2, false, false, handler, oVar, new f.i.a.a.w0.v(f.i.a.a.w0.j.a(context2), mVarArr)));
        if (i4 != 0) {
            int size2 = arrayList.size();
            if (i4 == 2) {
                size2--;
            }
            try {
                try {
                    i2 = size2 + 1;
                    try {
                        arrayList.add(size2, (p0) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                    } catch (ClassNotFoundException unused2) {
                        size2 = i2;
                        i2 = size2;
                        try {
                            int i5 = i2 + 1;
                            try {
                                arrayList.add(i2, (p0) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                            } catch (ClassNotFoundException unused3) {
                                i2 = i5;
                                i5 = i2;
                                arrayList.add(i5, (p0) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                            }
                            arrayList.add(i5, (p0) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                        } catch (Exception e3) {
                            throw new RuntimeException("Error instantiating FLAC extension", e3);
                        }
                    }
                } catch (Exception e4) {
                    throw new RuntimeException("Error instantiating Opus extension", e4);
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                int i5 = i2 + 1;
                arrayList.add(i2, (p0) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
            } catch (ClassNotFoundException unused5) {
            }
            try {
                arrayList.add(i5, (p0) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
            } catch (ClassNotFoundException unused6) {
            } catch (Exception e5) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e5);
            }
        }
        arrayList.add(new l(kVar, handler.getLooper()));
        arrayList.add(new f(eVar, handler.getLooper()));
        arrayList.add(new b());
        return (p0[]) arrayList.toArray(new p0[0]);
    }

    @Deprecated
    public v(Context context, int i2) {
        this.a = context;
        this.f5807c = i2;
        this.f5808d = 5000;
        this.b = null;
        this.f5809e = c.a;
    }
}
