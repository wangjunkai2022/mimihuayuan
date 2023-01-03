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
    public boolean f2627c;

    /* renamed from: d  reason: collision with root package name */
    public j[] f2628d;

    /* renamed from: e  reason: collision with root package name */
    public l[] f2629e;

    /* renamed from: f  reason: collision with root package name */
    public byte[] f2630f;

    /* renamed from: g  reason: collision with root package name */
    public final com.tencent.smtt.utils.c f2631g;

    /* renamed from: h  reason: collision with root package name */
    public final a f2632h;

    /* renamed from: i  reason: collision with root package name */
    public final k[] f2633i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f2634j;

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public short a;
        public short b;

        /* renamed from: c  reason: collision with root package name */
        public int f2635c;

        /* renamed from: d  reason: collision with root package name */
        public int f2636d;

        /* renamed from: e  reason: collision with root package name */
        public short f2637e;

        /* renamed from: f  reason: collision with root package name */
        public short f2638f;

        /* renamed from: g  reason: collision with root package name */
        public short f2639g;

        /* renamed from: h  reason: collision with root package name */
        public short f2640h;

        /* renamed from: i  reason: collision with root package name */
        public short f2641i;

        /* renamed from: j  reason: collision with root package name */
        public short f2642j;

        public abstract long a();

        public abstract long b();
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class b extends a {

        /* renamed from: k  reason: collision with root package name */
        public int f2643k;

        /* renamed from: l  reason: collision with root package name */
        public int f2644l;

        /* renamed from: m  reason: collision with root package name */
        public int f2645m;

        @Override // com.tencent.smtt.utils.e.a
        public long a() {
            return this.f2645m;
        }

        @Override // com.tencent.smtt.utils.e.a
        public long b() {
            return this.f2644l;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class c extends j {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f2646c;

        /* renamed from: d  reason: collision with root package name */
        public int f2647d;

        /* renamed from: e  reason: collision with root package name */
        public int f2648e;

        /* renamed from: f  reason: collision with root package name */
        public int f2649f;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class d extends k {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f2650c;

        /* renamed from: d  reason: collision with root package name */
        public int f2651d;

        /* renamed from: e  reason: collision with root package name */
        public int f2652e;

        /* renamed from: f  reason: collision with root package name */
        public int f2653f;

        @Override // com.tencent.smtt.utils.e.k
        public int a() {
            return this.f2651d;
        }

        @Override // com.tencent.smtt.utils.e.k
        public long b() {
            return this.f2650c;
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
        public long f2654k;

        /* renamed from: l  reason: collision with root package name */
        public long f2655l;

        /* renamed from: m  reason: collision with root package name */
        public long f2656m;

        @Override // com.tencent.smtt.utils.e.a
        public long a() {
            return this.f2656m;
        }

        @Override // com.tencent.smtt.utils.e.a
        public long b() {
            return this.f2655l;
        }
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class g extends j {
        public long a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f2657c;

        /* renamed from: d  reason: collision with root package name */
        public long f2658d;

        /* renamed from: e  reason: collision with root package name */
        public long f2659e;

        /* renamed from: f  reason: collision with root package name */
        public long f2660f;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static class h extends k {
        public long a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public long f2661c;

        /* renamed from: d  reason: collision with root package name */
        public long f2662d;

        /* renamed from: e  reason: collision with root package name */
        public long f2663e;

        /* renamed from: f  reason: collision with root package name */
        public long f2664f;

        @Override // com.tencent.smtt.utils.e.k
        public int a() {
            return (int) this.f2662d;
        }

        @Override // com.tencent.smtt.utils.e.k
        public long b() {
            return this.f2661c;
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
        public int f2665g;

        /* renamed from: h  reason: collision with root package name */
        public int f2666h;
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class k {

        /* renamed from: g  reason: collision with root package name */
        public int f2667g;

        /* renamed from: h  reason: collision with root package name */
        public int f2668h;

        /* renamed from: i  reason: collision with root package name */
        public int f2669i;

        /* renamed from: j  reason: collision with root package name */
        public int f2670j;

        public abstract int a();

        public abstract long b();
    }

    /* compiled from: Elf.java */
    /* loaded from: classes.dex */
    public static abstract class l {

        /* renamed from: c  reason: collision with root package name */
        public int f2671c;

        /* renamed from: d  reason: collision with root package name */
        public char f2672d;

        /* renamed from: e  reason: collision with root package name */
        public char f2673e;

        /* renamed from: f  reason: collision with root package name */
        public short f2674f;
    }

    public e(File file) throws IOException, UnknownFormatConversionException {
        com.tencent.smtt.utils.c cVar = new com.tencent.smtt.utils.c(file);
        this.f2631g = cVar;
        cVar.a(this.b);
        if (a()) {
            cVar.a(e());
            boolean d2 = d();
            if (d2) {
                f fVar = new f();
                fVar.a = cVar.a();
                fVar.b = cVar.a();
                fVar.f2635c = cVar.b();
                fVar.f2654k = cVar.c();
                fVar.f2655l = cVar.c();
                fVar.f2656m = cVar.c();
                this.f2632h = fVar;
            } else {
                b bVar = new b();
                bVar.a = cVar.a();
                bVar.b = cVar.a();
                bVar.f2635c = cVar.b();
                bVar.f2643k = cVar.b();
                bVar.f2644l = cVar.b();
                bVar.f2645m = cVar.b();
                this.f2632h = bVar;
            }
            a aVar = this.f2632h;
            aVar.f2636d = cVar.b();
            aVar.f2637e = cVar.a();
            aVar.f2638f = cVar.a();
            aVar.f2639g = cVar.a();
            aVar.f2640h = cVar.a();
            aVar.f2641i = cVar.a();
            aVar.f2642j = cVar.a();
            this.f2633i = new k[aVar.f2641i];
            for (int i2 = 0; i2 < aVar.f2641i; i2++) {
                cVar.a(aVar.a() + (aVar.f2640h * i2));
                if (d2) {
                    h hVar = new h();
                    hVar.f2667g = cVar.b();
                    hVar.f2668h = cVar.b();
                    hVar.a = cVar.c();
                    hVar.b = cVar.c();
                    hVar.f2661c = cVar.c();
                    hVar.f2662d = cVar.c();
                    hVar.f2669i = cVar.b();
                    hVar.f2670j = cVar.b();
                    hVar.f2663e = cVar.c();
                    hVar.f2664f = cVar.c();
                    this.f2633i[i2] = hVar;
                } else {
                    d dVar = new d();
                    dVar.f2667g = cVar.b();
                    dVar.f2668h = cVar.b();
                    dVar.a = cVar.b();
                    dVar.b = cVar.b();
                    dVar.f2650c = cVar.b();
                    dVar.f2651d = cVar.b();
                    dVar.f2669i = cVar.b();
                    dVar.f2670j = cVar.b();
                    dVar.f2652e = cVar.b();
                    dVar.f2653f = cVar.b();
                    this.f2633i[i2] = dVar;
                }
            }
            short s = aVar.f2642j;
            if (s > -1) {
                k[] kVarArr = this.f2633i;
                if (s < kVarArr.length) {
                    k kVar = kVarArr[s];
                    if (kVar.f2668h == 3) {
                        this.f2634j = new byte[kVar.a()];
                        cVar.a(kVar.b());
                        cVar.a(this.f2634j);
                        if (this.f2627c) {
                            f();
                            return;
                        }
                        return;
                    }
                    StringBuilder o = f.b.a.a.a.o("Wrong string section e_shstrndx=");
                    o.append((int) aVar.f2642j);
                    throw new UnknownFormatConversionException(o.toString());
                }
            }
            StringBuilder o2 = f.b.a.a.a.o("Invalid e_shstrndx=");
            o2.append((int) aVar.f2642j);
            throw new UnknownFormatConversionException(o2.toString());
        }
        throw new UnknownFormatConversionException("Invalid elf magic: " + file);
    }

    private void f() throws IOException {
        a aVar = this.f2632h;
        com.tencent.smtt.utils.c cVar = this.f2631g;
        boolean d2 = d();
        k a2 = a(".dynsym");
        if (a2 != null) {
            cVar.a(a2.b());
            int a3 = a2.a() / (d2 ? 24 : 16);
            this.f2629e = new l[a3];
            char[] cArr = new char[1];
            for (int i2 = 0; i2 < a3; i2++) {
                if (d2) {
                    i iVar = new i();
                    iVar.f2671c = cVar.b();
                    cVar.a(cArr);
                    iVar.f2672d = cArr[0];
                    cVar.a(cArr);
                    iVar.f2673e = cArr[0];
                    iVar.a = cVar.c();
                    iVar.b = cVar.c();
                    iVar.f2674f = cVar.a();
                    this.f2629e[i2] = iVar;
                } else {
                    C0016e c0016e = new C0016e();
                    c0016e.f2671c = cVar.b();
                    c0016e.a = cVar.b();
                    c0016e.b = cVar.b();
                    cVar.a(cArr);
                    c0016e.f2672d = cArr[0];
                    cVar.a(cArr);
                    c0016e.f2673e = cArr[0];
                    c0016e.f2674f = cVar.a();
                    this.f2629e[i2] = c0016e;
                }
            }
            k kVar = this.f2633i[a2.f2669i];
            cVar.a(kVar.b());
            byte[] bArr = new byte[kVar.a()];
            this.f2630f = bArr;
            cVar.a(bArr);
        }
        this.f2628d = new j[aVar.f2639g];
        for (int i3 = 0; i3 < aVar.f2639g; i3++) {
            cVar.a(aVar.b() + (aVar.f2638f * i3));
            if (d2) {
                g gVar = new g();
                gVar.f2665g = cVar.b();
                gVar.f2666h = cVar.b();
                gVar.a = cVar.c();
                gVar.b = cVar.c();
                gVar.f2657c = cVar.c();
                gVar.f2658d = cVar.c();
                gVar.f2659e = cVar.c();
                gVar.f2660f = cVar.c();
                this.f2628d[i3] = gVar;
            } else {
                c cVar2 = new c();
                cVar2.f2665g = cVar.b();
                cVar2.f2666h = cVar.b();
                cVar2.a = cVar.b();
                cVar2.b = cVar.b();
                cVar2.f2646c = cVar.b();
                cVar2.f2647d = cVar.b();
                cVar2.f2648e = cVar.b();
                cVar2.f2649f = cVar.b();
                this.f2628d[i3] = cVar2;
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
        this.f2631g.close();
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
        for (k kVar : this.f2633i) {
            if (str.equals(a(kVar.f2667g))) {
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
        while (this.f2634j[i3] != 0) {
            i3++;
        }
        return new String(this.f2634j, i2, i3 - i2);
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
