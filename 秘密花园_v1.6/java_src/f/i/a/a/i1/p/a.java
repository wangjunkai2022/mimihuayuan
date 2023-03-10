package f.i.a.a.i1.p;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
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
        if (list != null && !list.isEmpty()) {
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
            return;
        }
        this.n = false;
    }

    public static long m(String str) {
        Matcher matcher = s.matcher(str);
        if (matcher.matches()) {
            long parseLong = (Long.parseLong(matcher.group(2)) * 60 * 1000000) + (Long.parseLong(matcher.group(1)) * 60 * 60 * 1000000);
            return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + parseLong;
        }
        return -9223372036854775807L;
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
            if (e3 != null) {
                if (!this.n && e3.startsWith("Format: ")) {
                    l(e3);
                } else if (e3.startsWith("Dialogue: ") && this.o != 0) {
                    String[] split = e3.substring(10).split(",", this.o);
                    if (split.length == this.o) {
                        long m2 = m(split[this.p]);
                        if (m2 != -9223372036854775807L) {
                            String str = split[this.q];
                            if (str.trim().isEmpty()) {
                                j2 = -9223372036854775807L;
                            } else {
                                j2 = m(str);
                                if (j2 == -9223372036854775807L) {
                                }
                            }
                            arrayList.add(new f.i.a.a.i1.b(split[this.r].replaceAll("\\{.*?\\}", "").replaceAll("\\\\N", com.umeng.commonsdk.internal.utils.g.a).replaceAll("\\\\n", com.umeng.commonsdk.internal.utils.g.a)));
                            if (i3 == jArr.length) {
                                jArr = Arrays.copyOf(jArr, i3 * 2);
                            }
                            int i4 = i3 + 1;
                            jArr[i3] = m2;
                            if (j2 != -9223372036854775807L) {
                                arrayList.add(f.i.a.a.i1.b.o);
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
            } else {
                f.i.a.a.i1.b[] bVarArr = new f.i.a.a.i1.b[arrayList.size()];
                arrayList.toArray(bVarArr);
                return new b(bVarArr, Arrays.copyOf(jArr, i3));
            }
        }
    }

    public final void l(String str) {
        char c2;
        String[] split = TextUtils.split(str.substring(8), ",");
        this.o = split.length;
        this.p = -1;
        this.q = -1;
        this.r = -1;
        for (int i2 = 0; i2 < this.o; i2++) {
            String p0 = h0.p0(split[i2].trim());
            int hashCode = p0.hashCode();
            if (hashCode == 100571) {
                if (p0.equals("end")) {
                    c2 = 1;
                }
                c2 = 65535;
            } else if (hashCode != 3556653) {
                if (hashCode == 109757538 && p0.equals("start")) {
                    c2 = 0;
                }
                c2 = 65535;
            } else {
                if (p0.equals("text")) {
                    c2 = 2;
                }
                c2 = 65535;
            }
            if (c2 == 0) {
                this.p = i2;
            } else if (c2 == 1) {
                this.q = i2;
            } else if (c2 == 2) {
                this.r = i2;
            }
        }
        if (this.p == -1 || this.q == -1 || this.r == -1) {
            this.o = 0;
        }
    }
}
