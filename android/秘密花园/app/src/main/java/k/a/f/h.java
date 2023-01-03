package k.a.f;

import androidx.appcompat.view.SupportMenuInflater;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import com.umeng.commonsdk.proguard.e;
import j.b;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Tag.java */
/* loaded from: classes.dex */
public class h implements Cloneable {

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f7068k;
    public String a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7071c = true;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7072d = true;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7073e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7074f = false;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7075g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7076h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7077i = false;

    /* renamed from: j  reason: collision with root package name */
    public static final Map<String, h> f7067j = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    public static final String[] f7069l = {"object", "base", "font", "tt", e.aq, "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", NotificationCompatJellybean.KEY_LABEL, "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", e.ap};

    /* renamed from: m  reason: collision with root package name */
    public static final String[] f7070m = {"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
    public static final String[] n = {NotificationCompatJellybean.KEY_TITLE, "a", e.ao, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", e.ap};
    public static final String[] o = {"pre", "plaintext", NotificationCompatJellybean.KEY_TITLE, "textarea"};
    public static final String[] p = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
    public static final String[] q = {"input", "keygen", "object", "select", "textarea"};

    static {
        String[] strArr = {"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", NotificationCompatJellybean.KEY_TITLE, "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", e.ao, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", SupportMenuInflater.XML_MENU, "plaintext", "template", "article", "main", "svg", "math", "center"};
        f7068k = strArr;
        for (String str : strArr) {
            h hVar = new h(str);
            f7067j.put(hVar.a, hVar);
        }
        for (String str2 : f7069l) {
            h hVar2 = new h(str2);
            hVar2.f7071c = false;
            hVar2.f7072d = false;
            f7067j.put(hVar2.a, hVar2);
        }
        for (String str3 : f7070m) {
            h hVar3 = f7067j.get(str3);
            b.s(hVar3);
            hVar3.f7073e = true;
        }
        for (String str4 : n) {
            h hVar4 = f7067j.get(str4);
            b.s(hVar4);
            hVar4.f7072d = false;
        }
        for (String str5 : o) {
            h hVar5 = f7067j.get(str5);
            b.s(hVar5);
            hVar5.f7075g = true;
        }
        for (String str6 : p) {
            h hVar6 = f7067j.get(str6);
            b.s(hVar6);
            hVar6.f7076h = true;
        }
        for (String str7 : q) {
            h hVar7 = f7067j.get(str7);
            b.s(hVar7);
            hVar7.f7077i = true;
        }
    }

    public h(String str) {
        this.a = str;
        this.b = b.o(str);
    }

    public static h a(String str, f fVar) {
        b.s(str);
        h hVar = f7067j.get(str);
        if (hVar != null) {
            return hVar;
        }
        if (fVar != null) {
            String trim = str.trim();
            if (!fVar.a) {
                trim = b.o(trim);
            }
            b.q(trim);
            String o2 = b.o(trim);
            h hVar2 = f7067j.get(o2);
            if (hVar2 == null) {
                h hVar3 = new h(trim);
                hVar3.f7071c = false;
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
        } else {
            throw null;
        }
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        try {
            return (h) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.lang.Object
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.a.equals(hVar.a) && this.f7073e == hVar.f7073e && this.f7072d == hVar.f7072d && this.f7071c == hVar.f7071c && this.f7075g == hVar.f7075g && this.f7074f == hVar.f7074f && this.f7076h == hVar.f7076h && this.f7077i == hVar.f7077i) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Object
    public int hashCode() {
        return (((((((((((((this.a.hashCode() * 31) + (this.f7071c ? 1 : 0)) * 31) + (this.f7072d ? 1 : 0)) * 31) + (this.f7073e ? 1 : 0)) * 31) + (this.f7074f ? 1 : 0)) * 31) + (this.f7075g ? 1 : 0)) * 31) + (this.f7076h ? 1 : 0)) * 31) + (this.f7077i ? 1 : 0);
    }

    @Override // java.lang.Object
    public String toString() {
        return this.a;
    }
}
