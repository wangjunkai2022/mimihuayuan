package f.e.a.j.t.e.e;

import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import i.e0;
import i.f;
import i.g;
import i.i0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: CustomDataFetcher2.java */
/* loaded from: classes.dex */
public class b implements f.d.a.o.m.d<InputStream>, g {

    /* renamed from: g  reason: collision with root package name */
    public static final String f4021g = f.e.a.e.a("eAkrEB8Df1YHBVwCCg==");
    public final f.a a;
    public final f.d.a.o.o.g b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f4022c;

    /* renamed from: d  reason: collision with root package name */
    public i0 f4023d;

    /* renamed from: e  reason: collision with root package name */
    public d.a<? super InputStream> f4024e;

    /* renamed from: f  reason: collision with root package name */
    public volatile f f4025f;

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
            if (this.f4022c != null) {
                this.f4022c.close();
            }
        } catch (IOException unused) {
        }
        i0 i0Var = this.f4023d;
        if (i0Var != null) {
            i0Var.close();
        }
        this.f4024e = null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|4|5|6|(5:7|8|(2:9|(1:12)(1:11))|13|(2:14|15))|17|18|(1:20)(2:24|(1:26))|21|22) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c2, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c3, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0082 A[Catch: Exception -> 0x00c2, TryCatch #7 {Exception -> 0x00c2, blocks: (B:36:0x006e, B:38:0x0082, B:39:0x0091, B:41:0x00a3), top: B:56:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0091 A[Catch: Exception -> 0x00c2, TryCatch #7 {Exception -> 0x00c2, blocks: (B:36:0x006e, B:38:0x0082, B:39:0x0091, B:41:0x00a3), top: B:56:0x006e }] */
    @Override // i.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(@androidx.annotation.NonNull i.f r6, @androidx.annotation.NonNull i.h0 r7) {
        /*
            r5 = this;
            i.i0 r6 = r7.f6527h
            r5.f4023d = r6
            boolean r6 = r7.g()
            if (r6 == 0) goto Ld5
            i.i0 r6 = r5.f4023d
            java.lang.String r7 = "Argument must not be null"
            c.a.a.b.g.h.s(r6, r7)
            long r6 = r6.g()
            i.i0 r0 = r5.f4023d
            java.io.InputStream r0 = r0.d()
            f.d.a.u.b r1 = new f.d.a.u.b
            r1.<init>(r0, r6)
            r5.f4022c = r1
            r6 = 0
            r7 = 0
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L5d
            r0.<init>()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L5d
            r6 = 1024(0x400, float:1.435E-42)
            byte[] r6 = new byte[r6]     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
        L2d:
            int r2 = r1.read(r6)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            r3 = -1
            if (r2 != r3) goto L47
            java.lang.String r6 = "YjYlSVM="
            java.lang.String r6 = f.e.a.e.a(r6)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            java.lang.String r6 = r0.toString(r6)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            r0.close()     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L4b
            goto L6e
        L42:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            goto L6e
        L47:
            r0.write(r6, r7, r2)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            goto L2d
        L4b:
            r6 = move-exception
            r7 = r6
            r6 = r0
            goto L52
        L4f:
            r6 = move-exception
            goto L61
        L51:
            r7 = move-exception
        L52:
            if (r6 == 0) goto L5c
            r6.close()     // Catch: java.io.IOException -> L58
            goto L5c
        L58:
            r6 = move-exception
            r6.printStackTrace()
        L5c:
            throw r7
        L5d:
            r0 = move-exception
            r4 = r0
            r0 = r6
            r6 = r4
        L61:
            r6.printStackTrace()
            r0.close()     // Catch: java.io.IOException -> L68
            goto L6c
        L68:
            r6 = move-exception
            r6.printStackTrace()
        L6c:
            java.lang.String r6 = ""
        L6e:
            f.d.a.o.o.g r0 = r5.b     // Catch: java.lang.Exception -> Lc2
            java.lang.String r0 = r0.e()     // Catch: java.lang.Exception -> Lc2
            java.lang.String r1 = "GRECAg5dTUsH"
            java.lang.String r1 = f.e.a.e.a(r1)     // Catch: java.lang.Exception -> Lc2
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Exception -> Lc2
            r1 = 44
            if (r0 == 0) goto L91
            java.lang.String r6 = r5.g(r6)     // Catch: java.lang.Exception -> Lc2
            int r0 = r6.indexOf(r1)     // Catch: java.lang.Exception -> Lc2
            int r0 = r0 + 1
            java.lang.String r6 = r6.substring(r0)     // Catch: java.lang.Exception -> Lc2
            goto Lc6
        L91:
            f.d.a.o.o.g r0 = r5.b     // Catch: java.lang.Exception -> Lc2
            java.lang.String r0 = r0.e()     // Catch: java.lang.Exception -> Lc2
            java.lang.String r2 = "GQcNB0UHQUc="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: java.lang.Exception -> Lc2
            boolean r0 = r0.contains(r2)     // Catch: java.lang.Exception -> Lc2
            if (r0 == 0) goto Lc6
            java.lang.String r0 = "AlBWVltBXwdCXw0CSFxSCg=="
            java.lang.String r0 = f.e.a.e.a(r0)     // Catch: java.lang.Exception -> Lc2
            java.lang.String r2 = "AVBWVltBXwdCXw0CSFxSUw=="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: java.lang.Exception -> Lc2
            java.lang.String r6 = f.e.a.j.t.e.b.l(r6, r0, r2)     // Catch: java.lang.Exception -> Lc2
            java.lang.String r6 = r5.g(r6)     // Catch: java.lang.Exception -> Lc2
            int r0 = r6.indexOf(r1)     // Catch: java.lang.Exception -> Lc2
            int r0 = r0 + 1
            java.lang.String r6 = r6.substring(r0)     // Catch: java.lang.Exception -> Lc2
            goto Lc6
        Lc2:
            r0 = move-exception
            r0.printStackTrace()
        Lc6:
            byte[] r6 = android.util.Base64.decode(r6, r7)
            f.d.a.o.m.d$a<? super java.io.InputStream> r7 = r5.f4024e
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r6)
            r7.d(r0)
            goto Le3
        Ld5:
            f.d.a.o.m.d$a<? super java.io.InputStream> r6 = r5.f4024e
            f.d.a.o.e r0 = new f.d.a.o.e
            java.lang.String r1 = r7.f6523d
            int r7 = r7.f6524e
            r0.<init>(r1, r7)
            r6.c(r0)
        Le3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.e.a.j.t.e.e.b.c(i.f, i.h0):void");
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        f fVar = this.f4025f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // i.g
    public void d(@NonNull f fVar, @NonNull IOException iOException) {
        if (Log.isLoggable(f4021g, 3)) {
            f.e.a.e.a("eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe");
        }
        this.f4024e.c(iOException);
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public f.d.a.o.a e() {
        return f.d.a.o.a.REMOTE;
    }

    @Override // f.d.a.o.m.d
    public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super InputStream> aVar) {
        e0.a aVar2 = new e0.a();
        aVar2.i(this.b.e());
        for (Map.Entry<String, String> entry : this.b.d().entrySet()) {
            aVar2.a(entry.getKey(), entry.getValue());
        }
        e0 b = aVar2.b();
        this.f4024e = aVar;
        this.f4025f = this.a.a(b);
        this.f4025f.W(this);
    }

    public final String g(String str) {
        try {
            return str.replace(f.e.a.e.a("HUg="), f.e.a.e.a("Cg==")).replace(f.e.a.e.a("E0Y="), f.e.a.e.a("fQ==")).replace(f.e.a.e.a("FEE="), f.e.a.e.a("fw==")).replace(f.e.a.e.a("aTw="), f.e.a.e.a("dg=="));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
