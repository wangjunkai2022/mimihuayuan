package com.tencent.smtt.utils;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UnknownFormatConversionException;

/* compiled from: Elf.java */
/* loaded from: classes.dex */
public class e implements Closeable {
    public static final char[] a = {127, 'E', 'L', 'F', 0};
    public final char[] b = new char[16];

    /* renamed from: c  reason: collision with root package name */
    public boolean f2702c;

    /* renamed from: d  reason: collision with root package name */
    public j[] f2703d;

    /* renamed from: e  reason: collision with root package name */
    public l[] f2704e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f2705f;

    /* renamed from: g  reason: collision with root package name */
    public final com.tencent.smtt.utils.c f2706g;

    /* renamed from: h  reason: collision with root package name */
    public final a f2707h;

    /* renamed from: i  reason: collision with root package name */
    public final k[] f2708i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f2709j;

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public short a;
        public short b;

        /* renamed from: c  reason: collision with root package name */
        public int f2710c;

        /* renamed from: d  reason: collision with root package name */
        public int f2711d;

        /* renamed from: e  reason: collision with root package name */
        public short f2712e;

        /* renamed from: f  reason: collision with root package name */
        public short f2713f;

        /* renamed from: g  reason: collision with root package name */
        public short f2714g;

        /* renamed from: h  reason: collision with root package name */
        public short f2715h;

        /* renamed from: i  reason: collision with root package name */
        public short f2716i;

        /* renamed from: j  reason: collision with root package name */
        public short f2717j;

        public abstract long a();

        public abstract long b();
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class b extends a {

        /* renamed from: k  reason: collision with root package name */
        public int f2718k;

        /* renamed from: l  reason: collision with root package name */
        public int f2719l;

        /* renamed from: m  reason: collision with root package name */
        public int f2720m;

        @Override // com.tencent.smtt.utils.e.a
        public long a() {
            return this.f2720m;
        }

        @Override // com.tencent.smtt.utils.e.a
        public long b() {
            return this.f2719l;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class c extends j {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f2721c;

        /* renamed from: d  reason: collision with root package name */
        public int f2722d;

        /* renamed from: e  reason: collision with root package name */
        public int f2723e;

        /* renamed from: f  reason: collision with root package name */
        public int f2724f;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class d extends k {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f2725c;

        /* renamed from: d  reason: collision with root package name */
        public int f2726d;

        /* renamed from: e  reason: collision with root package name */
        public int f2727e;

        /* renamed from: f  reason: collision with root package name */
        public int f2728f;

        @Override // com.tencent.smtt.utils.e.k
        public int a() {
            return this.f2726d;
        }

        @Override // com.tencent.smtt.utils.e.k
        public long b() {
            return this.f2725c;
        }
    }

    /* compiled from: Elf.java */
    /* renamed from: com.tencent.smtt.utils.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0016e extends l {
        public int a;
        public int b;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class f extends a {

        /* renamed from: k  reason: collision with root package name */
        public long f2729k;

        /* renamed from: l  reason: collision with root package name */
        public long f2730l;

        /* renamed from: m  reason: collision with root package name */
        public long f2731m;

        @Override // com.tencent.smtt.utils.e.a
        public long a() {
            return this.f2731m;
        }

        @Override // com.tencent.smtt.utils.e.a
        public long b() {
            return this.f2730l;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class g extends j {
        public long a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f2732c;

        /* renamed from: d  reason: collision with root package name */
        public long f2733d;

        /* renamed from: e  reason: collision with root package name */
        public long f2734e;

        /* renamed from: f  reason: collision with root package name */
        public long f2735f;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class h extends k {
        public long a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f2736c;

        /* renamed from: d  reason: collision with root package name */
        public long f2737d;

        /* renamed from: e  reason: collision with root package name */
        public long f2738e;

        /* renamed from: f  reason: collision with root package name */
        public long f2739f;

        @Override // com.tencent.smtt.utils.e.k
        public int a() {
            return (int) this.f2737d;
        }

        @Override // com.tencent.smtt.utils.e.k
        public long b() {
            return this.f2736c;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class i extends l {
        public long a;
        public long b;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class j {

        /* renamed from: g  reason: collision with root package name */
        public int f2740g;

        /* renamed from: h  reason: collision with root package name */
        public int f2741h;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class k {

        /* renamed from: g  reason: collision with root package name */
        public int f2742g;

        /* renamed from: h  reason: collision with root package name */
        public int f2743h;

        /* renamed from: i  reason: collision with root package name */
        public int f2744i;

        /* renamed from: j  reason: collision with root package name */
        public int f2745j;

        public abstract int a();

        public abstract long b();
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class l {

        /* renamed from: c  reason: collision with root package name */
        public int f2746c;

        /* renamed from: d  reason: collision with root package name */
        public char f2747d;

        /* renamed from: e  reason: collision with root package name */
        public char f2748e;

        /* renamed from: f  reason: collision with root package name */
        public short f2749f;
    }

    public e(File file) throws IOException, UnknownFormatConversionException {
        com.tencent.smtt.utils.c cVar = new com.tencent.smtt.utils.c(file);
        this.f2706g = cVar;
        cVar.a(this.b);
        if (a()) {
            cVar.a(e());
            boolean d2 = d();
            if (d2) {
                f fVar = new f();
                fVar.a = cVar.a();
                fVar.b = cVar.a();
                fVar.f2710c = cVar.b();
                fVar.f2729k = cVar.c();
                fVar.f2730l = cVar.c();
                fVar.f2731m = cVar.c();
                this.f2707h = fVar;
            } else {
                b bVar = new b();
                bVar.a = cVar.a();
                bVar.b = cVar.a();
                bVar.f2710c = cVar.b();
                bVar.f2718k = cVar.b();
                bVar.f2719l = cVar.b();
                bVar.f2720m = cVar.b();
                this.f2707h = bVar;
            }
            a aVar = this.f2707h;
            aVar.f2711d = cVar.b();
            aVar.f2712e = cVar.a();
            aVar.f2713f = cVar.a();
            aVar.f2714g = cVar.a();
            aVar.f2715h = cVar.a();
            aVar.f2716i = cVar.a();
            aVar.f2717j = cVar.a();
            this.f2708i = new k[aVar.f2716i];
            for (int i2 = 0; i2 < aVar.f2716i; i2++) {
                cVar.a(aVar.a() + (aVar.f2715h * i2));
                if (d2) {
                    h hVar = new h();
                    hVar.f2742g = cVar.b();
                    hVar.f2743h = cVar.b();
                    hVar.a = cVar.c();
                    hVar.b = cVar.c();
                    hVar.f2736c = cVar.c();
                    hVar.f2737d = cVar.c();
                    hVar.f2744i = cVar.b();
                    hVar.f2745j = cVar.b();
                    hVar.f2738e = cVar.c();
                    hVar.f2739f = cVar.c();
                    this.f2708i[i2] = hVar;
                } else {
                    d dVar = new d();
                    dVar.f2742g = cVar.b();
                    dVar.f2743h = cVar.b();
                    dVar.a = cVar.b();
                    dVar.b = cVar.b();
                    dVar.f2725c = cVar.b();
                    dVar.f2726d = cVar.b();
                    dVar.f2744i = cVar.b();
                    dVar.f2745j = cVar.b();
                    dVar.f2727e = cVar.b();
                    dVar.f2728f = cVar.b();
                    this.f2708i[i2] = dVar;
                }
            }
            short s = aVar.f2717j;
            if (s > -1) {
                k[] kVarArr = this.f2708i;
                if (s < kVarArr.length) {
                    k kVar = kVarArr[s];
                    if (kVar.f2743h == 3) {
                        this.f2709j = new byte[kVar.a()];
                        cVar.a(kVar.b());
                        cVar.a(this.f2709j);
                        if (this.f2702c) {
                            f();
                            return;
                        }
                        return;
                    }
                    StringBuilder o = f.b.a.a.a.o("Wrong string section e_shstrndx=");
                    o.append((int) aVar.f2717j);
                    throw new UnknownFormatConversionException(o.toString());
                }
            }
            StringBuilder o2 = f.b.a.a.a.o("Invalid e_shstrndx=");
            o2.append((int) aVar.f2717j);
            throw new UnknownFormatConversionException(o2.toString());
        }
        throw new UnknownFormatConversionException("Invalid elf magic: " + file);
    }

    private void f() throws IOException {
        a aVar = this.f2707h;
        com.tencent.smtt.utils.c cVar = this.f2706g;
        boolean d2 = d();
        k a2 = a(".dynsym");
        if (a2 != null) {
            cVar.a(a2.b());
            int a3 = a2.a() / (d2 ? 24 : 16);
            this.f2704e = new l[a3];
            char[] cArr = new char[1];
            for (int i2 = 0; i2 < a3; i2++) {
                if (d2) {
                    i iVar = new i();
                    iVar.f2746c = cVar.b();
                    cVar.a(cArr);
                    iVar.f2747d = cArr[0];
                    cVar.a(cArr);
                    iVar.f2748e = cArr[0];
                    iVar.a = cVar.c();
                    iVar.b = cVar.c();
                    iVar.f2749f = cVar.a();
                    this.f2704e[i2] = iVar;
                } else {
                    C0016e c0016e = new C0016e();
                    c0016e.f2746c = cVar.b();
                    c0016e.a = cVar.b();
                    c0016e.b = cVar.b();
                    cVar.a(cArr);
                    c0016e.f2747d = cArr[0];
                    cVar.a(cArr);
                    c0016e.f2748e = cArr[0];
                    c0016e.f2749f = cVar.a();
                    this.f2704e[i2] = c0016e;
                }
            }
            k kVar = this.f2708i[a2.f2744i];
            cVar.a(kVar.b());
            byte[] bArr = new byte[kVar.a()];
            this.f2705f = bArr;
            cVar.a(bArr);
        }
        this.f2703d = new j[aVar.f2714g];
        for (int i3 = 0; i3 < aVar.f2714g; i3++) {
            cVar.a(aVar.b() + (aVar.f2713f * i3));
            if (d2) {
                g gVar = new g();
                gVar.f2740g = cVar.b();
                gVar.f2741h = cVar.b();
                gVar.a = cVar.c();
                gVar.b = cVar.c();
                gVar.f2732c = cVar.c();
                gVar.f2733d = cVar.c();
                gVar.f2734e = cVar.c();
                gVar.f2735f = cVar.c();
                this.f2703d[i3] = gVar;
            } else {
                c cVar2 = new c();
                cVar2.f2740g = cVar.b();
                cVar2.f2741h = cVar.b();
                cVar2.a = cVar.b();
                cVar2.b = cVar.b();
                cVar2.f2721c = cVar.b();
                cVar2.f2722d = cVar.b();
                cVar2.f2723e = cVar.b();
                cVar2.f2724f = cVar.b();
                this.f2703d[i3] = cVar2;
            }
        }
    }

    public static boolean g() {
        String property = System.getProperty("java.vm.version");
        return property != null && property.startsWith("2");
    }

    public final boolean a() {
        return this.b[0] == a[0];
    }

    public final char b() {
        return this.b[4];
    }

    public final char c() {
        return this.b[5];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2706g.close();
    }

    public final boolean d() {
        return b() == 2;
    }

    public final boolean e() {
        return c() == 1;
    }

    public static boolean b(File file) {
        if (g() && a(file)) {
            try {
                new e(file);
                return true;
            } catch (IOException e2) {
                String str = "checkElfFile IOException: " + e2;
                return false;
            } catch (UnknownFormatConversionException e3) {
                String str2 = "checkElfFile UnknownFormatConversionException: " + e3;
                return true;
            } catch (Throwable th) {
                f.b.a.a.a.z("checkElfFile Throwable: ", th);
                return true;
            }
        }
        return true;
    }

    public final k a(String str) {
        k[] kVarArr;
        for (k kVar : this.f2708i) {
            if (str.equals(a(kVar.f2742g))) {
                return kVar;
            }
        }
        return null;
    }

    public final String a(int i2) {
        if (i2 == 0) {
            return "SHN_UNDEF";
        }
        int i3 = i2;
        while (this.f2709j[i3] != 0) {
            i3++;
        }
        return new String(this.f2709j, i2, i3 - i2);
    }

    public static boolean a(File file) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            long readInt = randomAccessFile.readInt();
            randomAccessFile.close();
            return readInt == 2135247942;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
