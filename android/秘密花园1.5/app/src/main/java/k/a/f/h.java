package k.a.f;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Tag.java */
/* loaded from: classes2.dex */
public class h implements Cloneable {

    /* renamed from: j  reason: collision with root package name */
    public static final Map<String, h> f7142j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f7143k;

    /* renamed from: l  reason: collision with root package name */
    public static final String[] f7144l;

    /* renamed from: m  reason: collision with root package name */
    public static final String[] f7145m;
    public static final String[] n;
    public static final String[] o;
    public static final String[] p;
    public static final String[] q;
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7146c = true;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7147d = true;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7148e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7149f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7150g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7151h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7152i = false;

    static {
        String[] strArr = {"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", NotificationCompatJellybean.KEY_TITLE, "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", com.umeng.commonsdk.proguard.e.ao, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", SupportMenuInflater.XML_MENU, "plaintext", "template", "article", "main", "svg", "math", "center"};
        f7143k = strArr;
        f7144l = new String[]{"object", "base", "font", "tt", com.umeng.commonsdk.proguard.e.aq, "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", NotificationCompatJellybean.KEY_LABEL, "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", com.umeng.commonsdk.proguard.e.ap};
        f7145m = new String[]{"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
        n = new String[]{NotificationCompatJellybean.KEY_TITLE, "a", com.umeng.commonsdk.proguard.e.ao, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", com.umeng.commonsdk.proguard.e.ap};
        o = new String[]{"pre", "plaintext", NotificationCompatJellybean.KEY_TITLE, "textarea"};
        p = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        q = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            h hVar = new h(str);
            f7142j.put(hVar.a, hVar);
        }
        for (String str2 : f7144l) {
            h hVar2 = new h(str2);
            hVar2.f7146c = false;
            hVar2.f7147d = false;
            f7142j.put(hVar2.a, hVar2);
        }
        for (String str3 : f7145m) {
            h hVar3 = f7142j.get(str3);
            j.b.s(hVar3);
            hVar3.f7148e = true;
        }
        for (String str4 : n) {
            h hVar4 = f7142j.get(str4);
            j.b.s(hVar4);
            hVar4.f7147d = false;
        }
        for (String str5 : o) {
            h hVar5 = f7142j.get(str5);
            j.b.s(hVar5);
            hVar5.f7150g = true;
        }
        for (String str6 : p) {
            h hVar6 = f7142j.get(str6);
            j.b.s(hVar6);
            hVar6.f7151h = true;
        }
        for (String str7 : q) {
            h hVar7 = f7142j.get(str7);
            j.b.s(hVar7);
            hVar7.f7152i = true;
        }
    }

    public h(String str) {
        this.a = str;
        this.b = j.b.o(str);
    }

    public static h a(String str, f fVar) {
        j.b.s(str);
        h hVar = f7142j.get(str);
        if (hVar == null) {
            if (fVar != null) {
                String trim = str.trim();
                if (!fVar.a) {
                    trim = j.b.o(trim);
                }
                j.b.q(trim);
                String o2 = j.b.o(trim);
                h hVar2 = f7142j.get(o2);
                if (hVar2 == null) {
                    h hVar3 = new h(trim);
                    hVar3.f7146c = false;
                    return hVar3;
                } else if (!fVar.a || trim.equals(o2)) {
                    return hVar2;
                } else {
                    try {
                        h hVar4 = (h) super.clone();
                        hVar4.a = trim;
                        return hVar4;
                    } catch (CloneNotSupportedException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
            throw null;
        }
        return hVar;
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (h) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.a.equals(hVar.a) && this.f7148e == hVar.f7148e && this.f7147d == hVar.f7147d && this.f7146c == hVar.f7146c && this.f7150g == hVar.f7150g && this.f7149f == hVar.f7149f && this.f7151h == hVar.f7151h && this.f7152i == hVar.f7152i;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((this.a.hashCode() * 31) + (this.f7146c ? 1 : 0)) * 31) + (this.f7147d ? 1 : 0)) * 31) + (this.f7148e ? 1 : 0)) * 31) + (this.f7149f ? 1 : 0)) * 31) + (this.f7150g ? 1 : 0)) * 31) + (this.f7151h ? 1 : 0)) * 31) + (this.f7152i ? 1 : 0);
    }

    public String toString() {
        return this.a;
    }
}
