package f.i.a.a.i1.q;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import f.i.a.a.i1.c;
import f.i.a.a.i1.e;
import f.i.a.a.i1.g;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: SubripDecoder.java */
/* loaded from: classes.dex */
public final class a extends c {
    public static final Pattern p = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");
    public static final Pattern q = Pattern.compile("\\{\\\\.*?\\}");
    public final StringBuilder n;
    public final ArrayList<String> o;

    public a() {
        super("SubripDecoder");
        this.n = new StringBuilder();
        this.o = new ArrayList<>();
    }

    public static float l(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    public static long m(Matcher matcher, int i2) {
        long parseLong = (Long.parseLong(matcher.group(i2 + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i2 + 1)) * 60 * 60 * 1000);
        return (Long.parseLong(matcher.group(i2 + 4)) + (Long.parseLong(matcher.group(i2 + 3)) * 1000) + parseLong) * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // f.i.a.a.i1.c
    public e k(byte[] bArr, int i2, boolean z) throws g {
        u uVar;
        String e2;
        boolean z2;
        long[] jArr;
        char c2;
        int i3;
        char c3;
        f.i.a.a.i1.b bVar;
        a aVar = this;
        ArrayList arrayList = new ArrayList();
        long[] jArr2 = new long[32];
        u uVar2 = new u(bArr, i2);
        int i4 = 0;
        int i5 = 0;
        while (true) {
            String e3 = uVar2.e();
            if (e3 != null) {
                if (e3.length() != 0) {
                    try {
                        Integer.parseInt(e3);
                        e2 = uVar2.e();
                    } catch (NumberFormatException unused) {
                    }
                    if (e2 != null) {
                        Matcher matcher = p.matcher(e2);
                        if (matcher.matches()) {
                            long m2 = m(matcher, 1);
                            if (i5 == jArr2.length) {
                                jArr2 = Arrays.copyOf(jArr2, i5 * 2);
                            }
                            int i6 = i5 + 1;
                            jArr2[i5] = m2;
                            if (TextUtils.isEmpty(matcher.group(6))) {
                                z2 = false;
                            } else {
                                long m3 = m(matcher, 6);
                                if (i6 == jArr2.length) {
                                    jArr2 = Arrays.copyOf(jArr2, i6 * 2);
                                }
                                jArr2[i6] = m3;
                                i6++;
                                z2 = true;
                            }
                            aVar.n.setLength(i4);
                            aVar.o.clear();
                            for (String e4 = uVar2.e(); !TextUtils.isEmpty(e4); e4 = uVar2.e()) {
                                if (aVar.n.length() > 0) {
                                    aVar.n.append("<br>");
                                }
                                StringBuilder sb = aVar.n;
                                ArrayList<String> arrayList2 = aVar.o;
                                String trim = e4.trim();
                                StringBuilder sb2 = new StringBuilder(trim);
                                Matcher matcher2 = q.matcher(trim);
                                int i7 = 0;
                                while (matcher2.find()) {
                                    String group = matcher2.group();
                                    arrayList2.add(group);
                                    int start = matcher2.start() - i7;
                                    int length = group.length();
                                    sb2.replace(start, start + length, "");
                                    i7 += length;
                                }
                                sb.append(sb2.toString());
                            }
                            Spanned fromHtml = Html.fromHtml(aVar.n.toString());
                            String str = null;
                            int i8 = 0;
                            while (true) {
                                if (i8 < aVar.o.size()) {
                                    String str2 = aVar.o.get(i8);
                                    if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                        str = str2;
                                    } else {
                                        i8++;
                                    }
                                }
                            }
                            if (str == null) {
                                bVar = new f.i.a.a.i1.b(fromHtml);
                                jArr = jArr2;
                                uVar = uVar2;
                                i3 = i6;
                            } else {
                                jArr = jArr2;
                                uVar = uVar2;
                                switch (str.hashCode()) {
                                    case -685620710:
                                        if (str.equals("{\\an1}")) {
                                            c2 = 0;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620679:
                                        if (str.equals("{\\an2}")) {
                                            c2 = 6;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620648:
                                        if (str.equals("{\\an3}")) {
                                            c2 = 3;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620617:
                                        if (str.equals("{\\an4}")) {
                                            c2 = 1;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620586:
                                        if (str.equals("{\\an5}")) {
                                            c2 = 7;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620555:
                                        if (str.equals("{\\an6}")) {
                                            c2 = 4;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620524:
                                        if (str.equals("{\\an7}")) {
                                            c2 = 2;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620493:
                                        if (str.equals("{\\an8}")) {
                                            c2 = '\b';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -685620462:
                                        if (str.equals("{\\an9}")) {
                                            c2 = 5;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    default:
                                        c2 = 65535;
                                        break;
                                }
                                i3 = i6;
                                int i9 = (c2 == 0 || c2 == 1 || c2 == 2) ? 0 : (c2 == 3 || c2 == 4 || c2 == 5) ? 2 : 1;
                                switch (str.hashCode()) {
                                    case -685620710:
                                        if (str.equals("{\\an1}")) {
                                            c3 = 0;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620679:
                                        if (str.equals("{\\an2}")) {
                                            c3 = 1;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620648:
                                        if (str.equals("{\\an3}")) {
                                            c3 = 2;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620617:
                                        if (str.equals("{\\an4}")) {
                                            c3 = 6;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620586:
                                        if (str.equals("{\\an5}")) {
                                            c3 = 7;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620555:
                                        if (str.equals("{\\an6}")) {
                                            c3 = '\b';
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620524:
                                        if (str.equals("{\\an7}")) {
                                            c3 = 3;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620493:
                                        if (str.equals("{\\an8}")) {
                                            c3 = 4;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    case -685620462:
                                        if (str.equals("{\\an9}")) {
                                            c3 = 5;
                                            break;
                                        }
                                        c3 = 65535;
                                        break;
                                    default:
                                        c3 = 65535;
                                        break;
                                }
                                int i10 = (c3 == 0 || c3 == 1 || c3 == 2) ? 2 : (c3 == 3 || c3 == 4 || c3 == 5) ? 0 : 1;
                                bVar = new f.i.a.a.i1.b(fromHtml, null, l(i10), 0, i10, l(i9), i9, Float.MIN_VALUE);
                            }
                            arrayList.add(bVar);
                            if (z2) {
                                arrayList.add(f.i.a.a.i1.b.o);
                            }
                            jArr2 = jArr;
                            i5 = i3;
                            aVar = this;
                            uVar2 = uVar;
                            i4 = 0;
                        }
                        uVar = uVar2;
                        aVar = this;
                        uVar2 = uVar;
                        i4 = 0;
                    }
                }
            }
        }
        f.i.a.a.i1.b[] bVarArr = new f.i.a.a.i1.b[arrayList.size()];
        arrayList.toArray(bVarArr);
        return new b(bVarArr, Arrays.copyOf(jArr2, i5));
    }
}
