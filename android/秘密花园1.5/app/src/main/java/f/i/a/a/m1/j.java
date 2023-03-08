package f.i.a.a.m1;

import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: ColorParser.java */
/* loaded from: classes.dex */
public final class j {
    public static final Pattern a = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");
    public static final Pattern b = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f5748c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    /* renamed from: d  reason: collision with root package name */
    public static final Map<String, Integer> f5749d;

    static {
        HashMap hashMap = new HashMap();
        f5749d = hashMap;
        hashMap.put("aliceblue", -984833);
        f5749d.put("antiquewhite", -332841);
        f5749d.put("aqua", -16711681);
        f5749d.put("aquamarine", -8388652);
        f5749d.put("azure", -983041);
        f5749d.put("beige", -657956);
        f5749d.put("bisque", -6972);
        f5749d.put("black", -16777216);
        f5749d.put("blanchedalmond", -5171);
        f5749d.put("blue", -16776961);
        f5749d.put("blueviolet", -7722014);
        f5749d.put("brown", -5952982);
        f5749d.put("burlywood", -2180985);
        f5749d.put("cadetblue", -10510688);
        f5749d.put("chartreuse", -8388864);
        f5749d.put("chocolate", -2987746);
        f5749d.put("coral", -32944);
        f5749d.put("cornflowerblue", -10185235);
        f5749d.put("cornsilk", -1828);
        f5749d.put("crimson", -2354116);
        f5749d.put("cyan", -16711681);
        f5749d.put("darkblue", -16777077);
        f5749d.put("darkcyan", -16741493);
        f5749d.put("darkgoldenrod", -4684277);
        f5749d.put("darkgray", -5658199);
        f5749d.put("darkgreen", -16751616);
        f5749d.put("darkgrey", -5658199);
        f5749d.put("darkkhaki", -4343957);
        f5749d.put("darkmagenta", -7667573);
        f5749d.put("darkolivegreen", -11179217);
        f5749d.put("darkorange", -29696);
        f5749d.put("darkorchid", -6737204);
        f5749d.put("darkred", -7667712);
        f5749d.put("darksalmon", -1468806);
        f5749d.put("darkseagreen", -7357297);
        f5749d.put("darkslateblue", -12042869);
        f5749d.put("darkslategray", -13676721);
        f5749d.put("darkslategrey", -13676721);
        f5749d.put("darkturquoise", -16724271);
        f5749d.put("darkviolet", -7077677);
        f5749d.put("deeppink", -60269);
        f5749d.put("deepskyblue", -16728065);
        f5749d.put("dimgray", -9868951);
        f5749d.put("dimgrey", -9868951);
        f5749d.put("dodgerblue", -14774017);
        f5749d.put("firebrick", -5103070);
        f5749d.put("floralwhite", -1296);
        f5749d.put("forestgreen", -14513374);
        f5749d.put("fuchsia", -65281);
        f5749d.put("gainsboro", -2302756);
        f5749d.put("ghostwhite", -460545);
        f5749d.put("gold", -10496);
        f5749d.put("goldenrod", -2448096);
        f5749d.put("gray", -8355712);
        f5749d.put("green", -16744448);
        f5749d.put("greenyellow", -5374161);
        f5749d.put("grey", -8355712);
        f5749d.put("honeydew", -983056);
        f5749d.put("hotpink", -38476);
        f5749d.put("indianred", -3318692);
        f5749d.put("indigo", -11861886);
        f5749d.put("ivory", -16);
        f5749d.put("khaki", -989556);
        f5749d.put("lavender", -1644806);
        f5749d.put("lavenderblush", -3851);
        f5749d.put("lawngreen", -8586240);
        f5749d.put("lemonchiffon", -1331);
        f5749d.put("lightblue", -5383962);
        f5749d.put("lightcoral", -1015680);
        f5749d.put("lightcyan", -2031617);
        f5749d.put("lightgoldenrodyellow", -329006);
        f5749d.put("lightgray", -2894893);
        f5749d.put("lightgreen", -7278960);
        f5749d.put("lightgrey", -2894893);
        f5749d.put("lightpink", -18751);
        f5749d.put("lightsalmon", -24454);
        f5749d.put("lightseagreen", -14634326);
        f5749d.put("lightskyblue", -7876870);
        f5749d.put("lightslategray", -8943463);
        f5749d.put("lightslategrey", -8943463);
        f5749d.put("lightsteelblue", -5192482);
        f5749d.put("lightyellow", -32);
        f5749d.put("lime", -16711936);
        f5749d.put("limegreen", -13447886);
        f5749d.put("linen", -331546);
        f5749d.put("magenta", -65281);
        f5749d.put("maroon", -8388608);
        f5749d.put("mediumaquamarine", -10039894);
        f5749d.put("mediumblue", -16777011);
        f5749d.put("mediumorchid", -4565549);
        f5749d.put("mediumpurple", -7114533);
        f5749d.put("mediumseagreen", -12799119);
        f5749d.put("mediumslateblue", -8689426);
        f5749d.put("mediumspringgreen", -16713062);
        f5749d.put("mediumturquoise", -12004916);
        f5749d.put("mediumvioletred", -3730043);
        f5749d.put("midnightblue", -15132304);
        f5749d.put("mintcream", -655366);
        f5749d.put("mistyrose", -6943);
        f5749d.put("moccasin", -6987);
        f5749d.put("navajowhite", -8531);
        f5749d.put("navy", -16777088);
        f5749d.put("oldlace", -133658);
        f5749d.put("olive", -8355840);
        f5749d.put("olivedrab", -9728477);
        f5749d.put("orange", -23296);
        f5749d.put("orangered", -47872);
        f5749d.put("orchid", -2461482);
        f5749d.put("palegoldenrod", -1120086);
        f5749d.put("palegreen", -6751336);
        f5749d.put("paleturquoise", -5247250);
        f5749d.put("palevioletred", -2396013);
        f5749d.put("papayawhip", -4139);
        f5749d.put("peachpuff", -9543);
        f5749d.put("peru", -3308225);
        f5749d.put("pink", -16181);
        f5749d.put("plum", -2252579);
        f5749d.put("powderblue", -5185306);
        f5749d.put("purple", -8388480);
        f5749d.put("rebeccapurple", -10079335);
        f5749d.put("red", -65536);
        f5749d.put("rosybrown", -4419697);
        f5749d.put("royalblue", -12490271);
        f5749d.put("saddlebrown", -7650029);
        f5749d.put("salmon", -360334);
        f5749d.put("sandybrown", -744352);
        f5749d.put("seagreen", -13726889);
        f5749d.put("seashell", -2578);
        f5749d.put("sienna", -6270419);
        f5749d.put("silver", -4144960);
        f5749d.put("skyblue", -7876885);
        f5749d.put("slateblue", -9807155);
        f5749d.put("slategray", -9404272);
        f5749d.put("slategrey", -9404272);
        f5749d.put("snow", -1286);
        f5749d.put("springgreen", -16711809);
        f5749d.put("steelblue", -12156236);
        f5749d.put("tan", -2968436);
        f5749d.put("teal", -16744320);
        f5749d.put("thistle", -2572328);
        f5749d.put("tomato", -40121);
        f5749d.put("transparent", 0);
        f5749d.put("turquoise", -12525360);
        f5749d.put("violet", -1146130);
        f5749d.put("wheat", -663885);
        f5749d.put("white", -1);
        f5749d.put("whitesmoke", -657931);
        f5749d.put("yellow", Integer.valueOf((int) InputDeviceCompat.SOURCE_ANY));
        f5749d.put("yellowgreen", -6632142);
    }

    public static int a(String str, boolean z) {
        int parseInt;
        int i2;
        int i3;
        int parseInt2;
        c.a.a.b.g.h.m(!TextUtils.isEmpty(str));
        String replace = str.replace(" ", "");
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                return parseLong | (-16777216);
            }
            if (replace.length() == 9) {
                return ((parseLong & 255) << 24) | (parseLong >>> 8);
            }
            throw new IllegalArgumentException();
        } else if (replace.startsWith("rgba")) {
            Matcher matcher = (z ? f5748c : b).matcher(replace);
            if (matcher.matches()) {
                if (z) {
                    parseInt2 = (int) (Float.parseFloat(matcher.group(4)) * 255.0f);
                } else {
                    parseInt2 = Integer.parseInt(matcher.group(4), 10);
                }
                int parseInt3 = Integer.parseInt(matcher.group(1), 10);
                int parseInt4 = Integer.parseInt(matcher.group(2), 10);
                parseInt = Integer.parseInt(matcher.group(3), 10);
                i2 = (parseInt2 << 24) | (parseInt3 << 16);
                i3 = parseInt4 << 8;
                return parseInt | i2 | i3;
            }
            throw new IllegalArgumentException();
        } else {
            if (replace.startsWith("rgb")) {
                Matcher matcher2 = a.matcher(replace);
                if (matcher2.matches()) {
                    int parseInt5 = Integer.parseInt(matcher2.group(1), 10);
                    int parseInt6 = Integer.parseInt(matcher2.group(2), 10);
                    parseInt = Integer.parseInt(matcher2.group(3), 10);
                    i2 = (parseInt5 << 16) | (-16777216);
                    i3 = parseInt6 << 8;
                    return parseInt | i2 | i3;
                }
            } else {
                Integer num = f5749d.get(h0.p0(replace));
                if (num != null) {
                    return num.intValue();
                }
            }
            throw new IllegalArgumentException();
        }
    }
}
