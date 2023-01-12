package f.i.a.a.i1.r;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.umeng.commonsdk.internal.utils.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* compiled from: TtmlNode.java */
/* loaded from: classes.dex */
public final class b {
    @Nullable
    public final String a;
    @Nullable
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5401c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5402d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5403e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final d f5404f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String[] f5405g;

    /* renamed from: h  reason: collision with root package name */
    public final String f5406h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f5407i;

    /* renamed from: j  reason: collision with root package name */
    public final HashMap<String, Integer> f5408j;

    /* renamed from: k  reason: collision with root package name */
    public final HashMap<String, Integer> f5409k;

    /* renamed from: l  reason: collision with root package name */
    public List<b> f5410l;

    public b(@Nullable String str, @Nullable String str2, long j2, long j3, @Nullable d dVar, @Nullable String[] strArr, String str3, @Nullable String str4) {
        this.a = str;
        this.b = str2;
        this.f5407i = str4;
        this.f5404f = dVar;
        this.f5405g = strArr;
        this.f5401c = str2 != null;
        this.f5402d = j2;
        this.f5403e = j3;
        if (str3 != null) {
            this.f5406h = str3;
            this.f5408j = new HashMap<>();
            this.f5409k = new HashMap<>();
            return;
        }
        throw null;
    }

    public static b b(String str) {
        return new b(null, str.replaceAll("\r\n", g.a).replaceAll(" *\n *", g.a).replaceAll(g.a, " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null);
    }

    public static SpannableStringBuilder f(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    public void a(b bVar) {
        if (this.f5410l == null) {
            this.f5410l = new ArrayList();
        }
        this.f5410l.add(bVar);
    }

    public b c(int i2) {
        List<b> list = this.f5410l;
        if (list != null) {
            return list.get(i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public int d() {
        List<b> list = this.f5410l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final void e(TreeSet<Long> treeSet, boolean z) {
        boolean equals = com.umeng.commonsdk.proguard.e.ao.equals(this.a);
        boolean equals2 = "div".equals(this.a);
        if (z || equals || (equals2 && this.f5407i != null)) {
            long j2 = this.f5402d;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
            long j3 = this.f5403e;
            if (j3 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j3));
            }
        }
        if (this.f5410l == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f5410l.size(); i2++) {
            this.f5410l.get(i2).e(treeSet, z || equals);
        }
    }

    public boolean g(long j2) {
        return (this.f5402d == -9223372036854775807L && this.f5403e == -9223372036854775807L) || (this.f5402d <= j2 && this.f5403e == -9223372036854775807L) || ((this.f5402d == -9223372036854775807L && j2 < this.f5403e) || (this.f5402d <= j2 && j2 < this.f5403e));
    }

    public final void h(long j2, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f5406h)) {
            str = this.f5406h;
        }
        if (g(j2) && "div".equals(this.a) && this.f5407i != null) {
            list.add(new Pair<>(str, this.f5407i));
            return;
        }
        for (int i2 = 0; i2 < d(); i2++) {
            c(i2).h(j2, str, list);
        }
    }

    public final void i(long j2, Map<String, d> map, Map<String, SpannableStringBuilder> map2) {
        if (!g(j2)) {
            return;
        }
        Iterator<Map.Entry<String, Integer>> it = this.f5409k.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int intValue = this.f5408j.containsKey(key) ? this.f5408j.get(key).intValue() : 0;
                int intValue2 = next.getValue().intValue();
                if (intValue != intValue2) {
                    SpannableStringBuilder spannableStringBuilder = map2.get(key);
                    d dVar = this.f5404f;
                    String[] strArr = this.f5405g;
                    if (dVar == null && strArr == null) {
                        dVar = null;
                    } else if (dVar == null && strArr.length == 1) {
                        dVar = map.get(strArr[0]);
                    } else if (dVar == null && strArr.length > 1) {
                        dVar = new d();
                        for (String str : strArr) {
                            dVar.a(map.get(str));
                        }
                    } else if (dVar != null && strArr != null && strArr.length == 1) {
                        dVar.a(map.get(strArr[0]));
                    } else if (dVar != null && strArr != null && strArr.length > 1) {
                        for (String str2 : strArr) {
                            dVar.a(map.get(str2));
                        }
                    }
                    if (dVar == null) {
                        continue;
                    } else {
                        if (dVar.b() != -1) {
                            spannableStringBuilder.setSpan(new StyleSpan(dVar.b()), intValue, intValue2, 33);
                        }
                        if (dVar.f5421f == 1) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                        }
                        if ((dVar.f5422g == 1 ? 1 : 0) != 0) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                        }
                        if (dVar.f5418c) {
                            if (dVar.f5418c) {
                                spannableStringBuilder.setSpan(new ForegroundColorSpan(dVar.b), intValue, intValue2, 33);
                            } else {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                        }
                        if (dVar.f5420e) {
                            if (dVar.f5420e) {
                                spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.f5419d), intValue, intValue2, 33);
                            } else {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                        }
                        if (dVar.a != null) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(dVar.a), intValue, intValue2, 33);
                        }
                        if (dVar.f5428m != null) {
                            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(dVar.f5428m), intValue, intValue2, 33);
                        }
                        int i2 = dVar.f5425j;
                        if (i2 == 1) {
                            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.f5426k, true), intValue, intValue2, 33);
                        } else if (i2 == 2) {
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.f5426k), intValue, intValue2, 33);
                        } else if (i2 == 3) {
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.f5426k / 100.0f), intValue, intValue2, 33);
                        }
                    }
                }
            } else {
                while (r2 < d()) {
                    c(r2).i(j2, map, map2);
                    r2++;
                }
                return;
            }
        }
    }

    public final void j(long j2, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.f5408j.clear();
        this.f5409k.clear();
        if ("metadata".equals(this.a)) {
            return;
        }
        if (!"".equals(this.f5406h)) {
            str = this.f5406h;
        }
        if (this.f5401c && z) {
            f(str, map).append((CharSequence) this.b);
        } else if ("br".equals(this.a) && z) {
            f(str, map).append('\n');
        } else if (g(j2)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.f5408j.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            boolean equals = com.umeng.commonsdk.proguard.e.ao.equals(this.a);
            for (int i2 = 0; i2 < d(); i2++) {
                c(i2).j(j2, z || equals, str, map);
            }
            if (equals) {
                SpannableStringBuilder f2 = f(str, map);
                int length = f2.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (f2.charAt(length) == ' ');
                if (length >= 0 && f2.charAt(length) != '\n') {
                    f2.append('\n');
                }
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.f5409k.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }
}
