package f.i.a.a.i1.r;

import android.text.Layout;
import c.a.a.b.g.h;
import com.umeng.commonsdk.proguard.e;
import f.i.a.a.i1.g;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.j;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: TtmlDecoder.java */
/* loaded from: classes.dex */
public final class a extends f.i.a.a.i1.c {
    public static final Pattern o = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final Pattern p = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern q = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    public static final Pattern s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    public static final Pattern t = Pattern.compile("^(\\d+) (\\d+)$");
    public static final b u = new b(30.0f, 1, 1);
    public static final C0076a v = new C0076a(32, 15);
    public final XmlPullParserFactory n;

    /* compiled from: TtmlDecoder.java */
    /* renamed from: f.i.a.a.i1.r.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0076a {
        public final int a;

        public C0076a(int i2, int i3) {
            this.a = i3;
        }
    }

    /* compiled from: TtmlDecoder.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final float a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5325c;

        public b(float f2, int i2, int i3) {
            this.a = f2;
            this.b = i2;
            this.f5325c = i3;
        }
    }

    /* compiled from: TtmlDecoder.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final int a;
        public final int b;

        public c(int i2, int i3) {
            this.a = i2;
            this.b = i3;
        }
    }

    public a() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.n = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    public static boolean m(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals(e.ao) || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    public static void o(String str, d dVar) throws g {
        Matcher matcher;
        String[] l0 = h0.l0(str, "\\s+");
        if (l0.length == 1) {
            matcher = q.matcher(str);
        } else if (l0.length == 2) {
            matcher = q.matcher(l0[1]);
        } else {
            throw new g(f.b.a.a.a.k(f.b.a.a.a.o("Invalid number of entries for fontSize: "), l0.length, "."));
        }
        if (matcher.matches()) {
            String group = matcher.group(3);
            char c2 = 65535;
            int hashCode = group.hashCode();
            if (hashCode != 37) {
                if (hashCode != 3240) {
                    if (hashCode == 3592 && group.equals("px")) {
                        c2 = 0;
                    }
                } else if (group.equals("em")) {
                    c2 = 1;
                }
            } else if (group.equals("%")) {
                c2 = 2;
            }
            if (c2 == 0) {
                dVar.f5350j = 1;
            } else if (c2 == 1) {
                dVar.f5350j = 2;
            } else if (c2 == 2) {
                dVar.f5350j = 3;
            } else {
                throw new g(f.b.a.a.a.g("Invalid unit for fontSize: '", group, "'."));
            }
            dVar.f5351k = Float.valueOf(matcher.group(1)).floatValue();
            return;
        }
        throw new g(f.b.a.a.a.g("Invalid expression for fontSize: '", str, "'."));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00bb, code lost:
        if (r14.equals(com.umeng.commonsdk.proguard.e.ap) != false) goto L_0x00e7;
     */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00e9  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0104  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long u(java.lang.String r14, f.i.a.a.i1.r.a.b r15) throws f.i.a.a.i1.g {
        /*
        // Method dump skipped, instructions count: 283
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.r.a.u(java.lang.String, f.i.a.a.i1.r.a$b):long");
    }

    @Override // f.i.a.a.i1.c
    public f.i.a.a.i1.e k(byte[] bArr, int i2, boolean z) throws g {
        b bVar;
        try {
            XmlPullParser newPullParser = this.n.newPullParser();
            Map<String, d> hashMap = new HashMap<>();
            HashMap hashMap2 = new HashMap();
            Map<String, String> hashMap3 = new HashMap<>();
            hashMap2.put("", new c(null, Float.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE));
            c cVar = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar2 = u;
            C0076a aVar = v;
            e eVar = null;
            int i3 = 0;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                b bVar3 = (b) arrayDeque.peek();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            bVar2 = p(newPullParser);
                            aVar = n(newPullParser, v);
                            cVar = v(newPullParser);
                        }
                        if (!m(name)) {
                            newPullParser.getName();
                            i3++;
                            bVar = bVar2;
                        } else if ("head".equals(name)) {
                            bVar = bVar2;
                            q(newPullParser, hashMap, aVar, cVar, hashMap2, hashMap3);
                        } else {
                            bVar = bVar2;
                            try {
                                b r2 = r(newPullParser, bVar3, hashMap2, bVar);
                                arrayDeque.push(r2);
                                if (bVar3 != null) {
                                    bVar3.a(r2);
                                }
                            } catch (g unused) {
                                i3++;
                            }
                        }
                        bVar2 = bVar;
                        cVar = cVar;
                        aVar = aVar;
                    } else if (eventType == 4) {
                        b b2 = b.b(newPullParser.getText());
                        if (bVar3.f5335l == null) {
                            bVar3.f5335l = new ArrayList();
                        }
                        bVar3.f5335l.add(b2);
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals("tt")) {
                            eVar = new e((b) arrayDeque.peek(), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i3++;
                } else if (eventType == 3) {
                    i3--;
                }
                newPullParser.next();
            }
            return eVar;
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new g("Unable to decode source", e3);
        }
    }

    public final d l(d dVar) {
        return dVar == null ? new d() : dVar;
    }

    public final C0076a n(XmlPullParser xmlPullParser, C0076a aVar) throws g {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = t.matcher(attributeValue);
        if (!matcher.matches()) {
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C0076a(parseInt, parseInt2);
            }
            throw new g("Invalid cell resolution " + parseInt + " " + parseInt2);
        } catch (NumberFormatException unused) {
            return aVar;
        }
    }

    public final b p(XmlPullParser xmlPullParser) throws g {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f2 = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] l0 = h0.l0(attributeValue2, " ");
            if (l0.length == 2) {
                f2 = ((float) Integer.parseInt(l0[0])) / ((float) Integer.parseInt(l0[1]));
            } else {
                throw new g("frameRateMultiplier doesn't have 2 parts");
            }
        }
        int i2 = u.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = u.f5325c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new b(((float) parseInt) * f2, i2, i3);
    }

    /* JADX WARNING: Removed duplicated region for block: B:61:0x015c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.Map<java.lang.String, f.i.a.a.i1.r.d> q(org.xmlpull.v1.XmlPullParser r18, java.util.Map<java.lang.String, f.i.a.a.i1.r.d> r19, f.i.a.a.i1.r.a.C0076a r20, f.i.a.a.i1.r.a.c r21, java.util.Map<java.lang.String, f.i.a.a.i1.r.c> r22, java.util.Map<java.lang.String, java.lang.String> r23) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
        // Method dump skipped, instructions count: 415
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.r.a.q(org.xmlpull.v1.XmlPullParser, java.util.Map, f.i.a.a.i1.r.a$a, f.i.a.a.i1.r.a$c, java.util.Map, java.util.Map):java.util.Map");
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public final b r(XmlPullParser xmlPullParser, b bVar, Map<String, c> map, b bVar2) throws g {
        long j2;
        char c2;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        int attributeCount = xmlPullParser.getAttributeCount();
        d s2 = s(xmlPullParser2, null);
        String str = "";
        String[] strArr = null;
        String str2 = null;
        int i2 = 0;
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        long j5 = -9223372036854775807L;
        while (i2 < attributeCount) {
            String attributeName = xmlPullParser2.getAttributeName(i2);
            String attributeValue = xmlPullParser2.getAttributeValue(i2);
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                j3 = u(attributeValue, bVar2);
            } else if (c2 == 1) {
                j4 = u(attributeValue, bVar2);
            } else if (c2 == 2) {
                j5 = u(attributeValue, bVar2);
            } else if (c2 == 3) {
                String[] t2 = t(attributeValue);
                if (t2.length > 0) {
                    strArr = t2;
                }
            } else if (c2 != 4) {
                if (c2 == 5 && attributeValue.startsWith("#")) {
                    str2 = attributeValue.substring(1);
                }
            } else if (map.containsKey(attributeValue)) {
                str = attributeValue;
            }
            i2++;
            xmlPullParser2 = xmlPullParser;
        }
        if (bVar != null) {
            long j6 = bVar.f5327d;
            j2 = -9223372036854775807L;
            if (j6 != -9223372036854775807L) {
                if (j3 != -9223372036854775807L) {
                    j3 += j6;
                }
                if (j4 != -9223372036854775807L) {
                    j4 += bVar.f5327d;
                }
            }
        } else {
            j2 = -9223372036854775807L;
        }
        if (j4 == j2) {
            if (j5 != j2) {
                j4 = j3 + j5;
            } else if (bVar != null) {
                long j7 = bVar.f5328e;
                if (j7 != j2) {
                    j4 = j7;
                }
            }
        }
        return new b(xmlPullParser.getName(), null, j3, j4, s2, strArr, str, str2);
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public final d s(XmlPullParser xmlPullParser, d dVar) {
        char c2;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            String attributeName = xmlPullParser.getAttributeName(i2);
            char c3 = 65535;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        dVar = l(dVar);
                        dVar.f5352l = attributeValue;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    dVar = l(dVar);
                    dVar.f5344d = j.a(attributeValue, false);
                    dVar.f5345e = true;
                    break;
                case 2:
                    dVar = l(dVar);
                    int a = j.a(attributeValue, false);
                    h.v(true);
                    dVar.b = a;
                    dVar.f5343c = true;
                    break;
                case 3:
                    dVar = l(dVar);
                    h.v(true);
                    dVar.a = attributeValue;
                    break;
                case 4:
                    try {
                        dVar = l(dVar);
                        o(attributeValue, dVar);
                        break;
                    } catch (g | IllegalArgumentException unused) {
                        break;
                    }
                case 5:
                    dVar = l(dVar);
                    boolean equalsIgnoreCase = "bold".equalsIgnoreCase(attributeValue);
                    h.v(true);
                    dVar.f5348h = equalsIgnoreCase ? 1 : 0;
                    break;
                case 6:
                    dVar = l(dVar);
                    boolean equalsIgnoreCase2 = "italic".equalsIgnoreCase(attributeValue);
                    h.v(true);
                    dVar.f5349i = equalsIgnoreCase2 ? 1 : 0;
                    break;
                case 7:
                    String p0 = h0.p0(attributeValue);
                    switch (p0.hashCode()) {
                        case -1364013995:
                            if (p0.equals("center")) {
                                c3 = 4;
                                break;
                            }
                            break;
                        case 100571:
                            if (p0.equals("end")) {
                                c3 = 3;
                                break;
                            }
                            break;
                        case 3317767:
                            if (p0.equals("left")) {
                                c3 = 0;
                                break;
                            }
                            break;
                        case 108511772:
                            if (p0.equals("right")) {
                                c3 = 2;
                                break;
                            }
                            break;
                        case 109757538:
                            if (p0.equals("start")) {
                                c3 = 1;
                                break;
                            }
                            break;
                    }
                    if (c3 != 0) {
                        if (c3 != 1) {
                            if (c3 != 2) {
                                if (c3 != 3) {
                                    if (c3 != 4) {
                                        break;
                                    } else {
                                        dVar = l(dVar);
                                        dVar.f5353m = Layout.Alignment.ALIGN_CENTER;
                                        break;
                                    }
                                } else {
                                    dVar = l(dVar);
                                    dVar.f5353m = Layout.Alignment.ALIGN_OPPOSITE;
                                    break;
                                }
                            } else {
                                dVar = l(dVar);
                                dVar.f5353m = Layout.Alignment.ALIGN_OPPOSITE;
                                break;
                            }
                        } else {
                            dVar = l(dVar);
                            dVar.f5353m = Layout.Alignment.ALIGN_NORMAL;
                            break;
                        }
                    } else {
                        dVar = l(dVar);
                        dVar.f5353m = Layout.Alignment.ALIGN_NORMAL;
                        break;
                    }
                case '\b':
                    String p02 = h0.p0(attributeValue);
                    switch (p02.hashCode()) {
                        case -1461280213:
                            if (p02.equals("nounderline")) {
                                c3 = 3;
                                break;
                            }
                            break;
                        case -1026963764:
                            if (p02.equals("underline")) {
                                c3 = 2;
                                break;
                            }
                            break;
                        case 913457136:
                            if (p02.equals("nolinethrough")) {
                                c3 = 1;
                                break;
                            }
                            break;
                        case 1679736913:
                            if (p02.equals("linethrough")) {
                                c3 = 0;
                                break;
                            }
                            break;
                    }
                    if (c3 != 0) {
                        if (c3 != 1) {
                            if (c3 != 2) {
                                if (c3 != 3) {
                                    break;
                                } else {
                                    dVar = l(dVar);
                                    h.v(true);
                                    dVar.f5347g = 0;
                                    break;
                                }
                            } else {
                                dVar = l(dVar);
                                h.v(true);
                                dVar.f5347g = 1;
                                break;
                            }
                        } else {
                            dVar = l(dVar);
                            h.v(true);
                            dVar.f5346f = 0;
                            break;
                        }
                    } else {
                        dVar = l(dVar);
                        h.v(true);
                        dVar.f5346f = 1;
                        break;
                    }
            }
        }
        return dVar;
    }

    public final String[] t(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : h0.l0(trim, "\\s+");
    }

    public final c v(XmlPullParser xmlPullParser) {
        String T = h.T(xmlPullParser, "extent");
        if (T == null) {
            return null;
        }
        Matcher matcher = s.matcher(T);
        if (!matcher.matches()) {
            return null;
        }
        try {
            return new c(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)));
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
