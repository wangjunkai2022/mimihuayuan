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

    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a1 A[EDGE_INSN: B:47:0x00a1->B:39:0x00a1 ?: BREAK  , SYNTHETIC] */
    @Override // j.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long A() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lad
            r0 = 0
            r1 = 0
            r4 = r2
        Lb:
            j.v r6 = r15.a
            if (r6 == 0) goto La8
            byte[] r7 = r6.a
            int r8 = r6.b
            int r9 = r6.f6990c
        L15:
            if (r8 >= r9) goto L8d
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L26
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L26
            int r11 = r10 - r11
            goto L3f
        L26:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L31
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L31
            goto L3b
        L31:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L72
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L72
        L3b:
            int r11 = r10 - r11
            int r11 = r11 + 10
        L3f:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4f
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L15
        L4f:
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
        L72:
            if (r0 == 0) goto L76
            r1 = 1
            goto L8d
        L76:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = f.b.a.a.a.o(r1)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8d:
            if (r8 != r9) goto L99
            j.v r7 = r6.a()
            r15.a = r7
            j.w.a(r6)
            goto L9b
        L99:
            r6.b = r8
        L9b:
            if (r1 != 0) goto La1
            j.v r6 = r15.a
            if (r6 != 0) goto Lb
        La1:
            long r1 = r15.b
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.b = r1
            return r4
        La8:
            h.o.c.g.e()
            r0 = 0
            throw r0
        Lad:
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
        return new a();
    }

    @Override // j.j
    public int D(r rVar) {
        if (rVar != null) {
            int K = K(rVar, false);
            if (K == -1) {
                return -1;
            }
            skip(rVar.a[K].b());
            return K;
        }
        h.o.c.g.f("options");
        throw null;
    }

    public byte[] E(long j2) throws EOFException {
        int i2 = 0;
        if (j2 >= 0 && j2 <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            if (this.b >= j2) {
                int i3 = (int) j2;
                byte[] bArr = new byte[i3];
                while (i2 < i3) {
                    int read = read(bArr, i2, i3 - i2);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    i2 += read;
                }
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount: ", j2).toString());
    }

    public k F() {
        return new k(o());
    }

    public short G() throws EOFException {
        int readShort = readShort() & ISelectionInterface.HELD_NOTHING;
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    public String H(long j2, Charset charset) throws EOFException {
        if (charset == null) {
            h.o.c.g.f("charset");
            throw null;
        }
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if (i2 >= 0 && j2 <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            if (this.b >= j2) {
                if (i2 == 0) {
                    return "";
                }
                v vVar = this.a;
                if (vVar != null) {
                    int i3 = vVar.b;
                    if (i3 + j2 > vVar.f6990c) {
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
            throw new EOFException();
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount: ", j2).toString());
    }

    public String I() {
        return H(this.b, h.s.a.a);
    }

    public final String J(long j2) throws EOFException {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (f(j3) == ((byte) 13)) {
                String H = H(j3, h.s.a.a);
                skip(2L);
                return H;
            }
        }
        String H2 = H(j2, h.s.a.a);
        skip(1L);
        return H2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0051, code lost:
        if (r19 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
        return r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int K(j.r r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: j.g.K(j.r, boolean):int");
    }

    public final v L(int i2) {
        boolean z = true;
        if ((i2 < 1 || i2 > 8192) ? false : false) {
            v vVar = this.a;
            if (vVar == null) {
                v b = w.b();
                this.a = b;
                b.f6994g = b;
                b.f6993f = b;
                return b;
            } else if (vVar != null) {
                v vVar2 = vVar.f6994g;
                if (vVar2 != null) {
                    if (vVar2.f6990c + i2 > 8192 || !vVar2.f6992e) {
                        v b2 = w.b();
                        vVar2.b(b2);
                        return b2;
                    }
                    return vVar2;
                }
                h.o.c.g.e();
                throw null;
            } else {
                h.o.c.g.e();
                throw null;
            }
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
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
            long j2 = i3;
            b.i(bArr.length, i2, j2);
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
        if (a0Var == null) {
            h.o.c.g.f("source");
            throw null;
        }
        long j2 = 0;
        while (true) {
            long c2 = a0Var.c(this, 8192);
            if (c2 == -1) {
                return j2;
            }
            j2 += c2;
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

    @Override // j.i
    /* renamed from: R */
    public g z(long j2) {
        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
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
            long j3 = 10;
            i4--;
            bArr[i4] = f6977c[(int) (j2 % j3)];
            j2 /= j3;
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        L.f6990c += i3;
        this.b += i3;
        return this;
    }

    @Override // j.i
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
        this.b += numberOfTrailingZeros;
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
        if (charset == null) {
            h.o.c.g.f("charset");
            throw null;
        }
        if (i2 >= 0) {
            if (i3 >= i2) {
                if (i3 <= str.length()) {
                    if (h.o.c.g.a(charset, h.s.a.a)) {
                        d0(str, i2, i3);
                        return this;
                    }
                    String substring = str.substring(i2, i3);
                    h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    byte[] bytes = substring.getBytes(charset);
                    h.o.c.g.b(bytes, "(this as java.lang.String).getBytes(charset)");
                    O(bytes, 0, bytes.length);
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

    @Override // j.a0
    public long c(g gVar, long j2) {
        if (gVar == null) {
            h.o.c.g.f("sink");
            throw null;
        }
        if (j2 >= 0) {
            long j3 = this.b;
            if (j3 == 0) {
                return -1L;
            }
            if (j2 > j3) {
                j2 = j3;
            }
            gVar.j(this, j2);
            return j2;
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("byteCount < 0: ", j2).toString());
    }

    public g c0(String str) {
        if (str != null) {
            d0(str, 0, str.length());
            return this;
        }
        h.o.c.g.f("string");
        throw null;
    }

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
                        if (vVar4 == null) {
                            h.o.c.g.e();
                            throw null;
                        }
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
            return 0L;
        }
        v vVar = this.a;
        if (vVar == null) {
            h.o.c.g.e();
            throw null;
        }
        v vVar2 = vVar.f6994g;
        if (vVar2 != null) {
            int i2 = vVar2.f6990c;
            return (i2 >= 8192 || !vVar2.f6992e) ? j2 : j2 - (i2 - vVar2.b);
        }
        h.o.c.g.e();
        throw null;
    }

    public g d0(String str, int i2, int i3) {
        char charAt;
        if (i2 >= 0) {
            if (i3 >= i2) {
                if (!(i3 <= str.length())) {
                    StringBuilder p = f.b.a.a.a.p("endIndex > string.length: ", i3, " > ");
                    p.append(str.length());
                    throw new IllegalArgumentException(p.toString().toString());
                }
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
                        this.b += i7;
                    } else {
                        if (charAt2 < 2048) {
                            v L2 = L(2);
                            byte[] bArr2 = L2.a;
                            int i8 = L2.f6990c;
                            bArr2[i8] = (byte) ((charAt2 >> 6) | 192);
                            bArr2[i8 + 1] = (byte) ((charAt2 & '?') | 128);
                            L2.f6990c = i8 + 2;
                            this.b += 2;
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i9 = i2 + 1;
                            char charAt3 = i9 < i3 ? str.charAt(i9) : (char) 0;
                            if (charAt2 <= 56319 && 56320 <= charAt3 && 57343 >= charAt3) {
                                int i10 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                v L3 = L(4);
                                byte[] bArr3 = L3.a;
                                int i11 = L3.f6990c;
                                bArr3[i11] = (byte) ((i10 >> 18) | TbsListener.ErrorCode.TPATCH_VERSION_FAILED);
                                bArr3[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                                bArr3[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                                bArr3[i11 + 3] = (byte) ((i10 & 63) | 128);
                                L3.f6990c = i11 + 4;
                                this.b += 4;
                                i2 += 2;
                            } else {
                                Q(63);
                                i2 = i9;
                            }
                        } else {
                            v L4 = L(3);
                            byte[] bArr4 = L4.a;
                            int i12 = L4.f6990c;
                            bArr4[i12] = (byte) ((charAt2 >> '\f') | TbsListener.ErrorCode.EXCEED_INCR_UPDATE);
                            bArr4[i12 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                            bArr4[i12 + 2] = (byte) ((charAt2 & '?') | 128);
                            L4.f6990c = i12 + 3;
                            this.b += 3;
                        }
                        i2++;
                    }
                }
                return this;
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i3 + " < " + i2).toString());
        }
        throw new IllegalArgumentException(f.b.a.a.a.J("beginIndex < 0: ", i2).toString());
    }

    public final g e(g gVar, long j2, long j3) {
        if (gVar != null) {
            b.i(this.b, j2, j3);
            if (j3 == 0) {
                return this;
            }
            gVar.b += j3;
            v vVar = this.a;
            while (vVar != null) {
                int i2 = vVar.f6990c;
                int i3 = vVar.b;
                if (j2 < i2 - i3) {
                    while (j3 > 0) {
                        if (vVar != null) {
                            v c2 = vVar.c();
                            int i4 = c2.b + ((int) j2);
                            c2.b = i4;
                            c2.f6990c = Math.min(i4 + ((int) j3), c2.f6990c);
                            v vVar2 = gVar.a;
                            if (vVar2 == null) {
                                c2.f6994g = c2;
                                c2.f6993f = c2;
                                gVar.a = c2;
                            } else if (vVar2 == null) {
                                h.o.c.g.e();
                                throw null;
                            } else {
                                v vVar3 = vVar2.f6994g;
                                if (vVar3 == null) {
                                    h.o.c.g.e();
                                    throw null;
                                }
                                vVar3.b(c2);
                            }
                            j3 -= c2.f6990c - c2.b;
                            vVar = vVar.f6993f;
                            j2 = 0;
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    }
                    return this;
                }
                j2 -= i2 - i3;
                vVar = vVar.f6993f;
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.f("out");
        throw null;
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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
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
                        long min = Math.min(vVar.f6990c - i2, vVar2.f6990c - i3);
                        long j5 = j3;
                        while (j5 < min) {
                            int i4 = i2 + 1;
                            int i5 = i3 + 1;
                            if (vVar.a[i2] != vVar2.a[i3]) {
                                return false;
                            }
                            j5++;
                            i2 = i4;
                            i3 = i5;
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
        return false;
    }

    public final byte f(long j2) {
        b.i(this.b, j2, 1L);
        v vVar = this.a;
        if (vVar != null) {
            long j3 = this.b;
            if (j3 - j2 < j2) {
                while (j3 > j2) {
                    vVar = vVar.f6994g;
                    if (vVar != null) {
                        j3 -= vVar.f6990c - vVar.b;
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                return vVar.a[(int) ((vVar.b + j2) - j3)];
            }
            long j4 = 0;
            while (true) {
                int i2 = vVar.f6990c;
                int i3 = vVar.b;
                long j5 = (i2 - i3) + j4;
                if (j5 > j2) {
                    return vVar.a[(int) ((i3 + j2) - j4)];
                }
                vVar = vVar.f6993f;
                if (vVar == null) {
                    h.o.c.g.e();
                    throw null;
                }
                j4 = j5;
            }
        } else {
            h.o.c.g.e();
            throw null;
        }
    }

    @Override // j.i, j.y, java.io.Flushable
    public void flush() {
    }

    public long g(byte b, long j2, long j3) {
        v vVar;
        long j4 = j2;
        long j5 = j3;
        long j6 = 0;
        if (0 <= j4 && j5 >= j4) {
            long j7 = this.b;
            if (j5 > j7) {
                j5 = j7;
            }
            long j8 = -1;
            if (j4 == j5 || (vVar = this.a) == null) {
                return -1L;
            }
            long j9 = this.b;
            if (j9 - j4 < j4) {
                while (j9 > j4) {
                    vVar = vVar.f6994g;
                    if (vVar != null) {
                        j9 -= vVar.f6990c - vVar.b;
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                while (j9 < j5) {
                    byte[] bArr = vVar.a;
                    int min = (int) Math.min(vVar.f6990c, (vVar.b + j5) - j9);
                    for (int i2 = (int) ((vVar.b + j4) - j9); i2 < min; i2++) {
                        if (bArr[i2] == b) {
                            return (i2 - vVar.b) + j9;
                        }
                    }
                    j9 += vVar.f6990c - vVar.b;
                    vVar = vVar.f6993f;
                    if (vVar == null) {
                        h.o.c.g.e();
                        throw null;
                    }
                    j8 = -1;
                    j4 = j9;
                }
                return j8;
            }
            while (true) {
                long j10 = (vVar.f6990c - vVar.b) + j6;
                if (j10 > j4) {
                    while (j6 < j5) {
                        byte[] bArr2 = vVar.a;
                        int min2 = (int) Math.min(vVar.f6990c, (vVar.b + j5) - j6);
                        for (int i3 = (int) ((vVar.b + j4) - j6); i3 < min2; i3++) {
                            if (bArr2[i3] == b) {
                                return (i3 - vVar.b) + j6;
                            }
                        }
                        j6 += vVar.f6990c - vVar.b;
                        vVar = vVar.f6993f;
                        if (vVar == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        j4 = j6;
                    }
                    return -1L;
                }
                vVar = vVar.f6993f;
                if (vVar == null) {
                    h.o.c.g.e();
                    throw null;
                }
                j6 = j10;
            }
        } else {
            StringBuilder o = f.b.a.a.a.o("size=");
            o.append(this.b);
            o.append(" fromIndex=");
            o.append(j4);
            o.append(" toIndex=");
            o.append(j5);
            throw new IllegalArgumentException(o.toString().toString());
        }
    }

    @Override // j.j, j.i
    public g h() {
        return this;
    }

    public int hashCode() {
        v vVar = this.a;
        if (vVar != null) {
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
        return 0;
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
        v b;
        if (gVar == null) {
            h.o.c.g.f("source");
            throw null;
        }
        if (gVar != this) {
            b.i(gVar.b, 0L, j2);
            while (j2 > 0) {
                v vVar2 = gVar.a;
                if (vVar2 == null) {
                    h.o.c.g.e();
                    throw null;
                }
                int i2 = vVar2.f6990c;
                if (vVar2 != null) {
                    if (j2 < i2 - vVar2.b) {
                        v vVar3 = this.a;
                        if (vVar3 == null) {
                            vVar = null;
                        } else if (vVar3 == null) {
                            h.o.c.g.e();
                            throw null;
                        } else {
                            vVar = vVar3.f6994g;
                        }
                        if (vVar != null && vVar.f6992e) {
                            if ((vVar.f6990c + j2) - (vVar.f6991d ? 0 : vVar.b) <= 8192) {
                                v vVar4 = gVar.a;
                                if (vVar4 != null) {
                                    vVar4.d(vVar, (int) j2);
                                    gVar.b -= j2;
                                    this.b += j2;
                                    return;
                                }
                                h.o.c.g.e();
                                throw null;
                            }
                        }
                        v vVar5 = gVar.a;
                        if (vVar5 == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        int i3 = (int) j2;
                        if (vVar5 != null) {
                            if (i3 > 0 && i3 <= vVar5.f6990c - vVar5.b) {
                                if (i3 >= 1024) {
                                    b = vVar5.c();
                                } else {
                                    b = w.b();
                                    b.c(vVar5.a, vVar5.b, b.a, 0, i3);
                                }
                                b.f6990c = b.b + i3;
                                vVar5.b += i3;
                                v vVar6 = vVar5.f6994g;
                                if (vVar6 != null) {
                                    vVar6.b(b);
                                    gVar.a = b;
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
                    }
                    v vVar7 = gVar.a;
                    if (vVar7 != null) {
                        long j3 = vVar7.f6990c - vVar7.b;
                        gVar.a = vVar7.a();
                        v vVar8 = this.a;
                        if (vVar8 == null) {
                            this.a = vVar7;
                            vVar7.f6994g = vVar7;
                            vVar7.f6993f = vVar7;
                        } else if (vVar8 != null) {
                            v vVar9 = vVar8.f6994g;
                            if (vVar9 != null) {
                                vVar9.b(vVar7);
                                if (vVar7.f6994g != vVar7) {
                                    v vVar10 = vVar7.f6994g;
                                    if (vVar10 == null) {
                                        h.o.c.g.e();
                                        throw null;
                                    } else if (vVar10.f6992e) {
                                        int i4 = vVar7.f6990c - vVar7.b;
                                        if (i4 <= (8192 - vVar10.f6990c) + (vVar10.f6991d ? 0 : vVar10.b)) {
                                            v vVar11 = vVar7.f6994g;
                                            if (vVar11 != null) {
                                                vVar7.d(vVar11, i4);
                                                vVar7.a();
                                                w.a(vVar7);
                                            } else {
                                                h.o.c.g.e();
                                                throw null;
                                            }
                                        } else {
                                            continue;
                                        }
                                    } else {
                                        continue;
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
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
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
        b.i(bArr.length, i2, i3);
        v vVar = this.a;
        if (vVar != null) {
            int min = Math.min(i3, vVar.f6990c - vVar.b);
            System.arraycopy(vVar.a, vVar.b, bArr, i2, min);
            int i4 = vVar.b + min;
            vVar.b = i4;
            this.b -= min;
            if (i4 == vVar.f6990c) {
                this.a = vVar.a();
                w.a(vVar);
            }
            return min;
        }
        return -1;
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
                if (i3 - i2 < 4) {
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
                int min = (int) Math.min(j2, vVar.f6990c - vVar.b);
                long j3 = min;
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

    public String toString() {
        k xVar;
        int i2 = 0;
        if (this.b <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            long j2 = this.b;
            int i3 = (int) j2;
            if (i3 == 0) {
                xVar = k.f6978d;
            } else {
                b.i(j2, 0L, i3);
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
                xVar = new x(bArr, iArr, null);
            }
            return xVar.toString();
        }
        StringBuilder o = f.b.a.a.a.o("size > Integer.MAX_VALUE: ");
        o.append(this.b);
        throw new IllegalStateException(o.toString().toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a7 A[EDGE_INSN: B:50:0x00a7->B:40:0x00a7 ?: BREAK  , SYNTHETIC] */
    @Override // j.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long u() throws java.io.EOFException {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.b
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto Lb7
            r1 = -7
            r5 = 0
            r6 = 0
            r7 = 0
        Lf:
            j.v r8 = r0.a
            if (r8 == 0) goto Lb2
            byte[] r9 = r8.a
            int r10 = r8.b
            int r11 = r8.f6990c
        L19:
            if (r10 >= r11) goto L93
            r12 = r9[r10]
            r13 = 48
            byte r13 = (byte) r13
            if (r12 < r13) goto L68
            r14 = 57
            byte r14 = (byte) r14
            if (r12 > r14) goto L68
            int r13 = r13 - r12
            r14 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r16 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r16 < 0) goto L40
            if (r16 != 0) goto L39
            long r14 = (long) r13
            int r16 = (r14 > r1 ? 1 : (r14 == r1 ? 0 : -1))
            if (r16 >= 0) goto L39
            goto L40
        L39:
            r14 = 10
            long r3 = r3 * r14
            long r12 = (long) r13
            long r3 = r3 + r12
            goto L73
        L40:
            j.g r1 = new j.g
            r1.<init>()
            j.g r1 = r1.z(r3)
            r1.Q(r12)
            if (r6 != 0) goto L51
            r1.readByte()
        L51:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.String r3 = "Number too large: "
            java.lang.StringBuilder r3 = f.b.a.a.a.o(r3)
            java.lang.String r1 = r1.I()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L68:
            r13 = 45
            byte r13 = (byte) r13
            if (r12 != r13) goto L78
            if (r5 != 0) goto L78
            r12 = 1
            long r1 = r1 - r12
            r6 = 1
        L73:
            int r10 = r10 + 1
            int r5 = r5 + 1
            goto L19
        L78:
            if (r5 == 0) goto L7c
            r7 = 1
            goto L93
        L7c:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            java.lang.StringBuilder r2 = f.b.a.a.a.o(r2)
            java.lang.String r3 = java.lang.Integer.toHexString(r12)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L93:
            if (r10 != r11) goto L9f
            j.v r9 = r8.a()
            r0.a = r9
            j.w.a(r8)
            goto La1
        L9f:
            r8.b = r10
        La1:
            if (r7 != 0) goto La7
            j.v r8 = r0.a
            if (r8 != 0) goto Lf
        La7:
            long r1 = r0.b
            long r7 = (long) r5
            long r1 = r1 - r7
            r0.b = r1
            if (r6 == 0) goto Lb0
            goto Lb1
        Lb0:
            long r3 = -r3
        Lb1:
            return r3
        Lb2:
            h.o.c.g.e()
            r1 = 0
            throw r1
        Lb7:
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
            long g2 = g(b, 0L, j3);
            if (g2 != -1) {
                return J(g2);
            }
            if (j3 < this.b && f(j3 - 1) == ((byte) 13) && f(j3) == b) {
                return J(j3);
            }
            g gVar = new g();
            e(gVar, 0L, Math.min(32, this.b));
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
            this.b += remaining;
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
        public a() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(g.this.b, (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            g gVar = g.this;
            if (gVar.b > 0) {
                return gVar.readByte() & 255;
            }
            return -1;
        }

        public String toString() {
            return g.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            if (bArr != null) {
                return g.this.read(bArr, i2, i3);
            }
            h.o.c.g.f("sink");
            throw null;
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            v vVar = this.a;
            if (vVar != null) {
                int min = Math.min(byteBuffer.remaining(), vVar.f6990c - vVar.b);
                byteBuffer.put(vVar.a, vVar.b, min);
                int i2 = vVar.b + min;
                vVar.b = i2;
                this.b -= min;
                if (i2 == vVar.f6990c) {
                    this.a = vVar.a();
                    w.a(vVar);
                }
                return min;
            }
            return -1;
        }
        h.o.c.g.f("sink");
        throw null;
    }
}
