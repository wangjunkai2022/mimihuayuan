package i.m0;

import androidx.appcompat.widget.ActivityChooserView;
import h.f;
import h.k.j;
import h.s.c;
import h.s.d;
import i.h0;
import i.i0;
import i.j0;
import i.w;
import i.x;
import j.a0;
import j.g;
import j.i;
import j.k;
import j.r;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class b {
    public static final byte[] a = new byte[0];
    public static final w b = w.b.c(new String[0]);

    /* renamed from: c  reason: collision with root package name */
    public static final i0 f6501c;

    /* renamed from: d  reason: collision with root package name */
    public static final r f6502d;

    /* renamed from: e  reason: collision with root package name */
    public static final TimeZone f6503e;

    /* renamed from: f  reason: collision with root package name */
    public static final c f6504f;

    /* compiled from: Util.kt */
    /* loaded from: classes.dex */
    public static final class a implements ThreadFactory {
        public final /* synthetic */ String a;
        public final /* synthetic */ boolean b;

        public a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.a);
            thread.setDaemon(this.b);
            return thread;
        }
    }

    static {
        byte[] bArr = a;
        if (bArr != null) {
            g gVar = new g();
            gVar.N(bArr);
            f6501c = new j0(gVar, null, (long) bArr.length);
            byte[] bArr2 = a;
            int length = bArr2.length;
            if (bArr2 != null) {
                e((long) bArr2.length, (long) 0, (long) length);
                f6502d = r.f6987c.c(k.f6979e.a("efbbbf"), k.f6979e.a("feff"), k.f6979e.a("fffe"), k.f6979e.a("0000ffff"), k.f6979e.a("ffff0000"));
                TimeZone timeZone = TimeZone.getTimeZone("GMT");
                if (timeZone != null) {
                    f6503e = timeZone;
                    f6504f = new c("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
                    return;
                }
                h.o.c.g.e();
                throw null;
            }
            h.o.c.g.f("$this$toRequestBody");
            throw null;
        }
        h.o.c.g.f("$this$toResponseBody");
        throw null;
    }

    public static final ThreadFactory A(String str, boolean z) {
        return new a(str, z);
    }

    public static final w B(List<i.m0.g.c> list) {
        ArrayList arrayList = new ArrayList(20);
        for (i.m0.g.c cVar : list) {
            k kVar = cVar.b;
            k kVar2 = cVar.f6627c;
            if (kVar != null) {
                String r = j.c0.a.r(kVar);
                if (kVar2 != null) {
                    String r2 = j.c0.a.r(kVar2);
                    arrayList.add(r);
                    arrayList.add(d.y(r2).toString());
                } else {
                    throw null;
                }
            } else {
                throw null;
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return new w((String[]) array, null);
        }
        throw new f("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final java.lang.String C(i.x r5, boolean r6) {
        /*
            r0 = 0
            if (r5 == 0) goto L_0x0078
            java.lang.String r1 = r5.f6774e
            r2 = 0
            r3 = 2
            java.lang.String r4 = ":"
            boolean r1 = h.s.d.b(r1, r4, r2, r3)
            if (r1 == 0) goto L_0x0028
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 91
            r1.append(r2)
            java.lang.String r2 = r5.f6774e
            r1.append(r2)
            r2 = 93
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            goto L_0x002a
        L_0x0028:
            java.lang.String r1 = r5.f6774e
        L_0x002a:
            if (r6 != 0) goto L_0x0061
            int r6 = r5.f6775f
            java.lang.String r2 = r5.b
            if (r2 == 0) goto L_0x005b
            int r0 = r2.hashCode()
            r3 = 3213448(0x310888, float:4.503E-39)
            if (r0 == r3) goto L_0x004c
            r3 = 99617003(0x5f008eb, float:2.2572767E-35)
            if (r0 == r3) goto L_0x0041
            goto L_0x0057
        L_0x0041:
            java.lang.String r0 = "https"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x0057
            r0 = 443(0x1bb, float:6.21E-43)
            goto L_0x0058
        L_0x004c:
            java.lang.String r0 = "http"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x0057
            r0 = 80
            goto L_0x0058
        L_0x0057:
            r0 = -1
        L_0x0058:
            if (r6 == r0) goto L_0x0077
            goto L_0x0061
        L_0x005b:
            java.lang.String r5 = "scheme"
            h.o.c.g.f(r5)
            throw r0
        L_0x0061:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r1)
            r0 = 58
            r6.append(r0)
            int r5 = r5.f6775f
            r6.append(r5)
            java.lang.String r1 = r6.toString()
        L_0x0077:
            return r1
        L_0x0078:
            java.lang.String r5 = "$this$toHostHeader"
            h.o.c.g.f(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.b.C(i.x, boolean):java.lang.String");
    }

    public static final <T> List<T> D(List<? extends T> list) {
        if (list != null) {
            List<T> unmodifiableList = Collections.unmodifiableList(h.k.g.c(list));
            h.o.c.g.b(unmodifiableList, "Collections.unmodifiableList(toMutableList())");
            return unmodifiableList;
        }
        h.o.c.g.f("$this$toImmutableList");
        throw null;
    }

    public static final <K, V> Map<K, V> E(Map<K, ? extends V> map) {
        if (map == null) {
            h.o.c.g.f("$this$toImmutableMap");
            throw null;
        } else if (map.isEmpty()) {
            return j.a;
        } else {
            Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
            h.o.c.g.b(unmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
            return unmodifiableMap;
        }
    }

    public static final long F(String str, long j2) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j2;
        }
    }

    public static final int G(String str, int i2) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
                    return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i2;
    }

    public static final String H(String str, int i2, int i3) {
        if (str != null) {
            int r = r(str, i2, i3);
            String substring = str.substring(r, t(str, r, i3));
            h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        h.o.c.g.f("$this$trimSubstring");
        throw null;
    }

    public static final void I(i iVar, int i2) throws IOException {
        if (iVar != null) {
            iVar.q((i2 >>> 16) & 255);
            iVar.q((i2 >>> 8) & 255);
            iVar.q(i2 & 255);
            return;
        }
        h.o.c.g.f("$this$writeMedium");
        throw null;
    }

    public static final int a(byte b2, int i2) {
        return b2 & i2;
    }

    public static final boolean b(String str) {
        return f6504f.a(str);
    }

    public static final boolean c(x xVar, x xVar2) {
        if (xVar == null) {
            h.o.c.g.f("$this$canReuseConnectionFor");
            throw null;
        } else if (xVar2 != null) {
            return h.o.c.g.a(xVar.f6774e, xVar2.f6774e) && xVar.f6775f == xVar2.f6775f && h.o.c.g.a(xVar.b, xVar2.b);
        } else {
            h.o.c.g.f("other");
            throw null;
        }
    }

    public static final int d(String str, long j2, TimeUnit timeUnit) {
        boolean z = false;
        int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
        if (!(i2 >= 0)) {
            throw new IllegalStateException(f.b.a.a.a.f(str, " < 0").toString());
        } else if (1 != 0) {
            long millis = timeUnit.toMillis(j2);
            if (millis <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
                if (millis != 0 || i2 <= 0) {
                    z = true;
                }
                if (z) {
                    return (int) millis;
                }
                throw new IllegalArgumentException(f.b.a.a.a.f(str, " too small.").toString());
            }
            throw new IllegalArgumentException(f.b.a.a.a.f(str, " too large.").toString());
        } else {
            throw new IllegalStateException("unit == null".toString());
        }
    }

    public static final void e(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void f(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        } else {
            h.o.c.g.f("$this$closeQuietly");
            throw null;
        }
    }

    public static final void g(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                throw e2;
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused) {
            }
        } else {
            h.o.c.g.f("$this$closeQuietly");
            throw null;
        }
    }

    public static final int h(String str, char c2, int i2, int i3) {
        if (str != null) {
            while (i2 < i3) {
                if (str.charAt(i2) == c2) {
                    return i2;
                }
                i2++;
            }
            return i3;
        }
        h.o.c.g.f("$this$delimiterOffset");
        throw null;
    }

    public static final int i(String str, String str2, int i2, int i3) {
        if (str != null) {
            while (i2 < i3) {
                if (d.a(str2, str.charAt(i2), false, 2)) {
                    return i2;
                }
                i2++;
            }
            return i3;
        }
        h.o.c.g.f("$this$delimiterOffset");
        throw null;
    }

    public static /* synthetic */ int j(String str, char c2, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = str.length();
        }
        return h(str, c2, i2, i3);
    }

    public static final boolean k(a0 a0Var, int i2, TimeUnit timeUnit) {
        if (timeUnit != null) {
            try {
                return z(a0Var, i2, timeUnit);
            } catch (IOException unused) {
                return false;
            }
        } else {
            h.o.c.g.f("timeUnit");
            throw null;
        }
    }

    public static final String l(String str, Object... objArr) {
        if (str != null) {
            Locale locale = Locale.US;
            h.o.c.g.b(locale, "Locale.US");
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            String format = String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
            h.o.c.g.b(format, "java.lang.String.format(locale, format, *args)");
            return format;
        }
        h.o.c.g.f("format");
        throw null;
    }

    public static final boolean m(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        if (strArr != null) {
            if (!(strArr.length == 0) && strArr2 != null) {
                if (!(strArr2.length == 0)) {
                    for (String str : strArr) {
                        for (String str2 : strArr2) {
                            if (comparator.compare(str, str2) == 0) {
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }
        h.o.c.g.f("$this$hasIntersection");
        throw null;
    }

    public static final long n(h0 h0Var) {
        String b2 = h0Var.f6451g.b("Content-Length");
        if (b2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(b2);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    @SafeVarargs
    public static final <T> List<T> o(T... tArr) {
        if (tArr != null) {
            Object[] objArr = (Object[]) tArr.clone();
            List<T> unmodifiableList = Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(objArr, objArr.length)));
            h.o.c.g.b(unmodifiableList, "Collections.unmodifiable…sList(*elements.clone()))");
            return unmodifiableList;
        }
        h.o.c.g.f("elements");
        throw null;
    }

    public static final int p(String[] strArr, String str, Comparator<String> comparator) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], str) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static final int q(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                return i2;
            }
        }
        return -1;
    }

    public static final int r(String str, int i2, int i3) {
        if (str != null) {
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i2;
                }
                i2++;
            }
            return i3;
        }
        h.o.c.g.f("$this$indexOfFirstNonAsciiWhitespace");
        throw null;
    }

    public static /* synthetic */ int s(String str, int i2, int i3, int i4) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        if ((i4 & 2) != 0) {
            i3 = str.length();
        }
        return r(str, i2, i3);
    }

    public static final int t(String str, int i2, int i3) {
        if (str != null) {
            int i4 = i3 - 1;
            if (i4 >= i2) {
                while (true) {
                    char charAt = str.charAt(i4);
                    if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                        if (i4 == i2) {
                            break;
                        }
                        i4--;
                    } else {
                        return i4 + 1;
                    }
                }
            }
            return i2;
        }
        h.o.c.g.f("$this$indexOfLastNonAsciiWhitespace");
        throw null;
    }

    public static final int u(String str, int i2) {
        int length = str.length();
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt != ' ' && charAt != '\t') {
                return i2;
            }
            i2++;
        }
        return str.length();
    }

    public static final String[] v(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        if (strArr2 != null) {
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                int length = strArr2.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (comparator.compare(str, strArr2[i2]) == 0) {
                        arrayList.add(str);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                return (String[]) array;
            }
            throw new f("null cannot be cast to non-null type kotlin.Array<T>");
        }
        h.o.c.g.f("other");
        throw null;
    }

    public static final int w(char c2) {
        if ('0' <= c2 && '9' >= c2) {
            return c2 - '0';
        }
        char c3 = 'a';
        if ('a' > c2 || 'f' < c2) {
            c3 = 'A';
            if ('A' > c2 || 'F' < c2) {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    public static final Charset x(j.j jVar, Charset charset) throws IOException {
        Charset charset2;
        if (jVar == null) {
            h.o.c.g.f("$this$readBomAsCharset");
            throw null;
        } else if (charset != null) {
            int D = jVar.D(f6502d);
            if (D == -1) {
                return charset;
            }
            if (D == 0) {
                Charset charset3 = StandardCharsets.UTF_8;
                h.o.c.g.b(charset3, "UTF_8");
                return charset3;
            } else if (D == 1) {
                Charset charset4 = StandardCharsets.UTF_16BE;
                h.o.c.g.b(charset4, "UTF_16BE");
                return charset4;
            } else if (D != 2) {
                if (D == 3) {
                    h.s.a aVar = h.s.a.f6340d;
                    charset2 = h.s.a.f6339c;
                    if (charset2 == null) {
                        charset2 = Charset.forName("UTF-32BE");
                        h.o.c.g.b(charset2, "Charset.forName(\"UTF-32BE\")");
                        h.s.a.f6339c = charset2;
                    }
                } else if (D == 4) {
                    h.s.a aVar2 = h.s.a.f6340d;
                    charset2 = h.s.a.b;
                    if (charset2 == null) {
                        charset2 = Charset.forName("UTF-32LE");
                        h.o.c.g.b(charset2, "Charset.forName(\"UTF-32LE\")");
                        h.s.a.b = charset2;
                    }
                } else {
                    throw new AssertionError();
                }
                return charset2;
            } else {
                Charset charset5 = StandardCharsets.UTF_16LE;
                h.o.c.g.b(charset5, "UTF_16LE");
                return charset5;
            }
        } else {
            h.o.c.g.f("default");
            throw null;
        }
    }

    public static final int y(j.j jVar) throws IOException {
        if (jVar != null) {
            return (jVar.readByte() & 255) | ((jVar.readByte() & 255) << 16) | ((jVar.readByte() & 255) << 8);
        }
        h.o.c.g.f("$this$readMedium");
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x004b, code lost:
        if (r5 == androidx.recyclerview.widget.RecyclerView.FOREVER_NS) goto L_0x006a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0068, code lost:
        if (r5 != androidx.recyclerview.widget.RecyclerView.FOREVER_NS) goto L_0x0072;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        r11.i().a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0072, code lost:
        r11.i().d(r0 + r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x007a, code lost:
        return r12;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final boolean z(j.a0 r11, int r12, java.util.concurrent.TimeUnit r13) throws java.io.IOException {
        /*
            if (r13 == 0) goto L_0x007b
            long r0 = java.lang.System.nanoTime()
            j.b0 r2 = r11.i()
            boolean r2 = r2.e()
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            if (r2 == 0) goto L_0x001f
            j.b0 r2 = r11.i()
            long r5 = r2.c()
            long r5 = r5 - r0
            goto L_0x0020
        L_0x001f:
            r5 = r3
        L_0x0020:
            j.b0 r2 = r11.i()
            long r7 = (long) r12
            long r12 = r13.toNanos(r7)
            long r12 = java.lang.Math.min(r5, r12)
            long r12 = r12 + r0
            r2.d(r12)
            j.g r12 = new j.g     // Catch: InterruptedIOException -> 0x0064, all -> 0x004e
            r12.<init>()     // Catch: InterruptedIOException -> 0x0064, all -> 0x004e
        L_0x0036:
            r7 = 8192(0x2000, double:4.0474E-320)
            long r7 = r11.c(r12, r7)     // Catch: InterruptedIOException -> 0x0064, all -> 0x004e
            r9 = -1
            int r13 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r13 == 0) goto L_0x0048
            long r7 = r12.b     // Catch: InterruptedIOException -> 0x0064, all -> 0x004e
            r12.skip(r7)     // Catch: InterruptedIOException -> 0x0064, all -> 0x004e
            goto L_0x0036
        L_0x0048:
            r12 = 1
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L_0x0072
            goto L_0x006a
        L_0x004e:
            r12 = move-exception
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L_0x005b
            j.b0 r11 = r11.i()
            r11.a()
            goto L_0x0063
        L_0x005b:
            j.b0 r11 = r11.i()
            long r0 = r0 + r5
            r11.d(r0)
        L_0x0063:
            throw r12
        L_0x0064:
            r12 = 0
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L_0x0072
        L_0x006a:
            j.b0 r11 = r11.i()
            r11.a()
            goto L_0x007a
        L_0x0072:
            j.b0 r11 = r11.i()
            long r0 = r0 + r5
            r11.d(r0)
        L_0x007a:
            return r12
        L_0x007b:
            java.lang.String r11 = "timeUnit"
            h.o.c.g.f(r11)
            r11 = 0
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.b.z(j.a0, int, java.util.concurrent.TimeUnit):boolean");
    }
}
