package f.i.a.a.i1.p;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.i1.b;
import f.i.a.a.i1.c;
import f.i.a.a.i1.e;
import f.i.a.a.i1.g;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: SsaDecoder.java */
/* loaded from: classes.dex */
public final class a extends c {
    public static final Pattern s = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)");
    public final boolean n;
    public int o;
    public int p;
    public int q;
    public int r;

    public a(@Nullable List<byte[]> list) {
        super("SsaDecoder");
        String e2;
        if (list == null || list.isEmpty()) {
            this.n = false;
            return;
        }
        this.n = true;
        String v = h0.v(list.get(0));
        h.m(v.startsWith("Format: "));
        l(v);
        u uVar = new u(list.get(1));
        do {
            e2 = uVar.e();
            if (e2 == null) {
                return;
            }
        } while (!e2.startsWith("[Events]"));
    }

    public static long m(String str) {
        Matcher matcher = s.matcher(str);
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        long parseLong = (Long.parseLong(matcher.group(2)) * 60 * 1000000) + (Long.parseLong(matcher.group(1)) * 60 * 60 * 1000000);
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + parseLong;
    }

    @Override // f.i.a.a.i1.c
    public e k(byte[] bArr, int i2, boolean z) throws g {
        long j2;
        String e2;
        ArrayList arrayList = new ArrayList();
        long[] jArr = new long[32];
        u uVar = new u(bArr, i2);
        if (!this.n) {
            do {
                e2 = uVar.e();
                if (e2 == null) {
                    break;
                }
            } while (!e2.startsWith("[Events]"));
        }
        int i3 = 0;
        while (true) {
            String e3 = uVar.e();
            if (e3 == null) {
                b[] bVarArr = new b[arrayList.size()];
                arrayList.toArray(bVarArr);
                return new b(bVarArr, Arrays.copyOf(jArr, i3));
            } else if (!this.n && e3.startsWith("Format: ")) {
                l(e3);
            } else if (e3.startsWith("Dialogue: ") && this.o != 0) {
                String[] split = e3.substring(10).split(",", this.o);
                if (split.length == this.o) {
                    long m2 = m(split[this.p]);
                    if (m2 != -9223372036854775807L) {
                        String str = split[this.q];
                        if (!str.trim().isEmpty()) {
                            j2 = m(str);
                            if (j2 == -9223372036854775807L) {
                            }
                        } else {
                            j2 = -9223372036854775807L;
                        }
                        arrayList.add(new b(split[this.r].replaceAll("\\{.*?\\}", "").replaceAll("\\\\N", com.umeng.commonsdk.internal.utils.g.a).replaceAll("\\\\n", com.umeng.commonsdk.internal.utils.g.a)));
                        if (i3 == jArr.length) {
                            jArr = Arrays.copyOf(jArr, i3 * 2);
                        }
                        int i4 = i3 + 1;
                        jArr[i3] = m2;
                        if (j2 != -9223372036854775807L) {
                            arrayList.add(b.o);
                            if (i4 == jArr.length) {
                                jArr = Arrays.copyOf(jArr, i4 * 2);
                            }
                            i3 = i4 + 1;
                            jArr[i4] = j2;
                        } else {
                            i3 = i4;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0068  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void l(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 8
            java.lang.String r9 = r9.substring(r0)
            java.lang.String r0 = ","
            java.lang.String[] r9 = android.text.TextUtils.split(r9, r0)
            int r0 = r9.length
            r8.o = r0
            r0 = -1
            r8.p = r0
            r8.q = r0
            r8.r = r0
            r1 = 0
            r2 = 0
        L_0x0018:
            int r3 = r8.o
            if (r2 >= r3) goto L_0x006d
            r3 = r9[r2]
            java.lang.String r3 = r3.trim()
            java.lang.String r3 = f.i.a.a.m1.h0.p0(r3)
            int r4 = r3.hashCode()
            r5 = 100571(0x188db, float:1.4093E-40)
            r6 = 2
            r7 = 1
            if (r4 == r5) goto L_0x0050
            r5 = 3556653(0x36452d, float:4.983932E-39)
            if (r4 == r5) goto L_0x0046
            r5 = 109757538(0x68ac462, float:5.219839E-35)
            if (r4 == r5) goto L_0x003c
            goto L_0x005a
        L_0x003c:
            java.lang.String r4 = "start"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x005a
            r3 = 0
            goto L_0x005b
        L_0x0046:
            java.lang.String r4 = "text"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x005a
            r3 = 2
            goto L_0x005b
        L_0x0050:
            java.lang.String r4 = "end"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x005a
            r3 = 1
            goto L_0x005b
        L_0x005a:
            r3 = -1
        L_0x005b:
            if (r3 == 0) goto L_0x0068
            if (r3 == r7) goto L_0x0065
            if (r3 == r6) goto L_0x0062
            goto L_0x006a
        L_0x0062:
            r8.r = r2
            goto L_0x006a
        L_0x0065:
            r8.q = r2
            goto L_0x006a
        L_0x0068:
            r8.p = r2
        L_0x006a:
            int r2 = r2 + 1
            goto L_0x0018
        L_0x006d:
            int r9 = r8.p
            if (r9 == r0) goto L_0x0079
            int r9 = r8.q
            if (r9 == r0) goto L_0x0079
            int r9 = r8.r
            if (r9 != r0) goto L_0x007b
        L_0x0079:
            r8.o = r1
        L_0x007b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.p.a.l(java.lang.String):void");
    }
}
