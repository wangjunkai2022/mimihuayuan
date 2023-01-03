package j;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import com.tencent.smtt.export.external.interfaces.ISelectionInterface;
import com.tencent.smtt.sdk.TbsListener;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* compiled from: Buffer.kt */
/* loaded from: classes.dex */
public final class g implements j, i, Cloneable, ByteChannel {

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f6977c;
    public v a;
    public long b;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(h.s.a.a);
        h.o.c.g.b(bytes, "(this as java.lang.String).getBytes(charset)");
        f6977c = bytes;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00a1 A[EDGE_INSN: B:46:0x00a1->B:38:0x00a1 ?: BREAK  , SYNTHETIC] */
    @Override // j.j
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long A() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L_0x00ad
            r0 = 0
            r1 = 0
            r4 = r2
        L_0x000b:
            j.v r6 = r15.a
            if (r6 == 0) goto L_0x00a8
            byte[] r7 = r6.a
            int r8 = r6.b
            int r9 = r6.f6990c
        L_0x0015:
            if (r8 >= r9) goto L_0x008d
            byte r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L_0x0026
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L_0x0026
            int r11 = r10 - r11
            goto L_0x003f
        L_0x0026:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L_0x0031
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L_0x0031
            goto L_0x003b
        L_0x0031:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L_0x0072
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L_0x0072
        L_0x003b:
            int r11 = r10 - r11
            int r11 = r11 + 10
        L_0x003f:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L_0x004f
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L_0x0015
        L_0x004f:
            j.g r0 = new j.g
            r0.<init>()
            j.g r0 = r0.k(r4)
            r0.Q(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Number too large: "
            java.lang.StringBuilder r2 = f.b.a.a.a.o(r2)
            java.lang.String r0 = r0.I()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L_0x0072:
            if (r0 == 0) goto L_0x0076
            r1 = 1
            goto L_0x008d
        L_0x0076:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = f.b.a.a.a.o(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x008d:
            if (r8 != r9) goto L_0x0099
            j.v r7 = r6.a()
            r15.a = r7
            j.w.a(r6)
            goto L_0x009b
        L_0x0099:
            r6.b = r8
        L_0x009b:
            if (r1 != 0) goto L_0x00a1
            j.v r6 = r15.a
            if (r6 != 0) goto L_0x000b
        L_0x00a1:
            long r1 = r15.b
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.b = r1
            return r4
        L_0x00a8:
            h.o.c.g.e()
            r0 = 0
            throw r0
        L_0x00ad:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.g.A():long");
    }

    @Override // j.j
    public String B(Charset charset) {
        return H(this.b, charset);
    }

    @Override // j.j
    public InputStream C() {
        return new a(this);
    }

    @Override // j.j
    public int D(r rVar) {
        if (rVar != null) {
            int K = K(rVar, false);
            if (K == -1) {
                return -1;
            }
            skip((long) rVar.a[K].b());
            return K;
        }
        h.o.c.g.f("options");
        throw null;
    }

    public byte[] E(long j2) throws EOFException {
        int i2 = 0;
        if (!(j2 >= 0 && j2 <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED))) {
            throw new IllegalArgumentException(f.b.a.a.a.c("byteCount: ", j2).toString());
        } else if (this.b >= j2) {
            int i3 = (int) j2;
            byte[] bArr = new byte[i3];
            while (i2 < i3) {
                int read = read(bArr, i2, i3 - i2);
                if (read != -1) {
                    i2 += read;
                } else {
                    throw new EOFException();
                }
            }
            return bArr;
        } else {
            throw new EOFException();
        }
    }

    public k F() {
        return new k(o());
    }

    public short G() throws EOFException {
        int readShort = readShort() & ISelectionInterface.HELD_NOTHING;
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    public String H(long j2, Charset charset) throws EOFException {
        if (charset != null) {
            int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
            if (!(i2 >= 0 && j2 <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED))) {
                throw new IllegalArgumentException(f.b.a.a.a.c("byteCount: ", j2).toString());
            } else if (this.b < j2) {
                throw new EOFException();
            } else if (i2 == 0) {
                return "";
            } else {
                v vVar = this.a;
                if (vVar != null) {
                    int i3 = vVar.b;
                    if (((long) i3) + j2 > ((long) vVar.f6990c)) {
                        return new String(E(j2), charset);
                    }
                    int i4 = (int) j2;
                    String str = new String(vVar.a, i3, i4, charset);
                    int i5 = vVar.b + i4;
                    vVar.b = i5;
                    this.b -= j2;
                    if (i5 == vVar.f6990c) {
                        this.a = vVar.a();
                        w.a(vVar);
                    }
                    return str;
                }
                h.o.c.g.e();
                throw null;
            }
        } else {
            h.o.c.g.f("charset");
            throw null;
        }
    }

    public String I() {
        return H(this.b, h.s.a.a);
    }

    public final String J(long j2) throws EOFException {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (f(j3) == ((byte) 13)) {
                String H = H(j3, h.s.a.a);
                skip(2);
                return H;
            }
        }
        String H2 = H(j2, h.s.a.a);
        skip(1);
        return H2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0051, code lost:
        if (r19 == false) goto L_0x0054;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0053, code lost:
        return r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0054, code lost:
        return r12;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int K(j.r r18, boolean r19) {
        /*
        // Method dump skipped, instructions count: 186
        */
        throw new UnsupportedOperationException("Method not decompiled: j.g.K(j.r, boolean):int");
    }

    public final v L(int i2) {
        boolean z = true;
        if (i2 < 1 || i2 > 8192) {
            z = false;
        }
        if (z) {
            v vVar = this.a;
            if (vVar == null) {
                v b = w.b();
                this.a = b;
                b.f6994g = b;
                b.f6993f = b;
                return b;
            } else if (vVar != null) {
                v vVar2 = vVar.f6994g;
                if (vVar2 == null) {
                    h.o.c.g.e();
                    throw null;
                } else if (vVar2.f6990c + i2 <= 8192 && vVar2.f6992e) {
                    return vVar2;
                } else {
                    v b2 = w.b();
                    vVar2.b(b2);
                    return b2;
                }
            } else {
                h.o.c.g.e();
                throw null;
            }
        } else {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
    }

    public g M(k kVar) {
        if (kVar != null) {
            kVar.i(this);
            return this;
        }
        h.o.c.g.f("byteString");
        throw null;
    }

    public g N(byte[] bArr) {
        if (bArr != null) {
            O(bArr, 0, bArr.length);
            return this;
        }
        h.o.c.g.f("source");
        throw null;
    }

    public g O(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = (long) i3;
            b.i((long) bArr.length, (long) i2, j2);
            int i4 = i3 + i2;
            while (i2 < i4) {
                v L = L(1);
                int min = Math.min(i4 - i2, 8192 - L.f6990c);
                System.arraycopy(bArr, i2, L.a, L.f6990c, min);
                i2 += min;
                L.f6990c += min;
            }
            this.b += j2;
            return this;
        }
        h.o.c.g.f("source");
        throw null;
    }

    public long P(a0 a0Var) throws IOException {
        if (a0Var != null) {
            long j2 = 0;
            while (true) {
                long c2 = a0Var.c(this, (long) 8192);
                if (c2 == -1) {
                    return j2;
                }
                j2 += c2;
            }
        } else {
            h.o.c.g.f("source");
            throw null;
        }
    }

    public g Q(int i2) {
        v L = L(1);
        byte[] bArr = L.a;
        int i3 = L.f6990c;
        L.f6990c = i3 + 1;
        bArr[i3] = (byte) i2;
        this.b++;
        return this;
    }

    /* renamed from: R */
    public g z(long j2) {
        int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
        if (i2 == 0) {
            Q(48);
            return this;
        }
        boolean z = false;
        int i3 = 1;
        if (i2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                c0("-9223372036854775808");
                return this;
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i3 = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i3 = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 >= 100) {
            i3 = j2 < 1000 ? 3 : 4;
        } else if (j2 >= 10) {
            i3 = 2;
        }
        if (z) {
            i3++;
        }
        v L = L(i3);
        byte[] bArr = L.a;
        int i4 = L.f6990c + i3;
        while (j2 != 0) {
            long j3 = (long) 10;
            i4--;
            bArr[i4] = f6977c[(int) (j2 % j3)];
            j2 /= j3;
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        L.f6990c += i3;
        this.b += (long) i3;
        return this;
    }

    /* renamed from: Y */
    public g k(long j2) {
        if (j2 == 0) {
            Q(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        v L = L(numberOfTrailingZeros);
        byte[] bArr = L.a;
        int i2 = L.f6990c;
        for (int i3 = (i2 + numberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = f6977c[(int) (15 & j2)];
            j2 >>>= 4;
        }
        L.f6990c += numberOfTrailingZeros;
        this.b += (long) numberOfTrailingZeros;
        return this;
    }

    public g Z(int i2) {
        v L = L(4);
        byte[] bArr = L.a;
        int i3 = L.f6990c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >>> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >>> 8) & 255);
        bArr[i6] = (byte) (i2 & 255);
        L.f6990c = i6 + 1;
        this.b += 4;
        return this;
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i a(byte[] bArr, int i2, int i3) {
        O(bArr, i2, i3);
        return this;
    }

    public g a0(int i2) {
        v L = L(2);
        byte[] bArr = L.a;
        int i3 = L.f6990c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i4] = (byte) (i2 & 255);
        L.f6990c = i4 + 1;
        this.b += 2;
        return this;
    }

    @Override // j.j
    public k b(long j2) throws EOFException {
        return new k(E(j2));
    }

    public g b0(String str, int i2, int i3, Charset charset) {
        if (charset != null) {
            boolean z = true;
            if (i2 >= 0) {
                if (i3 >= i2) {
                    if (i3 > str.length()) {
                        z = false;
                    }
                    if (!z) {
                        StringBuilder p = f.b.a.a.a.p("endIndex > string.length: ", i3, " > ");
                        p.append(str.length());
                        throw new IllegalArgumentException(p.toString().toString());
                    } else if (h.o.c.g.a(charset, h.s.a.a)) {
                        d0(str, i2, i3);
                        return this;
                    } else {
                        String substring = str.substring(i2, i3);
                        h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        byte[] bytes = substring.getBytes(charset);
                        h.o.c.g.b(bytes, "(this as java.lang.String).getBytes(charset)");
                        O(bytes, 0, bytes.length);
                        return this;
                    }
                } else {
                    throw new IllegalArgumentException(("endIndex < beginIndex: " + i3 + " < " + i2).toString());
                }
            } else {
                throw new IllegalArgumentException(f.b.a.a.a.J("beginIndex < 0: ", i2).toString());
            }
        } else {
            h.o.c.g.f("charset");
            throw null;
        }
    }

    @Override // j.a0
    public long c(g gVar, long j2) {
        if (gVar != null) {
            if (j2 >= 0) {
                long j3 = this.b;
                if (j3 == 0) {
                    return -1;
                }
                if (j2 > j3) {
                    j2 = j3;
                }
                gVar.j(this, j2);
                return j2;
            }
            throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
        }
        h.o.c.g.f("sink");
        throw null;
    }

    public g c0(String str) {
        if (str != null) {
            d0(str, 0, str.length());
            return this;
        }
        h.o.c.g.f("string");
        throw null;
    }

    @Override // java.lang.Object
    public Object clone() {
        g gVar = new g();
        if (this.b != 0) {
            v vVar = this.a;
            if (vVar != null) {
                v c2 = vVar.c();
                gVar.a = c2;
                c2.f6994g = c2;
                c2.f6993f = c2;
                v vVar2 = this.a;
                if (vVar2 != null) {
                    for (v vVar3 = vVar2.f6993f; vVar3 != this.a; vVar3 = vVar3.f6993f) {
                        v vVar4 = gVar.a;
                        if (vVar4 != null) {
                            v vVar5 = vVar4.f6994g;
                            if (vVar5 == null) {
                                h.o.c.g.e();
                                throw null;
                            } else if (vVar3 != null) {
                                vVar5.b(vVar3.c());
                            } else {
                                h.o.c.g.e();
                                throw null;
                            }
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    }
                    gVar.b = this.b;
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            } else {
                h.o.c.g.e();
                throw null;
            }
        }
        return gVar;
    }

    @Override // j.a0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long d() {
        long j2 = this.b;
        if (j2 == 0) {
            return 0;
        }
        v vVar = this.a;
        if (vVar != null) {
            v vVar2 = vVar.f6994g;
            if (vVar2 != null) {
                int i2 = vVar2.f6990c;
                return (i2 >= 8192 || !vVar2.f6992e) ? j2 : j2 - ((long) (i2 - vVar2.b));
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public g d0(String str, int i2, int i3) {
        char charAt;
        if (i2 >= 0) {
            if (i3 >= i2) {
                if (i3 <= str.length()) {
                    while (i2 < i3) {
                        char charAt2 = str.charAt(i2);
                        if (charAt2 < 128) {
                            v L = L(1);
                            byte[] bArr = L.a;
                            int i4 = L.f6990c - i2;
                            int min = Math.min(i3, 8192 - i4);
                            int i5 = i2 + 1;
                            bArr[i2 + i4] = (byte) charAt2;
                            while (true) {
                                i2 = i5;
                                if (i2 >= min || (charAt = str.charAt(i2)) >= 128) {
                                    break;
                                }
                                i5 = i2 + 1;
                                bArr[i2 + i4] = (byte) charAt;
                            }
                            int i6 = L.f6990c;
                            int i7 = (i4 + i2) - i6;
                            L.f6990c = i6 + i7;
                            this.b += (long) i7;
                        } else {
                            if (charAt2 < 2048) {
                                v L2 = L(2);
                                byte[] bArr2 = L2.a;
                                int i8 = L2.f6990c;
                                bArr2[i8] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i8 + 1] = (byte) ((charAt2 & '?') | 128);
                                L2.f6990c = i8 + 2;
                                this.b += 2;
                            } else if (charAt2 < 55296 || charAt2 > 57343) {
                                v L3 = L(3);
                                byte[] bArr3 = L3.a;
                                int i9 = L3.f6990c;
                                bArr3[i9] = (byte) ((charAt2 >> '\f') | TbsListener.ErrorCode.EXCEED_INCR_UPDATE);
                                bArr3[i9 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr3[i9 + 2] = (byte) ((charAt2 & '?') | 128);
                                L3.f6990c = i9 + 3;
                                this.b += 3;
                            } else {
                                int i10 = i2 + 1;
                                char charAt3 = i10 < i3 ? str.charAt(i10) : 0;
                                if (charAt2 > 56319 || 56320 > charAt3 || 57343 < charAt3) {
                                    Q(63);
                                    i2 = i10;
                                } else {
                                    int i11 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                    v L4 = L(4);
                                    byte[] bArr4 = L4.a;
                                    int i12 = L4.f6990c;
                                    bArr4[i12] = (byte) ((i11 >> 18) | TbsListener.ErrorCode.TPATCH_VERSION_FAILED);
                                    bArr4[i12 + 1] = (byte) (((i11 >> 12) & 63) | 128);
                                    bArr4[i12 + 2] = (byte) (((i11 >> 6) & 63) | 128);
                                    bArr4[i12 + 3] = (byte) ((i11 & 63) | 128);
                                    L4.f6990c = i12 + 4;
                                    this.b += 4;
                                    i2 += 2;
                                }
                            }
                            i2++;
                        }
                    }
                    return this;
                }
                StringBuilder p = f.b.a.a.a.p("endIndex > string.length: ", i3, " > ");
                p.append(str.length());
                throw new IllegalArgumentException(p.toString().toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i3 + " < " + i2).toString());
        }
        throw new IllegalArgumentException(f.b.a.a.a.J("beginIndex < 0: ", i2).toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002d, code lost:
        if (r13 <= 0) goto L_0x0070;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002f, code lost:
        if (r3 == null) goto L_0x006c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0031, code lost:
        r4 = r3.c();
        r5 = r4.b + ((int) r11);
        r4.b = r5;
        r4.f6990c = java.lang.Math.min(r5 + ((int) r13), r4.f6990c);
        r11 = r10.a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0047, code lost:
        if (r11 != null) goto L_0x0050;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
        r4.f6994g = r4;
        r4.f6993f = r4;
        r10.a = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0050, code lost:
        if (r11 == null) goto L_0x0068;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0052, code lost:
        r11 = r11.f6994g;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0054, code lost:
        if (r11 == null) goto L_0x0064;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0056, code lost:
        r11.b(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0059, code lost:
        r13 = r13 - ((long) (r4.f6990c - r4.b));
        r3 = r3.f6993f;
        r11 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0064, code lost:
        h.o.c.g.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0067, code lost:
        throw null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0068, code lost:
        h.o.c.g.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x006b, code lost:
        throw null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x006c, code lost:
        h.o.c.g.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006f, code lost:
        throw null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0070, code lost:
        return r9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final j.g e(j.g r10, long r11, long r13) {
        /*
            r9 = this;
            r0 = 0
            if (r10 == 0) goto L_0x0075
            long r1 = r9.b
            r3 = r11
            r5 = r13
            j.b.i(r1, r3, r5)
            r1 = 0
            int r3 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r3 != 0) goto L_0x0011
            return r9
        L_0x0011:
            long r3 = r10.b
            long r3 = r3 + r13
            r10.b = r3
            j.v r3 = r9.a
        L_0x0018:
            if (r3 == 0) goto L_0x0071
            int r4 = r3.f6990c
            int r5 = r3.b
            int r6 = r4 - r5
            long r6 = (long) r6
            int r8 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
            if (r8 < 0) goto L_0x002b
            int r4 = r4 - r5
            long r4 = (long) r4
            long r11 = r11 - r4
            j.v r3 = r3.f6993f
            goto L_0x0018
        L_0x002b:
            int r4 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r4 <= 0) goto L_0x0070
            if (r3 == 0) goto L_0x006c
            j.v r4 = r3.c()
            int r5 = r4.b
            int r12 = (int) r11
            int r5 = r5 + r12
            r4.b = r5
            int r11 = (int) r13
            int r5 = r5 + r11
            int r11 = r4.f6990c
            int r11 = java.lang.Math.min(r5, r11)
            r4.f6990c = r11
            j.v r11 = r10.a
            if (r11 != 0) goto L_0x0050
            r4.f6994g = r4
            r4.f6993f = r4
            r10.a = r4
            goto L_0x0059
        L_0x0050:
            if (r11 == 0) goto L_0x0068
            j.v r11 = r11.f6994g
            if (r11 == 0) goto L_0x0064
            r11.b(r4)
        L_0x0059:
            int r11 = r4.f6990c
            int r12 = r4.b
            int r11 = r11 - r12
            long r11 = (long) r11
            long r13 = r13 - r11
            j.v r3 = r3.f6993f
            r11 = r1
            goto L_0x002b
        L_0x0064:
            h.o.c.g.e()
            throw r0
        L_0x0068:
            h.o.c.g.e()
            throw r0
        L_0x006c:
            h.o.c.g.e()
            throw r0
        L_0x0070:
            return r9
        L_0x0071:
            h.o.c.g.e()
            throw r0
        L_0x0075:
            java.lang.String r10 = "out"
            h.o.c.g.f(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.g.e(j.g, long, long):j.g");
    }

    public g e0(int i2) {
        if (i2 < 128) {
            Q(i2);
        } else if (i2 < 2048) {
            v L = L(2);
            byte[] bArr = L.a;
            int i3 = L.f6990c;
            bArr[i3] = (byte) ((i2 >> 6) | 192);
            bArr[i3 + 1] = (byte) ((i2 & 63) | 128);
            L.f6990c = i3 + 2;
            this.b += 2;
        } else if (55296 <= i2 && 57343 >= i2) {
            Q(63);
        } else if (i2 < 65536) {
            v L2 = L(3);
            byte[] bArr2 = L2.a;
            int i4 = L2.f6990c;
            bArr2[i4] = (byte) ((i2 >> 12) | TbsListener.ErrorCode.EXCEED_INCR_UPDATE);
            bArr2[i4 + 1] = (byte) (((i2 >> 6) & 63) | 128);
            bArr2[i4 + 2] = (byte) ((i2 & 63) | 128);
            L2.f6990c = i4 + 3;
            this.b += 3;
        } else if (i2 <= 1114111) {
            v L3 = L(4);
            byte[] bArr3 = L3.a;
            int i5 = L3.f6990c;
            bArr3[i5] = (byte) ((i2 >> 18) | TbsListener.ErrorCode.TPATCH_VERSION_FAILED);
            bArr3[i5 + 1] = (byte) (((i2 >> 12) & 63) | 128);
            bArr3[i5 + 2] = (byte) (((i2 >> 6) & 63) | 128);
            bArr3[i5 + 3] = (byte) ((i2 & 63) | 128);
            L3.f6990c = i5 + 4;
            this.b += 4;
        } else {
            StringBuilder o = f.b.a.a.a.o("Unexpected code point: ");
            o.append(Integer.toHexString(i2));
            throw new IllegalArgumentException(o.toString());
        }
        return this;
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        long j2 = this.b;
        g gVar = (g) obj;
        if (j2 != gVar.b) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        v vVar = this.a;
        if (vVar != null) {
            v vVar2 = gVar.a;
            if (vVar2 != null) {
                int i2 = vVar.b;
                int i3 = vVar2.b;
                long j4 = 0;
                while (j4 < this.b) {
                    long min = (long) Math.min(vVar.f6990c - i2, vVar2.f6990c - i3);
                    for (long j5 = j3; j5 < min; j5++) {
                        i2++;
                        i3++;
                        if (vVar.a[i2] != vVar2.a[i3]) {
                            return false;
                        }
                    }
                    if (i2 == vVar.f6990c) {
                        vVar = vVar.f6993f;
                        if (vVar != null) {
                            i2 = vVar.b;
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    }
                    if (i3 == vVar2.f6990c) {
                        vVar2 = vVar2.f6993f;
                        if (vVar2 != null) {
                            i3 = vVar2.b;
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    }
                    j4 += min;
                    j3 = 0;
                }
                return true;
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    public final byte f(long j2) {
        b.i(this.b, j2, 1);
        v vVar = this.a;
        if (vVar != null) {
            long j3 = this.b;
            if (j3 - j2 < j2) {
                while (j3 > j2) {
                    vVar = vVar.f6994g;
                    if (vVar != null) {
                        j3 -= (long) (vVar.f6990c - vVar.b);
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                return vVar.a[(int) ((((long) vVar.b) + j2) - j3)];
            }
            long j4 = 0;
            while (true) {
                int i2 = vVar.f6990c;
                int i3 = vVar.b;
                long j5 = ((long) (i2 - i3)) + j4;
                if (j5 > j2) {
                    return vVar.a[(int) ((((long) i3) + j2) - j4)];
                }
                vVar = vVar.f6993f;
                if (vVar != null) {
                    j4 = j5;
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
        } else {
            h.o.c.g.e();
            throw null;
        }
    }

    @Override // j.i, j.y, java.io.Flushable
    public void flush() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0090, code lost:
        if (r6 >= r4) goto L_0x00c7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0092, code lost:
        r8 = r10.a;
        r9 = (int) java.lang.Math.min((long) r10.f6990c, (((long) r10.b) + r4) - r6);
        r2 = (int) ((((long) r10.b) + r2) - r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00a7, code lost:
        if (r2 >= r9) goto L_0x00b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00ab, code lost:
        if (r8[r2] != r18) goto L_0x00b3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00b2, code lost:
        return ((long) (r2 - r10.b)) + r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00b3, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00b6, code lost:
        r6 = r6 + ((long) (r10.f6990c - r10.b));
        r10 = r10.f6993f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00bf, code lost:
        if (r10 == null) goto L_0x00c3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00c1, code lost:
        r2 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00c3, code lost:
        h.o.c.g.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00c6, code lost:
        throw null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00c7, code lost:
        return -1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long g(byte r18, long r19, long r21) {
        /*
        // Method dump skipped, instructions count: 254
        */
        throw new UnsupportedOperationException("Method not decompiled: j.g.g(byte, long, long):long");
    }

    @Override // j.j, j.i
    public g h() {
        return this;
    }

    @Override // java.lang.Object
    public int hashCode() {
        v vVar = this.a;
        if (vVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = vVar.f6990c;
            for (int i4 = vVar.b; i4 < i3; i4++) {
                i2 = (i2 * 31) + vVar.a[i4];
            }
            vVar = vVar.f6993f;
            if (vVar == null) {
                h.o.c.g.e();
                throw null;
            }
        } while (vVar != this.a);
        return i2;
    }

    @Override // j.a0
    public b0 i() {
        return b0.f6968d;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // j.y
    public void j(g gVar, long j2) {
        v vVar;
        v vVar2;
        if (gVar != null) {
            if (gVar != this) {
                b.i(gVar.b, 0, j2);
                while (j2 > 0) {
                    v vVar3 = gVar.a;
                    if (vVar3 != null) {
                        int i2 = vVar3.f6990c;
                        if (vVar3 != null) {
                            if (j2 < ((long) (i2 - vVar3.b))) {
                                v vVar4 = this.a;
                                if (vVar4 == null) {
                                    vVar = null;
                                } else if (vVar4 != null) {
                                    vVar = vVar4.f6994g;
                                } else {
                                    h.o.c.g.e();
                                    throw null;
                                }
                                if (vVar != null && vVar.f6992e) {
                                    if ((((long) vVar.f6990c) + j2) - ((long) (vVar.f6991d ? 0 : vVar.b)) <= ((long) 8192)) {
                                        v vVar5 = gVar.a;
                                        if (vVar5 != null) {
                                            vVar5.d(vVar, (int) j2);
                                            gVar.b -= j2;
                                            this.b += j2;
                                            return;
                                        }
                                        h.o.c.g.e();
                                        throw null;
                                    }
                                }
                                v vVar6 = gVar.a;
                                if (vVar6 != null) {
                                    int i3 = (int) j2;
                                    if (vVar6 != null) {
                                        if (i3 > 0 && i3 <= vVar6.f6990c - vVar6.b) {
                                            if (i3 >= 1024) {
                                                vVar2 = vVar6.c();
                                            } else {
                                                vVar2 = w.b();
                                                b.c(vVar6.a, vVar6.b, vVar2.a, 0, i3);
                                            }
                                            vVar2.f6990c = vVar2.b + i3;
                                            vVar6.b += i3;
                                            v vVar7 = vVar6.f6994g;
                                            if (vVar7 != null) {
                                                vVar7.b(vVar2);
                                                gVar.a = vVar2;
                                            } else {
                                                h.o.c.g.e();
                                                throw null;
                                            }
                                        } else {
                                            throw new IllegalArgumentException("byteCount out of range".toString());
                                        }
                                    } else {
                                        throw null;
                                    }
                                } else {
                                    h.o.c.g.e();
                                    throw null;
                                }
                            }
                            v vVar8 = gVar.a;
                            if (vVar8 != null) {
                                long j3 = (long) (vVar8.f6990c - vVar8.b);
                                gVar.a = vVar8.a();
                                v vVar9 = this.a;
                                if (vVar9 == null) {
                                    this.a = vVar8;
                                    vVar8.f6994g = vVar8;
                                    vVar8.f6993f = vVar8;
                                } else if (vVar9 != null) {
                                    v vVar10 = vVar9.f6994g;
                                    if (vVar10 != null) {
                                        vVar10.b(vVar8);
                                        if (vVar8.f6994g != vVar8) {
                                            v vVar11 = vVar8.f6994g;
                                            if (vVar11 == null) {
                                                h.o.c.g.e();
                                                throw null;
                                            } else if (!vVar11.f6992e) {
                                                continue;
                                            } else {
                                                int i4 = vVar8.f6990c - vVar8.b;
                                                if (i4 <= (8192 - vVar11.f6990c) + (vVar11.f6991d ? 0 : vVar11.b)) {
                                                    v vVar12 = vVar8.f6994g;
                                                    if (vVar12 != null) {
                                                        vVar8.d(vVar12, i4);
                                                        vVar8.a();
                                                        w.a(vVar8);
                                                    } else {
                                                        h.o.c.g.e();
                                                        throw null;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            }
                                        } else {
                                            throw new IllegalStateException("cannot compact".toString());
                                        }
                                    } else {
                                        h.o.c.g.e();
                                        throw null;
                                    }
                                } else {
                                    h.o.c.g.e();
                                    throw null;
                                }
                                gVar.b -= j3;
                                this.b += j3;
                                j2 -= j3;
                            } else {
                                h.o.c.g.e();
                                throw null;
                            }
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                return;
            }
            throw new IllegalArgumentException("source == this".toString());
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i l(int i2) {
        a0(i2);
        return this;
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i m(int i2) {
        Z(i2);
        return this;
    }

    @Override // j.j
    public String n() throws EOFException {
        return v(RecyclerView.FOREVER_NS);
    }

    @Override // j.j
    public byte[] o() {
        return E(this.b);
    }

    @Override // j.j
    public boolean p() {
        return this.b == 0;
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i q(int i2) {
        Q(i2);
        return this;
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i r(byte[] bArr) {
        N(bArr);
        return this;
    }

    public int read(byte[] bArr, int i2, int i3) {
        b.i((long) bArr.length, (long) i2, (long) i3);
        v vVar = this.a;
        if (vVar == null) {
            return -1;
        }
        int min = Math.min(i3, vVar.f6990c - vVar.b);
        System.arraycopy(vVar.a, vVar.b, bArr, i2, min);
        int i4 = vVar.b + min;
        vVar.b = i4;
        this.b -= (long) min;
        if (i4 == vVar.f6990c) {
            this.a = vVar.a();
            w.a(vVar);
        }
        return min;
    }

    @Override // j.j
    public byte readByte() throws EOFException {
        long j2 = this.b;
        if (j2 != 0) {
            v vVar = this.a;
            if (vVar != null) {
                int i2 = vVar.b;
                int i3 = vVar.f6990c;
                int i4 = i2 + 1;
                byte b = vVar.a[i2];
                this.b = j2 - 1;
                if (i4 == i3) {
                    this.a = vVar.a();
                    w.a(vVar);
                } else {
                    vVar.b = i4;
                }
                return b;
            }
            h.o.c.g.e();
            throw null;
        }
        throw new EOFException();
    }

    @Override // j.j
    public int readInt() throws EOFException {
        long j2 = this.b;
        if (j2 >= 4) {
            v vVar = this.a;
            if (vVar != null) {
                int i2 = vVar.b;
                int i3 = vVar.f6990c;
                if (((long) (i3 - i2)) < 4) {
                    return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
                }
                byte[] bArr = vVar.a;
                int i4 = i2 + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i2] & 255) << 24) | ((bArr[i4] & 255) << 16);
                int i7 = i5 + 1;
                int i8 = i6 | ((bArr[i5] & 255) << 8);
                int i9 = i7 + 1;
                int i10 = i8 | (bArr[i7] & 255);
                this.b = j2 - 4;
                if (i9 == i3) {
                    this.a = vVar.a();
                    w.a(vVar);
                } else {
                    vVar.b = i9;
                }
                return i10;
            }
            h.o.c.g.e();
            throw null;
        }
        throw new EOFException();
    }

    @Override // j.j
    public short readShort() throws EOFException {
        long j2 = this.b;
        if (j2 >= 2) {
            v vVar = this.a;
            if (vVar != null) {
                int i2 = vVar.b;
                int i3 = vVar.f6990c;
                if (i3 - i2 < 2) {
                    return (short) (((readByte() & 255) << 8) | (readByte() & 255));
                }
                byte[] bArr = vVar.a;
                int i4 = i2 + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i2] & 255) << 8) | (bArr[i4] & 255);
                this.b = j2 - 2;
                if (i5 == i3) {
                    this.a = vVar.a();
                    w.a(vVar);
                } else {
                    vVar.b = i5;
                }
                return (short) i6;
            }
            h.o.c.g.e();
            throw null;
        }
        throw new EOFException();
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i s(k kVar) {
        M(kVar);
        return this;
    }

    @Override // j.j
    public void skip(long j2) throws EOFException {
        while (j2 > 0) {
            v vVar = this.a;
            if (vVar != null) {
                int min = (int) Math.min(j2, (long) (vVar.f6990c - vVar.b));
                long j3 = (long) min;
                this.b -= j3;
                j2 -= j3;
                int i2 = vVar.b + min;
                vVar.b = i2;
                if (i2 == vVar.f6990c) {
                    this.a = vVar.a();
                    w.a(vVar);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // j.i
    public i t() {
        return this;
    }

    @Override // java.lang.Object
    public String toString() {
        k kVar;
        int i2 = 0;
        if (this.b <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            long j2 = this.b;
            int i3 = (int) j2;
            if (i3 == 0) {
                kVar = k.f6978d;
            } else {
                b.i(j2, 0, (long) i3);
                v vVar = this.a;
                int i4 = 0;
                int i5 = 0;
                while (i4 < i3) {
                    if (vVar != null) {
                        int i6 = vVar.f6990c;
                        int i7 = vVar.b;
                        if (i6 != i7) {
                            i4 += i6 - i7;
                            i5++;
                            vVar = vVar.f6993f;
                        } else {
                            throw new AssertionError("s.limit == s.pos");
                        }
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                byte[][] bArr = new byte[i5];
                int[] iArr = new int[i5 * 2];
                v vVar2 = this.a;
                int i8 = 0;
                while (i2 < i3) {
                    if (vVar2 != null) {
                        bArr[i8] = vVar2.a;
                        i2 += vVar2.f6990c - vVar2.b;
                        iArr[i8] = Math.min(i2, i3);
                        iArr[i8 + i5] = vVar2.b;
                        vVar2.f6991d = true;
                        i8++;
                        vVar2 = vVar2.f6993f;
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                kVar = new x(bArr, iArr, null);
            }
            return kVar.toString();
        }
        StringBuilder o = f.b.a.a.a.o("size > Integer.MAX_VALUE: ");
        o.append(this.b);
        throw new IllegalStateException(o.toString().toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0095  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00a7 A[EDGE_INSN: B:48:0x00a7->B:39:0x00a7 ?: BREAK  , SYNTHETIC] */
    @Override // j.j
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long u() throws java.io.EOFException {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.b
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x00b7
            r1 = -7
            r5 = 0
            r6 = 0
            r7 = 0
        L_0x000f:
            j.v r8 = r0.a
            if (r8 == 0) goto L_0x00b2
            byte[] r9 = r8.a
            int r10 = r8.b
            int r11 = r8.f6990c
        L_0x0019:
            if (r10 >= r11) goto L_0x0093
            byte r12 = r9[r10]
            r13 = 48
            byte r13 = (byte) r13
            if (r12 < r13) goto L_0x0068
            r14 = 57
            byte r14 = (byte) r14
            if (r12 > r14) goto L_0x0068
            int r13 = r13 - r12
            r14 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r16 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r16 < 0) goto L_0x0040
            if (r16 != 0) goto L_0x0039
            long r14 = (long) r13
            int r16 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r16 >= 0) goto L_0x0039
            goto L_0x0040
        L_0x0039:
            r14 = 10
            long r3 = r3 * r14
            long r12 = (long) r13
            long r3 = r3 + r12
            goto L_0x0073
        L_0x0040:
            j.g r1 = new j.g
            r1.<init>()
            j.g r1 = r1.z(r3)
            r1.Q(r12)
            if (r6 != 0) goto L_0x0051
            r1.readByte()
        L_0x0051:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.String r3 = "Number too large: "
            java.lang.StringBuilder r3 = f.b.a.a.a.o(r3)
            java.lang.String r1 = r1.I()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L_0x0068:
            r13 = 45
            byte r13 = (byte) r13
            if (r12 != r13) goto L_0x0078
            if (r5 != 0) goto L_0x0078
            r12 = 1
            long r1 = r1 - r12
            r6 = 1
        L_0x0073:
            int r10 = r10 + 1
            int r5 = r5 + 1
            goto L_0x0019
        L_0x0078:
            if (r5 == 0) goto L_0x007c
            r7 = 1
            goto L_0x0093
        L_0x007c:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            java.lang.StringBuilder r2 = f.b.a.a.a.o(r2)
            java.lang.String r3 = java.lang.Integer.toHexString(r12)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x0093:
            if (r10 != r11) goto L_0x009f
            j.v r9 = r8.a()
            r0.a = r9
            j.w.a(r8)
            goto L_0x00a1
        L_0x009f:
            r8.b = r10
        L_0x00a1:
            if (r7 != 0) goto L_0x00a7
            j.v r8 = r0.a
            if (r8 != 0) goto L_0x000f
        L_0x00a7:
            long r1 = r0.b
            long r7 = (long) r5
            long r1 = r1 - r7
            r0.b = r1
            if (r6 == 0) goto L_0x00b0
            goto L_0x00b1
        L_0x00b0:
            long r3 = -r3
        L_0x00b1:
            return r3
        L_0x00b2:
            h.o.c.g.e()
            r1 = 0
            throw r1
        L_0x00b7:
            java.io.EOFException r1 = new java.io.EOFException
            r1.<init>()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: j.g.u():long");
    }

    @Override // j.j
    public String v(long j2) throws EOFException {
        if (j2 >= 0) {
            long j3 = RecyclerView.FOREVER_NS;
            if (j2 != RecyclerView.FOREVER_NS) {
                j3 = j2 + 1;
            }
            byte b = (byte) 10;
            long g2 = g(b, 0, j3);
            if (g2 != -1) {
                return J(g2);
            }
            if (j3 < this.b && f(j3 - 1) == ((byte) 13) && f(j3) == b) {
                return J(j3);
            }
            g gVar = new g();
            e(gVar, 0, Math.min((long) 32, this.b));
            StringBuilder o = f.b.a.a.a.o("\\n not found: limit=");
            o.append(Math.min(this.b, j2));
            o.append(" content=");
            o.append(j.c0.a.j(gVar.F()));
            o.append((char) 8230);
            throw new EOFException(o.toString());
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("limit < 0: ", j2).toString());
    }

    @Override // j.j
    public long w(y yVar) throws IOException {
        long j2 = this.b;
        if (j2 > 0) {
            yVar.j(this, j2);
        }
        return j2;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i2 = remaining;
            while (i2 > 0) {
                v L = L(1);
                int min = Math.min(i2, 8192 - L.f6990c);
                byteBuffer.get(L.a, L.f6990c, min);
                i2 -= min;
                L.f6990c += min;
            }
            this.b += (long) remaining;
            return remaining;
        }
        h.o.c.g.f("source");
        throw null;
    }

    @Override // j.j
    public void x(long j2) throws EOFException {
        if (this.b < j2) {
            throw new EOFException();
        }
    }

    @Override // j.i
    public /* bridge */ /* synthetic */ i y(String str) {
        c0(str);
        return this;
    }

    /* compiled from: Buffer.kt */
    /* loaded from: classes.dex */
    public static final class a extends InputStream {
        public final /* synthetic */ g a;

        /* JADX WARN: Incorrect args count in method signature: ()V */
        public a(g gVar) {
            this.a = gVar;
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(this.a.b, (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            g gVar = this.a;
            if (gVar.b > 0) {
                return gVar.readByte() & 255;
            }
            return -1;
        }

        @Override // java.lang.Object
        public String toString() {
            return this.a + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            if (bArr != null) {
                return this.a.read(bArr, i2, i3);
            }
            h.o.c.g.f("sink");
            throw null;
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            v vVar = this.a;
            if (vVar == null) {
                return -1;
            }
            int min = Math.min(byteBuffer.remaining(), vVar.f6990c - vVar.b);
            byteBuffer.put(vVar.a, vVar.b, min);
            int i2 = vVar.b + min;
            vVar.b = i2;
            this.b -= (long) min;
            if (i2 == vVar.f6990c) {
                this.a = vVar.a();
                w.a(vVar);
            }
            return min;
        }
        h.o.c.g.f("sink");
        throw null;
    }
}
