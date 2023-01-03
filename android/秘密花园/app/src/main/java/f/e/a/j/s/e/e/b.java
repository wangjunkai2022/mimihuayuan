package f.e.a.j.s.e.e;

import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.a;
import f.d.a.o.m.d;
import f.e.a.e;
import i.e0;
import i.f;
import i.g;
import i.i0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: CustomDataFetcher2.java */
/* loaded from: classes.dex */
public class b implements d<InputStream>, g {

    /* renamed from: g  reason: collision with root package name */
    public static final String f3946g = e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3947c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f3948d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f3949e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f3950f;

    public b(f.a aVar, f.d.a.o.o.g gVar) {
        this.a = aVar;
        this.b = gVar;
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        try {
            if (this.f3947c != null) {
                this.f3947c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f3948d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f3949e = null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0082 A[Catch: Exception -> 0x00c2, TryCatch #7 {Exception -> 0x00c2, blocks: (B:31:0x006e, B:33:0x0082, B:34:0x0091, B:36:0x00a3), top: B:50:0x006e }] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0091 A[Catch: Exception -> 0x00c2, TryCatch #7 {Exception -> 0x00c2, blocks: (B:31:0x006e, B:33:0x0082, B:34:0x0091, B:36:0x00a3), top: B:50:0x006e }] */
    @Override // i.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(@androidx.annotation.NonNull i.f r6, @androidx.annotation.NonNull i.h0 r7) {
        /*
            r5 = this;
            i.i0 r6 = r7.f6452h
            r5.f3948d = r6
            boolean r6 = r7.g()
            if (r6 == 0) goto L_0x00d5
            i.i0 r6 = r5.f3948d
            java.lang.String r7 = "Argument must not be null"
            c.a.a.b.g.h.s(r6, r7)
            long r6 = r6.g()
            i.i0 r0 = r5.f3948d
            java.io.InputStream r0 = r0.d()
            f.d.a.u.b r1 = new f.d.a.u.b
            r1.<init>(r0, r6)
            r5.f3947c = r1
            r6 = 0
            r7 = 0
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: IOException -> 0x005d, all -> 0x0051
            r0.<init>()     // Catch: IOException -> 0x005d, all -> 0x0051
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: IOException -> 0x004f, all -> 0x004b
        L_0x002d:
            int r2 = r1.read(r6)     // Catch: IOException -> 0x004f, all -> 0x004b
            r3 = -1
            if (r2 != r3) goto L_0x0047
            java.lang.String r6 = "YjYlSVM="
            java.lang.String r6 = f.e.a.e.a(r6)     // Catch: IOException -> 0x004f, all -> 0x004b
            java.lang.String r6 = r0.toString(r6)     // Catch: IOException -> 0x004f, all -> 0x004b
            r0.close()     // Catch: IOException -> 0x0042, all -> 0x004b
            goto L_0x006e
        L_0x0042:
            r1 = move-exception
            r1.printStackTrace()     // Catch: IOException -> 0x004f, all -> 0x004b
            goto L_0x006e
        L_0x0047:
            r0.write(r6, r7, r2)     // Catch: IOException -> 0x004f, all -> 0x004b
            goto L_0x002d
        L_0x004b:
            r6 = move-exception
            r7 = r6
            r6 = r0
            goto L_0x0052
        L_0x004f:
            r6 = move-exception
            goto L_0x0061
        L_0x0051:
            r7 = move-exception
        L_0x0052:
            if (r6 == 0) goto L_0x005c
            r6.close()     // Catch: IOException -> 0x0058
            goto L_0x005c
        L_0x0058:
            r6 = move-exception
            r6.printStackTrace()
        L_0x005c:
            throw r7
        L_0x005d:
            r0 = move-exception
            r4 = r0
            r0 = r6
            r6 = r4
        L_0x0061:
            r6.printStackTrace()
            r0.close()     // Catch: IOException -> 0x0068
            goto L_0x006c
        L_0x0068:
            r6 = move-exception
            r6.printStackTrace()
        L_0x006c:
            java.lang.String r6 = ""
        L_0x006e:
            f.d.a.o.o.g r0 = r5.b     // Catch: Exception -> 0x00c2
            java.lang.String r0 = r0.e()     // Catch: Exception -> 0x00c2
            java.lang.String r1 = "GRECAg5dTUsH"
            java.lang.String r1 = f.e.a.e.a(r1)     // Catch: Exception -> 0x00c2
            boolean r0 = r0.contains(r1)     // Catch: Exception -> 0x00c2
            r1 = 44
            if (r0 == 0) goto L_0x0091
            java.lang.String r6 = r5.g(r6)     // Catch: Exception -> 0x00c2
            int r0 = r6.indexOf(r1)     // Catch: Exception -> 0x00c2
            int r0 = r0 + 1
            java.lang.String r6 = r6.substring(r0)     // Catch: Exception -> 0x00c2
            goto L_0x00c6
        L_0x0091:
            f.d.a.o.o.g r0 = r5.b     // Catch: Exception -> 0x00c2
            java.lang.String r0 = r0.e()     // Catch: Exception -> 0x00c2
            java.lang.String r2 = "GQcNB0UHQUc="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: Exception -> 0x00c2
            boolean r0 = r0.contains(r2)     // Catch: Exception -> 0x00c2
            if (r0 == 0) goto L_0x00c6
            java.lang.String r0 = "AlBWVltBXwdCXw0CSFxSCg=="
            java.lang.String r0 = f.e.a.e.a(r0)     // Catch: Exception -> 0x00c2
            java.lang.String r2 = "AVBWVltBXwdCXw0CSFxSUw=="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: Exception -> 0x00c2
            java.lang.String r6 = f.e.a.j.s.e.b.l(r6, r0, r2)     // Catch: Exception -> 0x00c2
            java.lang.String r6 = r5.g(r6)     // Catch: Exception -> 0x00c2
            int r0 = r6.indexOf(r1)     // Catch: Exception -> 0x00c2
            int r0 = r0 + 1
            java.lang.String r6 = r6.substring(r0)     // Catch: Exception -> 0x00c2
            goto L_0x00c6
        L_0x00c2:
            r0 = move-exception
            r0.printStackTrace()
        L_0x00c6:
            byte[] r6 = android.util.Base64.decode(r6, r7)
            f.d.a.o.m.d$a<? super java.io.InputStream> r7 = r5.f3949e
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r6)
            r7.d(r0)
            goto L_0x00e3
        L_0x00d5:
            f.d.a.o.m.d$a<? super java.io.InputStream> r6 = r5.f3949e
            f.d.a.o.e r0 = new f.d.a.o.e
            java.lang.String r1 = r7.f6448d
            int r7 = r7.f6449e
            r0.<init>(r1, r7)
            r6.c(r0)
        L_0x00e3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.s.e.e.b.c(i.f, i.h0):void");
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f3950f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f3946g, 3)) {
            e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f3949e.c(iOException);
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public a e() {
        return a.REMOTE;
    }

    @Override // f.d.a.o.m.d
    public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super InputStream> aVar) {
        e0.a aVar2 = new e0.a();
        aVar2.i(this.b.e());
        for (Map.Entry<String, String> entry : this.b.d().entrySet()) {
            aVar2.a(entry.getKey(), entry.getValue());
        }
        e0 b = aVar2.b();
        this.f3949e = aVar;
        this.f3950f = this.a.a(b);
        this.f3950f.W(this);
    }

    public final String g(String str) {
        try {
            return str.replace(e.a("HUg="), e.a("Cg==")).replace(e.a("E0Y="), e.a("fQ==")).replace(e.a("FEE="), e.a("fw==")).replace(e.a("aTw="), e.a("dg=="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
