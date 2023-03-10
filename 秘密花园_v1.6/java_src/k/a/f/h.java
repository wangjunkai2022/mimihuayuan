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
    public static final Map<String, h> f7151j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f7152k;

    /* renamed from: l  reason: collision with root package name */
    public static final String[] f7153l;

    /* renamed from: m  reason: collision with root package name */
    public static final String[] f7154m;
    public static final String[] n;
    public static final String[] o;
    public static final String[] p;
    public static final String[] q;
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7155c = true;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7156d = true;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7157e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7158f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7159g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7160h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7161i = false;

    static {
        String[] strArr = {"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", NotificationCompatJellybean.KEY_TITLE, "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", com.umeng.commonsdk.proguard.e.ao, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", SupportMenuInflater.XML_MENU, "plaintext", "template", "article", "main", "svg", "math", "center"};
        f7152k = strArr;
        f7153l = new String[]{"object", "base", "font", "tt", com.umeng.commonsdk.proguard.e.aq, "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", NotificationCompatJellybean.KEY_LABEL, "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", com.umeng.commonsdk.proguard.e.ap};
        f7154m = new String[]{"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
        n = new String[]{NotificationCompatJellybean.KEY_TITLE, "a", com.umeng.commonsdk.proguard.e.ao, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", com.umeng.commonsdk.proguard.e.ap};
        o = new String[]{"pre", "plaintext", NotificationCompatJellybean.KEY_TITLE, "textarea"};
        p = new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
        q = new String[]{"input", "keygen", "object", "select", "textarea"};
        for (String str : strArr) {
            h hVar = new h(str);
            f7151j.put(hVar.a, hVar);
        }
        for (String str2 : f7153l) {
            h hVar2 = new h(str2);
            hVar2.f7155c = false;
            hVar2.f7156d = false;
            f7151j.put(hVar2.a, hVar2);
        }
        for (String str3 : f7154m) {
            h hVar3 = f7151j.get(str3);
            j.b.s(hVar3);
            hVar3.f7157e = true;
        }
        for (String str4 : n) {
            h hVar4 = f7151j.get(str4);
            j.b.s(hVar4);
            hVar4.f7156d = false;
        }
        for (String str5 : o) {
            h hVar5 = f7151j.get(str5);
            j.b.s(hVar5);
            hVar5.f7159g = true;
        }
        for (String str6 : p) {
            h hVar6 = f7151j.get(str6);
            j.b.s(hVar6);
            hVar6.f7160h = true;
        }
        for (String str7 : q) {
            h hVar7 = f7151j.get(str7);
            j.b.s(hVar7);
            hVar7.f7161i = true;
        }
    }

    public h(String str) {
        this.a = str;
        this.b = j.b.o(str);
    }

    public static h a(String str, f fVar) {
        j.b.s(str);
        h hVar = f7151j.get(str);
        if (hVar == null) {
            if (fVar != null) {
                String trim = str.trim();
                if (!fVar.a) {
                    trim = j.b.o(trim);
                }
                j.b.q(trim);
                String o2 = j.b.o(trim);
                h hVar2 = f7151j.get(o2);
                if (hVar2 == null) {
                    h hVar3 = new h(trim);
                    hVar3.f7155c = false;
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
            return this.a.equals(hVar.a) && this.f7157e == hVar.f7157e && this.f7156d == hVar.f7156d && this.f7155c == hVar.f7155c && this.f7159g == hVar.f7159g && this.f7158f == hVar.f7158f && this.f7160h == hVar.f7160h && this.f7161i == hVar.f7161i;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((this.a.hashCode() * 31) + (this.f7155c ? 1 : 0)) * 31) + (this.f7156d ? 1 : 0)) * 31) + (this.f7157e ? 1 : 0)) * 31) + (this.f7158f ? 1 : 0)) * 31) + (this.f7159g ? 1 : 0)) * 31) + (this.f7160h ? 1 : 0)) * 31) + (this.f7161i ? 1 : 0);
    }

    public String toString() {
        return this.a;
    }
}
