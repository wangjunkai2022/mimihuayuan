package f.i.a.a.m1;

import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import c.a.a.b.g.h;
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
    public static final Pattern f5673c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    /* renamed from: d  reason: collision with root package name */
    public static final Map<String, Integer> f5674d;

    static {
        HashMap hashMap = new HashMap();
        f5674d = hashMap;
        hashMap.put("aliceblue", -984833);
        f5674d.put("antiquewhite", -332841);
        f5674d.put("aqua", -16711681);
        f5674d.put("aquamarine", -8388652);
        f5674d.put("azure", -983041);
        f5674d.put("beige", -657956);
        f5674d.put("bisque", -6972);
        f5674d.put("black", -16777216);
        f5674d.put("blanchedalmond", -5171);
        f5674d.put("blue", -16776961);
        f5674d.put("blueviolet", -7722014);
        f5674d.put("brown", -5952982);
        f5674d.put("burlywood", -2180985);
        f5674d.put("cadetblue", -10510688);
        f5674d.put("chartreuse", -8388864);
        f5674d.put("chocolate", -2987746);
        f5674d.put("coral", -32944);
        f5674d.put("cornflowerblue", -10185235);
        f5674d.put("cornsilk", -1828);
        f5674d.put("crimson", -2354116);
        f5674d.put("cyan", -16711681);
        f5674d.put("darkblue", -16777077);
        f5674d.put("darkcyan", -16741493);
        f5674d.put("darkgoldenrod", -4684277);
        f5674d.put("darkgray", -5658199);
        f5674d.put("darkgreen", -16751616);
        f5674d.put("darkgrey", -5658199);
        f5674d.put("darkkhaki", -4343957);
        f5674d.put("darkmagenta", -7667573);
        f5674d.put("darkolivegreen", -11179217);
        f5674d.put("darkorange", -29696);
        f5674d.put("darkorchid", -6737204);
        f5674d.put("darkred", -7667712);
        f5674d.put("darksalmon", -1468806);
        f5674d.put("darkseagreen", -7357297);
        f5674d.put("darkslateblue", -12042869);
        f5674d.put("darkslategray", -13676721);
        f5674d.put("darkslategrey", -13676721);
        f5674d.put("darkturquoise", -16724271);
        f5674d.put("darkviolet", -7077677);
        f5674d.put("deeppink", -60269);
        f5674d.put("deepskyblue", -16728065);
        f5674d.put("dimgray", -9868951);
        f5674d.put("dimgrey", -9868951);
        f5674d.put("dodgerblue", -14774017);
        f5674d.put("firebrick", -5103070);
        f5674d.put("floralwhite", -1296);
        f5674d.put("forestgreen", -14513374);
        f5674d.put("fuchsia", -65281);
        f5674d.put("gainsboro", -2302756);
        f5674d.put("ghostwhite", -460545);
        f5674d.put("gold", -10496);
        f5674d.put("goldenrod", -2448096);
        f5674d.put("gray", -8355712);
        f5674d.put("green", -16744448);
        f5674d.put("greenyellow", -5374161);
        f5674d.put("grey", -8355712);
        f5674d.put("honeydew", -983056);
        f5674d.put("hotpink", -38476);
        f5674d.put("indianred", -3318692);
        f5674d.put("indigo", -11861886);
        f5674d.put("ivory", -16);
        f5674d.put("khaki", -989556);
        f5674d.put("lavender", -1644806);
        f5674d.put("lavenderblush", -3851);
        f5674d.put("lawngreen", -8586240);
        f5674d.put("lemonchiffon", -1331);
        f5674d.put("lightblue", -5383962);
        f5674d.put("lightcoral", -1015680);
        f5674d.put("lightcyan", -2031617);
        f5674d.put("lightgoldenrodyellow", -329006);
        f5674d.put("lightgray", -2894893);
        f5674d.put("lightgreen", -7278960);
        f5674d.put("lightgrey", -2894893);
        f5674d.put("lightpink", -18751);
        f5674d.put("lightsalmon", -24454);
        f5674d.put("lightseagreen", -14634326);
        f5674d.put("lightskyblue", -7876870);
        f5674d.put("lightslategray", -8943463);
        f5674d.put("lightslategrey", -8943463);
        f5674d.put("lightsteelblue", -5192482);
        f5674d.put("lightyellow", -32);
        f5674d.put("lime", -16711936);
        f5674d.put("limegreen", -13447886);
        f5674d.put("linen", -331546);
        f5674d.put("magenta", -65281);
        f5674d.put("maroon", -8388608);
        f5674d.put("mediumaquamarine", -10039894);
        f5674d.put("mediumblue", -16777011);
        f5674d.put("mediumorchid", -4565549);
        f5674d.put("mediumpurple", -7114533);
        f5674d.put("mediumseagreen", -12799119);
        f5674d.put("mediumslateblue", -8689426);
        f5674d.put("mediumspringgreen", -16713062);
        f5674d.put("mediumturquoise", -12004916);
        f5674d.put("mediumvioletred", -3730043);
        f5674d.put("midnightblue", -15132304);
        f5674d.put("mintcream", -655366);
        f5674d.put("mistyrose", -6943);
        f5674d.put("moccasin", -6987);
        f5674d.put("navajowhite", -8531);
        f5674d.put("navy", -16777088);
        f5674d.put("oldlace", -133658);
        f5674d.put("olive", -8355840);
        f5674d.put("olivedrab", -9728477);
        f5674d.put("orange", -23296);
        f5674d.put("orangered", -47872);
        f5674d.put("orchid", -2461482);
        f5674d.put("palegoldenrod", -1120086);
        f5674d.put("palegreen", -6751336);
        f5674d.put("paleturquoise", -5247250);
        f5674d.put("palevioletred", -2396013);
        f5674d.put("papayawhip", -4139);
        f5674d.put("peachpuff", -9543);
        f5674d.put("peru", -3308225);
        f5674d.put("pink", -16181);
        f5674d.put("plum", -2252579);
        f5674d.put("powderblue", -5185306);
        f5674d.put("purple", -8388480);
        f5674d.put("rebeccapurple", -10079335);
        f5674d.put("red", -65536);
        f5674d.put("rosybrown", -4419697);
        f5674d.put("royalblue", -12490271);
        f5674d.put("saddlebrown", -7650029);
        f5674d.put("salmon", -360334);
        f5674d.put("sandybrown", -744352);
        f5674d.put("seagreen", -13726889);
        f5674d.put("seashell", -2578);
        f5674d.put("sienna", -6270419);
        f5674d.put("silver", -4144960);
        f5674d.put("skyblue", -7876885);
        f5674d.put("slateblue", -9807155);
        f5674d.put("slategray", -9404272);
        f5674d.put("slategrey", -9404272);
        f5674d.put("snow", -1286);
        f5674d.put("springgreen", -16711809);
        f5674d.put("steelblue", -12156236);
        f5674d.put("tan", -2968436);
        f5674d.put("teal", -16744320);
        f5674d.put("thistle", -2572328);
        f5674d.put("tomato", -40121);
        f5674d.put("transparent", 0);
        f5674d.put("turquoise", -12525360);
        f5674d.put("violet", -1146130);
        f5674d.put("wheat", -663885);
        f5674d.put("white", -1);
        f5674d.put("whitesmoke", -657931);
        f5674d.put("yellow", Integer.valueOf((int) InputDeviceCompat.SOURCE_ANY));
        f5674d.put("yellowgreen", -6632142);
    }

    public static int a(String str, boolean z) {
        int parseInt;
        int i2;
        int i3;
        int i4;
        h.m(!TextUtils.isEmpty(str));
        String replace = str.replace(" ", "");
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                return parseLong | -16777216;
            }
            if (replace.length() == 9) {
                return ((parseLong & 255) << 24) | (parseLong >>> 8);
            }
            throw new IllegalArgumentException();
        } else if (replace.startsWith("rgba")) {
            Matcher matcher = (z ? f5673c : b).matcher(replace);
            if (matcher.matches()) {
                if (z) {
                    i4 = (int) (Float.parseFloat(matcher.group(4)) * 255.0f);
                } else {
                    i4 = Integer.parseInt(matcher.group(4), 10);
                }
                int parseInt2 = Integer.parseInt(matcher.group(1), 10);
                int parseInt3 = Integer.parseInt(matcher.group(2), 10);
                parseInt = Integer.parseInt(matcher.group(3), 10);
                i2 = (i4 << 24) | (parseInt2 << 16);
                i3 = parseInt3 << 8;
                return parseInt | i2 | i3;
            }
            throw new IllegalArgumentException();
        } else {
            if (replace.startsWith("rgb")) {
                Matcher matcher2 = a.matcher(replace);
                if (matcher2.matches()) {
                    int parseInt4 = Integer.parseInt(matcher2.group(1), 10);
                    int parseInt5 = Integer.parseInt(matcher2.group(2), 10);
                    parseInt = Integer.parseInt(matcher2.group(3), 10);
                    i2 = (parseInt4 << 16) | -16777216;
                    i3 = parseInt5 << 8;
                    return parseInt | i2 | i3;
                }
            } else {
                Integer num = f5674d.get(h0.p0(replace));
                if (num != null) {
                    return num.intValue();
                }
            }
            throw new IllegalArgumentException();
        }
    }
}
