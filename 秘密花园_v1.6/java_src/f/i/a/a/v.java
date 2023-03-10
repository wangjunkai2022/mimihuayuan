package f.i.a.a;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* compiled from: DefaultRenderersFactory.java */
/* loaded from: classes.dex */
public class v implements r0 {
    public final Context a;
    @Nullable
    public f.i.a.a.z0.g<f.i.a.a.z0.j> b;

    /* renamed from: c  reason: collision with root package name */
    public int f5891c;

    /* renamed from: d  reason: collision with root package name */
    public long f5892d;

    /* renamed from: e  reason: collision with root package name */
    public f.i.a.a.c1.c f5893e;

    public v(Context context) {
        this.a = context;
        this.f5891c = 0;
        this.f5892d = 5000L;
        this.f5893e = f.i.a.a.c1.c.a;
    }

    public p0[] a(Handler handler, f.i.a.a.n1.s sVar, f.i.a.a.w0.o oVar, f.i.a.a.i1.k kVar, f.i.a.a.d1.e eVar, @Nullable f.i.a.a.z0.g<f.i.a.a.z0.j> gVar) {
        int i2;
        f.i.a.a.z0.g<f.i.a.a.z0.j> gVar2 = gVar == null ? this.b : gVar;
        ArrayList arrayList = new ArrayList();
        Context context = this.a;
        int i3 = this.f5891c;
        f.i.a.a.c1.c cVar = this.f5893e;
        long j2 = this.f5892d;
        arrayList.add(new f.i.a.a.n1.m(context, cVar, j2, gVar2, false, false, handler, sVar, 50));
        if (i3 != 0) {
            int size = arrayList.size();
            if (i3 == 2) {
                size--;
            }
            try {
                arrayList.add(size, (p0) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, f.i.a.a.n1.s.class, Integer.TYPE).newInstance(Long.valueOf(j2), handler, sVar, 50));
            } catch (ClassNotFoundException unused) {
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating VP9 extension", e2);
            }
        }
        Context context2 = this.a;
        int i4 = this.f5891c;
        f.i.a.a.w0.m[] mVarArr = new f.i.a.a.w0.m[0];
        arrayList.add(new f.i.a.a.w0.z(context2, this.f5893e, gVar2, false, false, handler, oVar, new f.i.a.a.w0.v(f.i.a.a.w0.j.a(context2), mVarArr)));
        if (i4 != 0) {
            int size2 = arrayList.size();
            if (i4 == 2) {
                size2--;
            }
            try {
                try {
                    i2 = size2 + 1;
                    try {
                        arrayList.add(size2, (p0) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, f.i.a.a.w0.o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                    } catch (ClassNotFoundException unused2) {
                        size2 = i2;
                        i2 = size2;
                        try {
                            int i5 = i2 + 1;
                            try {
                                arrayList.add(i2, (p0) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, f.i.a.a.w0.o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                            } catch (ClassNotFoundException unused3) {
                                i2 = i5;
                                i5 = i2;
                                arrayList.add(i5, (p0) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, f.i.a.a.w0.o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
                            }
                            arrayList.add(i5, (p0) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, f.i.a.a.w0.o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
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
                int i52 = i2 + 1;
                arrayList.add(i2, (p0) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, f.i.a.a.w0.o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
            } catch (ClassNotFoundException unused5) {
            }
            try {
                arrayList.add(i52, (p0) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, f.i.a.a.w0.o.class, f.i.a.a.w0.m[].class).newInstance(handler, oVar, mVarArr));
            } catch (ClassNotFoundException unused6) {
            } catch (Exception e5) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e5);
            }
        }
        arrayList.add(new f.i.a.a.i1.l(kVar, handler.getLooper()));
        arrayList.add(new f.i.a.a.d1.f(eVar, handler.getLooper()));
        arrayList.add(new f.i.a.a.n1.t.b());
        return (p0[]) arrayList.toArray(new p0[0]);
    }

    @Deprecated
    public v(Context context, int i2) {
        this.a = context;
        this.f5891c = i2;
        this.f5892d = 5000L;
        this.b = null;
        this.f5893e = f.i.a.a.c1.c.a;
    }
}
