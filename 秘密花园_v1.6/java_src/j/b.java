package j;

import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringReader;
import java.net.Socket;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
import k.a.e.f;
import k.a.f.i;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import l.g0;
/* compiled from: -Platform.kt */
/* loaded from: classes.dex */
public final class b {
    public static void A(List<? extends Throwable> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        if (list.size() == 1) {
            Throwable th = list.get(0);
            if (!(th instanceof RuntimeException)) {
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                throw new RuntimeException(th);
            }
            throw ((RuntimeException) th);
        }
        throw new m.m.a(list);
    }

    public static void B(Throwable th) {
        if (!(th instanceof m.m.e)) {
            if (!(th instanceof m.m.d)) {
                if (!(th instanceof m.m.c)) {
                    if (!(th instanceof VirtualMachineError)) {
                        if (!(th instanceof ThreadDeath)) {
                            if (th instanceof LinkageError) {
                                throw ((LinkageError) th);
                            }
                            return;
                        }
                        throw ((ThreadDeath) th);
                    }
                    throw ((VirtualMachineError) th);
                }
                throw ((m.m.c) th);
            }
            throw ((m.m.d) th);
        }
        throw ((m.m.e) th);
    }

    public static void C(Throwable th, m.j<?> jVar, Object obj) {
        B(th);
        jVar.e(m.m.f.a(th, obj));
    }

    public static void D(k.a.g.f fVar, k.a.e.l lVar) {
        k.a.e.l lVar2 = lVar;
        int i2 = 0;
        while (lVar2 != null) {
            fVar.a(lVar2, i2);
            if (lVar2.f() > 0) {
                lVar2 = lVar2.l().get(0);
                i2++;
            } else {
                while (lVar2.p() == null && i2 > 0) {
                    fVar.b(lVar2, i2);
                    lVar2 = lVar2.a;
                    i2--;
                }
                fVar.b(lVar2, i2);
                if (lVar2 == lVar) {
                    return;
                }
                lVar2 = lVar2.p();
            }
        }
    }

    public static final y a(File file) throws FileNotFoundException {
        return new s(new FileOutputStream(file, true), new b0());
    }

    public static final boolean b(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        if (bArr == null) {
            h.o.c.g.f("a");
            throw null;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            if (bArr[i5 + i2] != bArr2[i5 + i3]) {
                return false;
            }
        }
        return true;
    }

    public static final void c(byte[] bArr, int i2, byte[] bArr2, int i3, int i4) {
        if (bArr == null) {
            h.o.c.g.f("src");
            throw null;
        } else if (bArr2 != null) {
            System.arraycopy(bArr, i2, bArr2, i3, i4);
        } else {
            h.o.c.g.f("dest");
            throw null;
        }
    }

    public static final <T> Object d(l.d<T> dVar, h.m.a<? super T> aVar) {
        CancellableContinuation cancellableContinuationImpl = new CancellableContinuationImpl(c.a.a.b.g.h.h0(aVar), 1);
        CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
        cancellableContinuation.invokeOnCancellation(new l.q(dVar));
        dVar.X(new l.s(cancellableContinuation));
        Object result = cancellableContinuationImpl.getResult();
        h.m.d.a aVar2 = h.m.d.a.COROUTINE_SUSPENDED;
        return result;
    }

    public static final <T> Object e(l.d<T> dVar, h.m.a<? super T> aVar) {
        CancellableContinuation cancellableContinuationImpl = new CancellableContinuationImpl(c.a.a.b.g.h.h0(aVar), 1);
        CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
        cancellableContinuation.invokeOnCancellation(new l.r(dVar));
        dVar.X(new l.t(cancellableContinuation));
        Object result = cancellableContinuationImpl.getResult();
        h.m.d.a aVar2 = h.m.d.a.COROUTINE_SUSPENDED;
        return result;
    }

    public static final <T> Object f(l.d<T> dVar, h.m.a<? super g0<T>> aVar) {
        CancellableContinuation cancellableContinuationImpl = new CancellableContinuationImpl(c.a.a.b.g.h.h0(aVar), 1);
        CancellableContinuation cancellableContinuation = cancellableContinuationImpl;
        cancellableContinuation.invokeOnCancellation(new l.u(dVar));
        dVar.X(new l.v(cancellableContinuation));
        Object result = cancellableContinuationImpl.getResult();
        h.m.d.a aVar2 = h.m.d.a.COROUTINE_SUSPENDED;
        return result;
    }

    public static final i g(y yVar) {
        if (yVar != null) {
            return new t(yVar);
        }
        h.o.c.g.f("$receiver");
        throw null;
    }

    public static final j h(a0 a0Var) {
        if (a0Var != null) {
            return new u(a0Var);
        }
        h.o.c.g.f("$receiver");
        throw null;
    }

    public static final void i(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException("size=" + j2 + " offset=" + j3 + " byteCount=" + j4);
        }
    }

    public static k.a.g.c j(k.a.g.d dVar, k.a.e.h hVar) {
        k.a.g.c cVar = new k.a.g.c();
        D(new k.a.g.a(hVar, cVar, dVar), hVar);
        return cVar;
    }

    public static long k(AtomicLong atomicLong, long j2) {
        long j3;
        long j4;
        do {
            j3 = atomicLong.get();
            j4 = j3 + j2;
            if (j4 < 0) {
                j4 = RecyclerView.FOREVER_NS;
            }
        } while (!atomicLong.compareAndSet(j3, j4));
        return j3;
    }

    public static final boolean l(AssertionError assertionError) {
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            return message != null ? h.s.d.b(message, "getsockname failed", false, 2) : false;
        }
        return false;
    }

    public static void m(boolean z) {
        if (z) {
            throw new IllegalArgumentException("Must be false");
        }
    }

    public static void n(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("Must be true");
        }
    }

    public static String o(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static String p(String str) {
        return o(str).trim();
    }

    public static void q(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String must not be empty");
        }
    }

    public static void r(String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void s(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Object must not be null");
        }
    }

    public static f.a t(k.a.e.l lVar) {
        k.a.e.l y = lVar.y();
        k.a.e.f fVar = y instanceof k.a.e.f ? (k.a.e.f) y : null;
        if (fVar == null) {
            fVar = new k.a.e.f("");
        }
        return fVar.f7088i;
    }

    public static k.a.e.f u(String str) {
        i.c cVar;
        k.a.f.b bVar = new k.a.f.b();
        bVar.b(new StringReader(str), "", new k.a.f.g(bVar));
        k.a.f.k kVar = bVar.f7203c;
        i.j jVar = i.j.EOF;
        while (true) {
            if (!kVar.f7183e) {
                kVar.f7181c.f(kVar, kVar.a);
            } else {
                StringBuilder sb = kVar.f7185g;
                if (sb.length() != 0) {
                    String sb2 = sb.toString();
                    sb.delete(0, sb.length());
                    kVar.f7184f = null;
                    i.c cVar2 = kVar.f7190l;
                    cVar2.b = sb2;
                    cVar = cVar2;
                } else {
                    String str2 = kVar.f7184f;
                    if (str2 != null) {
                        i.c cVar3 = kVar.f7190l;
                        cVar3.b = str2;
                        kVar.f7184f = null;
                        cVar = cVar3;
                    } else {
                        kVar.f7183e = false;
                        cVar = kVar.f7182d;
                    }
                }
                bVar.c(cVar);
                cVar.g();
                if (cVar.a == jVar) {
                    break;
                }
            }
        }
        k.a.f.a aVar = bVar.b;
        Reader reader = aVar.b;
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException unused) {
            } catch (Throwable th) {
                aVar.b = null;
                aVar.a = null;
                aVar.f7122h = null;
                throw th;
            }
            aVar.b = null;
            aVar.a = null;
            aVar.f7122h = null;
        }
        bVar.b = null;
        bVar.f7203c = null;
        bVar.f7205e = null;
        return bVar.f7204d;
    }

    public static int v(int i2) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
    }

    public static final y w(Socket socket) throws IOException {
        if (socket != null) {
            z zVar = new z(socket);
            OutputStream outputStream = socket.getOutputStream();
            h.o.c.g.b(outputStream, "getOutputStream()");
            return new d(zVar, new s(outputStream, zVar));
        }
        h.o.c.g.f("$receiver");
        throw null;
    }

    public static y x(File file, boolean z, int i2) throws FileNotFoundException {
        if ((i2 & 1) != 0) {
            z = false;
        }
        return new s(new FileOutputStream(file, z), new b0());
    }

    public static final a0 y(Socket socket) throws IOException {
        if (socket != null) {
            z zVar = new z(socket);
            InputStream inputStream = socket.getInputStream();
            h.o.c.g.b(inputStream, "getInputStream()");
            return new e(zVar, new q(inputStream, zVar));
        }
        h.o.c.g.f("$receiver");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object z(java.lang.Exception r4, h.m.a<?> r5) {
        /*
            boolean r0 = r5 instanceof l.x
            if (r0 == 0) goto L13
            r0 = r5
            l.x r0 = (l.x) r0
            int r1 = r0.f7298e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7298e = r1
            goto L18
        L13:
            l.x r0 = new l.x
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f7297d
            h.m.d.a r1 = h.m.d.a.COROUTINE_SUSPENDED
            int r2 = r0.f7298e
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f7299f
            java.lang.Exception r4 = (java.lang.Exception) r4
            boolean r4 = r5 instanceof h.d
            if (r4 != 0) goto L2e
            h.i r4 = h.i.a
            return r4
        L2e:
            h.d r5 = (h.d) r5
            java.lang.Throwable r4 = r5.a
            throw r4
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            boolean r2 = r5 instanceof h.d
            if (r2 != 0) goto L54
            r0.f7299f = r4
            r0.f7298e = r3
            kotlinx.coroutines.CoroutineDispatcher r5 = kotlinx.coroutines.Dispatchers.getDefault()
            h.m.c r2 = r0.getContext()
            l.w r3 = new l.w
            r3.<init>(r0, r4)
            r5.dispatch(r2, r3)
            return r1
        L54:
            h.d r5 = (h.d) r5
            java.lang.Throwable r4 = r5.a
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: j.b.z(java.lang.Exception, h.m.a):java.lang.Object");
    }
}
