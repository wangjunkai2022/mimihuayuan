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
    public final boolean f5410c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5411d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5412e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final d f5413f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final String[] f5414g;

    /* renamed from: h  reason: collision with root package name */
    public final String f5415h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f5416i;

    /* renamed from: j  reason: collision with root package name */
    public final HashMap<String, Integer> f5417j;

    /* renamed from: k  reason: collision with root package name */
    public final HashMap<String, Integer> f5418k;

    /* renamed from: l  reason: collision with root package name */
    public List<b> f5419l;

    public b(@Nullable String str, @Nullable String str2, long j2, long j3, @Nullable d dVar, @Nullable String[] strArr, String str3, @Nullable String str4) {
        this.a = str;
        this.b = str2;
        this.f5416i = str4;
        this.f5413f = dVar;
        this.f5414g = strArr;
        this.f5410c = str2 != null;
        this.f5411d = j2;
        this.f5412e = j3;
        if (str3 != null) {
            this.f5415h = str3;
            this.f5417j = new HashMap<>();
            this.f5418k = new HashMap<>();
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
        if (this.f5419l == null) {
            this.f5419l = new ArrayList();
        }
        this.f5419l.add(bVar);
    }

    public b c(int i2) {
        List<b> list = this.f5419l;
        if (list != null) {
            return list.get(i2);
        }
        throw new IndexOutOfBoundsException();
    }

    public int d() {
        List<b> list = this.f5419l;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final void e(TreeSet<Long> treeSet, boolean z) {
        boolean equals = com.umeng.commonsdk.proguard.e.ao.equals(this.a);
        boolean equals2 = "div".equals(this.a);
        if (z || equals || (equals2 && this.f5416i != null)) {
            long j2 = this.f5411d;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
            long j3 = this.f5412e;
            if (j3 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j3));
            }
        }
        if (this.f5419l == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f5419l.size(); i2++) {
            this.f5419l.get(i2).e(treeSet, z || equals);
        }
    }

    public boolean g(long j2) {
        return (this.f5411d == -9223372036854775807L && this.f5412e == -9223372036854775807L) || (this.f5411d <= j2 && this.f5412e == -9223372036854775807L) || ((this.f5411d == -9223372036854775807L && j2 < this.f5412e) || (this.f5411d <= j2 && j2 < this.f5412e));
    }

    public final void h(long j2, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f5415h)) {
            str = this.f5415h;
        }
        if (g(j2) && "div".equals(this.a) && this.f5416i != null) {
            list.add(new Pair<>(str, this.f5416i));
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
        Iterator<Map.Entry<String, Integer>> it = this.f5418k.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int intValue = this.f5417j.containsKey(key) ? this.f5417j.get(key).intValue() : 0;
                int intValue2 = next.getValue().intValue();
                if (intValue != intValue2) {
                    SpannableStringBuilder spannableStringBuilder = map2.get(key);
                    d dVar = this.f5413f;
                    String[] strArr = this.f5414g;
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
                        if (dVar.f5430f == 1) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), intValue, intValue2, 33);
                        }
                        if ((dVar.f5431g == 1 ? 1 : 0) != 0) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), intValue, intValue2, 33);
                        }
                        if (dVar.f5427c) {
                            if (dVar.f5427c) {
                                spannableStringBuilder.setSpan(new ForegroundColorSpan(dVar.b), intValue, intValue2, 33);
                            } else {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                        }
                        if (dVar.f5429e) {
                            if (dVar.f5429e) {
                                spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.f5428d), intValue, intValue2, 33);
                            } else {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                        }
                        if (dVar.a != null) {
                            spannableStringBuilder.setSpan(new TypefaceSpan(dVar.a), intValue, intValue2, 33);
                        }
                        if (dVar.f5437m != null) {
                            spannableStringBuilder.setSpan(new AlignmentSpan.Standard(dVar.f5437m), intValue, intValue2, 33);
                        }
                        int i2 = dVar.f5434j;
                        if (i2 == 1) {
                            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.f5435k, true), intValue, intValue2, 33);
                        } else if (i2 == 2) {
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.f5435k), intValue, intValue2, 33);
                        } else if (i2 == 3) {
                            spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.f5435k / 100.0f), intValue, intValue2, 33);
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
        this.f5417j.clear();
        this.f5418k.clear();
        if ("metadata".equals(this.a)) {
            return;
        }
        if (!"".equals(this.f5415h)) {
            str = this.f5415h;
        }
        if (this.f5410c && z) {
            f(str, map).append((CharSequence) this.b);
        } else if ("br".equals(this.a) && z) {
            f(str, map).append('\n');
        } else if (g(j2)) {
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.f5417j.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
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
                this.f5418k.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }
}
