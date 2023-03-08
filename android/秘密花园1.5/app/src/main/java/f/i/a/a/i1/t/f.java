package f.i.a.a.i1.t;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.NonNull;
import f.i.a.a.i1.t.e;
import f.i.a.a.m1.u;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttCueParser.java */
/* loaded from: classes.dex */
public final class f {
    public static final Pattern b = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f5452c = Pattern.compile("(\\S+?):(\\S+)");
    public final StringBuilder a = new StringBuilder();

    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final String[] f5453e = new String[0];
        public final String a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final String f5454c;

        /* renamed from: d  reason: collision with root package name */
        public final String[] f5455d;

        public a(String str, int i2, String str2, String[] strArr) {
            this.b = i2;
            this.a = str;
            this.f5454c = str2;
            this.f5455d = strArr;
        }
    }

    /* compiled from: WebvttCueParser.java */
    /* loaded from: classes.dex */
    public static final class b implements Comparable<b> {
        public final int a;
        public final d b;

        public b(int i2, d dVar) {
            this.a = i2;
            this.b = dVar;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull b bVar) {
            return this.a - bVar.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v18 */
    public static void a(String str, a aVar, SpannableStringBuilder spannableStringBuilder, List<d> list, List<b> list2) {
        char c2;
        int i2;
        int i3;
        int size;
        int i4 = aVar.b;
        int length = spannableStringBuilder.length();
        String str2 = aVar.a;
        int hashCode = str2.hashCode();
        int i5 = 0;
        if (hashCode == 0) {
            if (str2.equals("")) {
                c2 = 6;
            }
            c2 = 65535;
        } else if (hashCode == 105) {
            if (str2.equals(com.umeng.commonsdk.proguard.e.aq)) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode == 3314158) {
            if (str2.equals("lang")) {
                c2 = 4;
            }
            c2 = 65535;
        } else if (hashCode == 98) {
            if (str2.equals("b")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode == 99) {
            if (str2.equals("c")) {
                c2 = 3;
            }
            c2 = 65535;
        } else if (hashCode != 117) {
            if (hashCode == 118 && str2.equals("v")) {
                c2 = 5;
            }
            c2 = 65535;
        } else {
            if (str2.equals("u")) {
                c2 = 2;
            }
            c2 = 65535;
        }
        switch (c2) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i4, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, length, 33);
                break;
            case 2:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, 33);
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                break;
            default:
                return;
        }
        list2.clear();
        int size2 = list.size();
        int i6 = 0;
        while (i6 < size2) {
            d dVar = list.get(i6);
            String str3 = aVar.a;
            String[] strArr = aVar.f5455d;
            String str4 = aVar.f5454c;
            if (dVar.a.isEmpty() && dVar.b.isEmpty() && dVar.f5433c.isEmpty() && dVar.f5434d.isEmpty()) {
                size = str3.isEmpty();
            } else {
                int b2 = d.b(d.b(d.b(i5, dVar.a, str, 1073741824), dVar.b, str3, 2), dVar.f5434d, str4, 4);
                size = (b2 == -1 || !Arrays.asList(strArr).containsAll(dVar.f5433c)) ? 0 : b2 + (dVar.f5433c.size() * 4);
            }
            if (size > 0) {
                list2.add(new b(size, dVar));
            }
            i6++;
            i5 = 0;
        }
        Collections.sort(list2);
        int size3 = list2.size();
        for (int i7 = 0; i7 < size3; i7++) {
            d dVar2 = list2.get(i7).b;
            if (dVar2 != null) {
                if (dVar2.a() != -1) {
                    i2 = 33;
                    spannableStringBuilder.setSpan(new StyleSpan(dVar2.a()), i4, length, 33);
                } else {
                    i2 = 33;
                }
                if (dVar2.f5440j == 1) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i4, length, i2);
                }
                if (dVar2.f5441k == 1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, i2);
                }
                if (dVar2.f5437g) {
                    if (dVar2.f5437g) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(dVar2.f5436f), i4, length, i2);
                    } else {
                        throw new IllegalStateException("Font color not defined");
                    }
                }
                if (dVar2.f5439i) {
                    if (dVar2.f5439i) {
                        spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar2.f5438h), i4, length, 33);
                    } else {
                        throw new IllegalStateException("Background color not defined.");
                    }
                }
                if (dVar2.f5435e != null) {
                    i3 = 33;
                    spannableStringBuilder.setSpan(new TypefaceSpan(dVar2.f5435e), i4, length, 33);
                } else {
                    i3 = 33;
                }
                if (dVar2.o != null) {
                    spannableStringBuilder.setSpan(new AlignmentSpan.Standard(dVar2.o), i4, length, i3);
                }
                int i8 = dVar2.n;
                if (i8 == 1) {
                    spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) 0.0f, true), i4, length, i3);
                } else if (i8 == 2) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.0f), i4, length, i3);
                } else if (i8 == 3) {
                    spannableStringBuilder.setSpan(new RelativeSizeSpan(0.0f), i4, length, i3);
                }
            }
        }
    }

    public static boolean b(String str, Matcher matcher, u uVar, e.b bVar, StringBuilder sb, List<d> list) {
        try {
            bVar.a = h.c(matcher.group(1));
            bVar.b = h.c(matcher.group(2));
            c(matcher.group(3), bVar);
            sb.setLength(0);
            while (true) {
                String e2 = uVar.e();
                if (!TextUtils.isEmpty(e2)) {
                    if (sb.length() > 0) {
                        sb.append(com.umeng.commonsdk.internal.utils.g.a);
                    }
                    sb.append(e2.trim());
                } else {
                    d(str, sb.toString(), bVar, list);
                    return true;
                }
            }
        } catch (NumberFormatException unused) {
            matcher.group();
            return false;
        }
    }

    public static void c(String str, e.b bVar) {
        Matcher matcher = f5452c.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if ("line".equals(group)) {
                    int indexOf = group2.indexOf(44);
                    if (indexOf != -1) {
                        bVar.f5448g = e(group2.substring(indexOf + 1));
                        group2 = group2.substring(0, indexOf);
                    } else {
                        bVar.f5448g = Integer.MIN_VALUE;
                    }
                    if (group2.endsWith("%")) {
                        bVar.f5446e = h.b(group2);
                        bVar.f5447f = 0;
                    } else {
                        int parseInt = Integer.parseInt(group2);
                        if (parseInt < 0) {
                            parseInt--;
                        }
                        bVar.f5446e = parseInt;
                        bVar.f5447f = 1;
                    }
                } else if ("align".equals(group)) {
                    bVar.f5445d = f(group2);
                } else if ("position".equals(group)) {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        bVar.f5450i = e(group2.substring(indexOf2 + 1));
                        group2 = group2.substring(0, indexOf2);
                    } else {
                        bVar.f5450i = Integer.MIN_VALUE;
                    }
                    bVar.f5449h = h.b(group2);
                } else if ("size".equals(group)) {
                    bVar.f5451j = h.b(group2);
                }
            } catch (NumberFormatException unused) {
                matcher.group();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void d(java.lang.String r17, java.lang.String r18, f.i.a.a.i1.t.e.b r19, java.util.List<f.i.a.a.i1.t.d> r20) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.t.f.d(java.lang.String, java.lang.String, f.i.a.a.i1.t.e$b, java.util.List):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int e(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 100571:
                if (str.equals("end")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 109757538:
                if (str.equals("start")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0) {
            if (c2 == 1 || c2 == 2) {
                return 1;
            }
            return c2 != 3 ? Integer.MIN_VALUE : 2;
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Layout.Alignment f(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 100571:
                if (str.equals("end")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 3317767:
                if (str.equals("left")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 108511772:
                if (str.equals("right")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 109757538:
                if (str.equals("start")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0 || c2 == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (c2 == 2 || c2 == 3) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (c2 == 4 || c2 == 5) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return null;
    }
}
