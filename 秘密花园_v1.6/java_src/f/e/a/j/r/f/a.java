package f.e.a.j.r.f;

import android.text.TextUtils;
import com.comeback.data.ui.hm.bean.ChapterInfo;
import com.comeback.data.ui.hm.bean.Host;
import com.comeback.data.ui.hm.bean.ItemInfo;
import f.e.a.e;
import f.e.a.k.c;
import j.b;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import k.a.e.f;
import k.a.e.h;
import k.a.g.d;
/* compiled from: HtmlParse.java */
/* loaded from: classes.dex */
public class a {
    public static String a;
    public static String b;

    /* renamed from: c  reason: collision with root package name */
    public static String f4019c = e.a("BlAAAA4VXlIRBVACHg1SWQ==");

    /* renamed from: d  reason: collision with root package name */
    public static String f4020d = e.a("dicwSy4wexwjLXc0TzoCD1MLDQM=");

    public static String a(String str) {
        byte[] c2 = c.c(str.getBytes(), f4019c.getBytes(), f4020d, null);
        return c2 != null ? new String(c2) : "";
    }

    public static String b(int i2, boolean z, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(z ? a : b);
        sb.append(e.a("GF0TBQwWF1AGFEYCFh4zClAHXg=="));
        sb.append(i2);
        sb.append(e.a("EQ0RAA4BbUoDAwlUXhkWCV0HABAlElRWTg=="));
        sb.append(str);
        sb.append(e.a("EQQKCAY9WF4WWw=="));
        sb.append(str2);
        return sb.toString();
    }

    public static boolean c() {
        return TextUtils.isEmpty(b);
    }

    public static ChapterInfo d(String str) {
        ChapterInfo chapterInfo = new ChapterInfo();
        try {
            h H = b.u(str).H(e.a("VAoCFB8WSx4fD0cT"));
            k.a.g.c J = H.J(e.a("X1E="));
            if (J.size() != 0) {
                chapterInfo.setState(J.get(0).O());
            }
            k.a.g.c I = H.I(e.a("WwsQEEYaTVYe"));
            chapterInfo.setChapterList(new ArrayList<>());
            Iterator<h> it = I.iterator();
            while (it.hasNext()) {
                h next = it.next();
                ChapterInfo.Chapter chapter = new ChapterInfo.Chapter();
                k.a.g.c I2 = next.I(e.a("VAcPCEYHUEcfAw=="));
                if (I2.size() != 0) {
                    chapter.setName(I2.get(0).O());
                }
                chapter.setLines(new ArrayList<>());
                Iterator<h> it2 = next.I(e.a("VAcPCEYHQEMW")).iterator();
                while (it2.hasNext()) {
                    h next2 = it2.next();
                    ChapterInfo.Chapter.Line line = new ChapterInfo.Chapter.Line();
                    line.setName(next2.O());
                    line.setOther(next2.b(e.a("WAwACAIQUg==")));
                    chapter.getLines().add(line);
                }
                chapterInfo.getChapterList().add(chapter);
                PrintStream printStream = System.out;
                e.a("CVxdWlVNBw1NWApZcg==");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return chapterInfo;
    }

    public static ArrayList<ItemInfo> e(String str) {
        ArrayList<ItemInfo> arrayList = new ArrayList<>();
        try {
            Iterator<h> it = b.u(str).I(e.a("VQ0MD0YfUEAHS10THQc=")).iterator();
            while (it.hasNext()) {
                h next = it.next();
                ItemInfo itemInfo = new ItemInfo();
                arrayList.add(itemInfo);
                PrintStream printStream = System.out;
                e.a("aD08OzQsZmwsOWtt");
                String b2 = next.b(e.a("WAwACAIQUg=="));
                itemInfo.setType(b2.contains(e.a("GBoQSw==")) ? 1 : 0);
                if (b2.contains(e.a("XgwFC0Q="))) {
                    b2 = b2.split(e.a("XgwFC0Q="))[1];
                }
                if (b2.contains(e.a("GQoXCQc="))) {
                    b2 = b2.split(e.a("GQoXCQc="))[0];
                }
                itemInfo.setId(b2);
                k.a.g.c J = next.J(e.a("Xg8E"));
                if (J.size() != 0) {
                    itemInfo.setImage(J.get(0).b(e.a("RBAA")));
                }
                k.a.g.c I = next.I(e.a("VQ0MD0YfUEAHS10JHgVOH14WDwE="));
                if (I.size() != 0) {
                    itemInfo.setTitle(I.get(0).O());
                }
                k.a.g.c I2 = next.I(e.a("VQ0MD0YfUEAHS10JHgVOD1IRAA=="));
                if (I2.size() != 0) {
                    itemInfo.setDesc(I2.get(0).O());
                }
                k.a.g.c I3 = next.I(e.a("VQ0MD0YfUEAHS10JHgVOCVgWFwsG"));
                if (I3.size() != 0) {
                    itemInfo.setAuthor(I3.get(0).O());
                    if (I3.size() > 1) {
                        itemInfo.setUpdate(I3.get(1).O());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public static ArrayList<String> f(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            f u = b.u(str);
            h H = u.H(e.a("Xg8EKAIATQ=="));
            if (H != null) {
                Iterator<h> it = H.J(e.a("Xg8E")).iterator();
                while (it.hasNext()) {
                    h next = it.next();
                    String b2 = next.b(e.a("RBAA"));
                    String b3 = next.b(e.a("VA4CFxg="));
                    if (b3 != null && b3.equals(e.a("WwMZHQ=="))) {
                        b2 = next.b(e.a("UwMXBUYcS1oUD1oGFA=="));
                    }
                    if (!TextUtils.isEmpty(b2) && !b2.contains(e.a("GDMxJwQXXBw="))) {
                        PrintStream printStream = System.out;
                        arrayList.add(b2);
                    }
                }
            }
            if (arrayList.size() == 0) {
                k.a.g.c J = u.J(e.a("VhcHDQQ="));
                if (J.size() != 0) {
                    String b4 = J.get(0).b(e.a("RBAA"));
                    PrintStream printStream2 = System.out;
                    arrayList.add(b + b4);
                }
            }
            if (arrayList.size() == 0) {
                String str2 = "";
                Iterator<h> it2 = u.I(e.a("WQ0VAQcsWlwdElEJDA==")).iterator();
                while (it2.hasNext()) {
                    str2 = str2 + it2.next().r();
                }
                arrayList.add(str2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public static Host g(String str) {
        h hVar;
        Host host = new Host();
        host.setHm(new ArrayList<>());
        host.setNovel(new ArrayList<>());
        try {
            hVar = b.u(str).J(e.a("VQ0HHQ==")).get(0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (hVar != null) {
            k.a.g.c j2 = b.j(new d.a(), hVar);
            ArrayList arrayList = new ArrayList();
            Iterator<h> it = j2.iterator();
            while (it.hasNext()) {
                h next = it.next();
                String str2 = next.f7102c.a;
                if (str2.equals(e.a("X1A=")) || str2.equals(e.a("Rw==")) || str2.equals(e.a("X1E="))) {
                    arrayList.add(next);
                }
            }
            Iterator it2 = arrayList.iterator();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            loop1: while (true) {
                boolean z4 = false;
                while (it2.hasNext()) {
                    h hVar2 = (h) it2.next();
                    if (hVar2.f7102c.a.equals(e.a("X1A="))) {
                        if (hVar2.O().contains(e.a("0d7Ig//I"))) {
                            z2 = true;
                        } else {
                            z = hVar2.O().contains(e.a("0tLsjMTH")) ? true : true;
                        }
                        z3 = true;
                    } else if (hVar2.f7102c.a.equals(e.a("X1E="))) {
                        z4 = true;
                    }
                    if (z && hVar2.f7102c.a.equals(e.a("Rw=="))) {
                        host.getNovel().add(hVar2.O());
                    }
                    if (z2 && hVar2.f7102c.a.equals(e.a("Rw=="))) {
                        host.getHm().add(hVar2.O());
                    }
                    if (z3 && z4) {
                        PrintStream printStream = System.out;
                        e.a("0ejwgeTl3J3/gLz3nNLjjZnXaW4=");
                        z = false;
                        z2 = false;
                        z3 = false;
                        z4 = false;
                    }
                    if (z3 || !z4) {
                    }
                }
            }
            return host;
        }
        throw null;
    }
}
