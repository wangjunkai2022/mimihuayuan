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
    public boolean f2706c;

    /* renamed from: d  reason: collision with root package name */
    public j[] f2707d;

    /* renamed from: e  reason: collision with root package name */
    public l[] f2708e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f2709f;

    /* renamed from: g  reason: collision with root package name */
    public final com.tencent.smtt.utils.c f2710g;

    /* renamed from: h  reason: collision with root package name */
    public final a f2711h;

    /* renamed from: i  reason: collision with root package name */
    public final k[] f2712i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f2713j;

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public short a;
        public short b;

        /* renamed from: c  reason: collision with root package name */
        public int f2714c;

        /* renamed from: d  reason: collision with root package name */
        public int f2715d;

        /* renamed from: e  reason: collision with root package name */
        public short f2716e;

        /* renamed from: f  reason: collision with root package name */
        public short f2717f;

        /* renamed from: g  reason: collision with root package name */
        public short f2718g;

        /* renamed from: h  reason: collision with root package name */
        public short f2719h;

        /* renamed from: i  reason: collision with root package name */
        public short f2720i;

        /* renamed from: j  reason: collision with root package name */
        public short f2721j;

        public abstract long a();

        public abstract long b();
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class b extends a {

        /* renamed from: k  reason: collision with root package name */
        public int f2722k;

        /* renamed from: l  reason: collision with root package name */
        public int f2723l;

        /* renamed from: m  reason: collision with root package name */
        public int f2724m;

        @Override // com.tencent.smtt.utils.e.a
        public long a() {
            return this.f2724m;
        }

        @Override // com.tencent.smtt.utils.e.a
        public long b() {
            return this.f2723l;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class c extends j {
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
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class d extends k {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f2729c;

        /* renamed from: d  reason: collision with root package name */
        public int f2730d;

        /* renamed from: e  reason: collision with root package name */
        public int f2731e;

        /* renamed from: f  reason: collision with root package name */
        public int f2732f;

        @Override // com.tencent.smtt.utils.e.k
        public int a() {
            return this.f2730d;
        }

        @Override // com.tencent.smtt.utils.e.k
        public long b() {
            return this.f2729c;
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
        public long f2733k;

        /* renamed from: l  reason: collision with root package name */
        public long f2734l;

        /* renamed from: m  reason: collision with root package name */
        public long f2735m;

        @Override // com.tencent.smtt.utils.e.a
        public long a() {
            return this.f2735m;
        }

        @Override // com.tencent.smtt.utils.e.a
        public long b() {
            return this.f2734l;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class g extends j {
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
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class h extends k {
        public long a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f2740c;

        /* renamed from: d  reason: collision with root package name */
        public long f2741d;

        /* renamed from: e  reason: collision with root package name */
        public long f2742e;

        /* renamed from: f  reason: collision with root package name */
        public long f2743f;

        @Override // com.tencent.smtt.utils.e.k
        public int a() {
            return (int) this.f2741d;
        }

        @Override // com.tencent.smtt.utils.e.k
        public long b() {
            return this.f2740c;
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
        public int f2744g;

        /* renamed from: h  reason: collision with root package name */
        public int f2745h;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class k {

        /* renamed from: g  reason: collision with root package name */
        public int f2746g;

        /* renamed from: h  reason: collision with root package name */
        public int f2747h;

        /* renamed from: i  reason: collision with root package name */
        public int f2748i;

        /* renamed from: j  reason: collision with root package name */
        public int f2749j;

        public abstract int a();

        public abstract long b();
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class l {

        /* renamed from: c  reason: collision with root package name */
        public int f2750c;

        /* renamed from: d  reason: collision with root package name */
        public char f2751d;

        /* renamed from: e  reason: collision with root package name */
        public char f2752e;

        /* renamed from: f  reason: collision with root package name */
        public short f2753f;
    }

    public e(File file) throws IOException, UnknownFormatConversionException {
        com.tencent.smtt.utils.c cVar = new com.tencent.smtt.utils.c(file);
        this.f2710g = cVar;
        cVar.a(this.b);
        if (a()) {
            cVar.a(e());
            boolean d2 = d();
            if (d2) {
                f fVar = new f();
                fVar.a = cVar.a();
                fVar.b = cVar.a();
                fVar.f2714c = cVar.b();
                fVar.f2733k = cVar.c();
                fVar.f2734l = cVar.c();
                fVar.f2735m = cVar.c();
                this.f2711h = fVar;
            } else {
                b bVar = new b();
                bVar.a = cVar.a();
                bVar.b = cVar.a();
                bVar.f2714c = cVar.b();
                bVar.f2722k = cVar.b();
                bVar.f2723l = cVar.b();
                bVar.f2724m = cVar.b();
                this.f2711h = bVar;
            }
            a aVar = this.f2711h;
            aVar.f2715d = cVar.b();
            aVar.f2716e = cVar.a();
            aVar.f2717f = cVar.a();
            aVar.f2718g = cVar.a();
            aVar.f2719h = cVar.a();
            aVar.f2720i = cVar.a();
            aVar.f2721j = cVar.a();
            this.f2712i = new k[aVar.f2720i];
            for (int i2 = 0; i2 < aVar.f2720i; i2++) {
                cVar.a(aVar.a() + (aVar.f2719h * i2));
                if (d2) {
                    h hVar = new h();
                    hVar.f2746g = cVar.b();
                    hVar.f2747h = cVar.b();
                    hVar.a = cVar.c();
                    hVar.b = cVar.c();
                    hVar.f2740c = cVar.c();
                    hVar.f2741d = cVar.c();
                    hVar.f2748i = cVar.b();
                    hVar.f2749j = cVar.b();
                    hVar.f2742e = cVar.c();
                    hVar.f2743f = cVar.c();
                    this.f2712i[i2] = hVar;
                } else {
                    d dVar = new d();
                    dVar.f2746g = cVar.b();
                    dVar.f2747h = cVar.b();
                    dVar.a = cVar.b();
                    dVar.b = cVar.b();
                    dVar.f2729c = cVar.b();
                    dVar.f2730d = cVar.b();
                    dVar.f2748i = cVar.b();
                    dVar.f2749j = cVar.b();
                    dVar.f2731e = cVar.b();
                    dVar.f2732f = cVar.b();
                    this.f2712i[i2] = dVar;
                }
            }
            short s = aVar.f2721j;
            if (s > -1) {
                k[] kVarArr = this.f2712i;
                if (s < kVarArr.length) {
                    k kVar = kVarArr[s];
                    if (kVar.f2747h == 3) {
                        this.f2713j = new byte[kVar.a()];
                        cVar.a(kVar.b());
                        cVar.a(this.f2713j);
                        if (this.f2706c) {
                            f();
                            return;
                        }
                        return;
                    }
                    StringBuilder o = f.b.a.a.a.o("Wrong string section e_shstrndx=");
                    o.append((int) aVar.f2721j);
                    throw new UnknownFormatConversionException(o.toString());
                }
            }
            StringBuilder o2 = f.b.a.a.a.o("Invalid e_shstrndx=");
            o2.append((int) aVar.f2721j);
            throw new UnknownFormatConversionException(o2.toString());
        }
        throw new UnknownFormatConversionException("Invalid elf magic: " + file);
    }

    private void f() throws IOException {
        a aVar = this.f2711h;
        com.tencent.smtt.utils.c cVar = this.f2710g;
        boolean d2 = d();
        k a2 = a(".dynsym");
        if (a2 != null) {
            cVar.a(a2.b());
            int a3 = a2.a() / (d2 ? 24 : 16);
            this.f2708e = new l[a3];
            char[] cArr = new char[1];
            for (int i2 = 0; i2 < a3; i2++) {
                if (d2) {
                    i iVar = new i();
                    iVar.f2750c = cVar.b();
                    cVar.a(cArr);
                    iVar.f2751d = cArr[0];
                    cVar.a(cArr);
                    iVar.f2752e = cArr[0];
                    iVar.a = cVar.c();
                    iVar.b = cVar.c();
                    iVar.f2753f = cVar.a();
                    this.f2708e[i2] = iVar;
                } else {
                    C0016e c0016e = new C0016e();
                    c0016e.f2750c = cVar.b();
                    c0016e.a = cVar.b();
                    c0016e.b = cVar.b();
                    cVar.a(cArr);
                    c0016e.f2751d = cArr[0];
                    cVar.a(cArr);
                    c0016e.f2752e = cArr[0];
                    c0016e.f2753f = cVar.a();
                    this.f2708e[i2] = c0016e;
                }
            }
            k kVar = this.f2712i[a2.f2748i];
            cVar.a(kVar.b());
            byte[] bArr = new byte[kVar.a()];
            this.f2709f = bArr;
            cVar.a(bArr);
        }
        this.f2707d = new j[aVar.f2718g];
        for (int i3 = 0; i3 < aVar.f2718g; i3++) {
            cVar.a(aVar.b() + (aVar.f2717f * i3));
            if (d2) {
                g gVar = new g();
                gVar.f2744g = cVar.b();
                gVar.f2745h = cVar.b();
                gVar.a = cVar.c();
                gVar.b = cVar.c();
                gVar.f2736c = cVar.c();
                gVar.f2737d = cVar.c();
                gVar.f2738e = cVar.c();
                gVar.f2739f = cVar.c();
                this.f2707d[i3] = gVar;
            } else {
                c cVar2 = new c();
                cVar2.f2744g = cVar.b();
                cVar2.f2745h = cVar.b();
                cVar2.a = cVar.b();
                cVar2.b = cVar.b();
                cVar2.f2725c = cVar.b();
                cVar2.f2726d = cVar.b();
                cVar2.f2727e = cVar.b();
                cVar2.f2728f = cVar.b();
                this.f2707d[i3] = cVar2;
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
        this.f2710g.close();
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
        for (k kVar : this.f2712i) {
            if (str.equals(a(kVar.f2746g))) {
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
        while (this.f2713j[i3] != 0) {
            i3++;
        }
        return new String(this.f2713j, i2, i3 - i2);
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
