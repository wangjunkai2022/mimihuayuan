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
    public static final Pattern f5757c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    /* renamed from: d  reason: collision with root package name */
    public static final Map<String, Integer> f5758d;

    static {
        HashMap hashMap = new HashMap();
        f5758d = hashMap;
        hashMap.put("aliceblue", -984833);
        f5758d.put("antiquewhite", -332841);
        f5758d.put("aqua", -16711681);
        f5758d.put("aquamarine", -8388652);
        f5758d.put("azure", -983041);
        f5758d.put("beige", -657956);
        f5758d.put("bisque", -6972);
        f5758d.put("black", -16777216);
        f5758d.put("blanchedalmond", -5171);
        f5758d.put("blue", -16776961);
        f5758d.put("blueviolet", -7722014);
        f5758d.put("brown", -5952982);
        f5758d.put("burlywood", -2180985);
        f5758d.put("cadetblue", -10510688);
        f5758d.put("chartreuse", -8388864);
        f5758d.put("chocolate", -2987746);
        f5758d.put("coral", -32944);
        f5758d.put("cornflowerblue", -10185235);
        f5758d.put("cornsilk", -1828);
        f5758d.put("crimson", -2354116);
        f5758d.put("cyan", -16711681);
        f5758d.put("darkblue", -16777077);
        f5758d.put("darkcyan", -16741493);
        f5758d.put("darkgoldenrod", -4684277);
        f5758d.put("darkgray", -5658199);
        f5758d.put("darkgreen", -16751616);
        f5758d.put("darkgrey", -5658199);
        f5758d.put("darkkhaki", -4343957);
        f5758d.put("darkmagenta", -7667573);
        f5758d.put("darkolivegreen", -11179217);
        f5758d.put("darkorange", -29696);
        f5758d.put("darkorchid", -6737204);
        f5758d.put("darkred", -7667712);
        f5758d.put("darksalmon", -1468806);
        f5758d.put("darkseagreen", -7357297);
        f5758d.put("darkslateblue", -12042869);
        f5758d.put("darkslategray", -13676721);
        f5758d.put("darkslategrey", -13676721);
        f5758d.put("darkturquoise", -16724271);
        f5758d.put("darkviolet", -7077677);
        f5758d.put("deeppink", -60269);
        f5758d.put("deepskyblue", -16728065);
        f5758d.put("dimgray", -9868951);
        f5758d.put("dimgrey", -9868951);
        f5758d.put("dodgerblue", -14774017);
        f5758d.put("firebrick", -5103070);
        f5758d.put("floralwhite", -1296);
        f5758d.put("forestgreen", -14513374);
        f5758d.put("fuchsia", -65281);
        f5758d.put("gainsboro", -2302756);
        f5758d.put("ghostwhite", -460545);
        f5758d.put("gold", -10496);
        f5758d.put("goldenrod", -2448096);
        f5758d.put("gray", -8355712);
        f5758d.put("green", -16744448);
        f5758d.put("greenyellow", -5374161);
        f5758d.put("grey", -8355712);
        f5758d.put("honeydew", -983056);
        f5758d.put("hotpink", -38476);
        f5758d.put("indianred", -3318692);
        f5758d.put("indigo", -11861886);
        f5758d.put("ivory", -16);
        f5758d.put("khaki", -989556);
        f5758d.put("lavender", -1644806);
        f5758d.put("lavenderblush", -3851);
        f5758d.put("lawngreen", -8586240);
        f5758d.put("lemonchiffon", -1331);
        f5758d.put("lightblue", -5383962);
        f5758d.put("lightcoral", -1015680);
        f5758d.put("lightcyan", -2031617);
        f5758d.put("lightgoldenrodyellow", -329006);
        f5758d.put("lightgray", -2894893);
        f5758d.put("lightgreen", -7278960);
        f5758d.put("lightgrey", -2894893);
        f5758d.put("lightpink", -18751);
        f5758d.put("lightsalmon", -24454);
        f5758d.put("lightseagreen", -14634326);
        f5758d.put("lightskyblue", -7876870);
        f5758d.put("lightslategray", -8943463);
        f5758d.put("lightslategrey", -8943463);
        f5758d.put("lightsteelblue", -5192482);
        f5758d.put("lightyellow", -32);
        f5758d.put("lime", -16711936);
        f5758d.put("limegreen", -13447886);
        f5758d.put("linen", -331546);
        f5758d.put("magenta", -65281);
        f5758d.put("maroon", -8388608);
        f5758d.put("mediumaquamarine", -10039894);
        f5758d.put("mediumblue", -16777011);
        f5758d.put("mediumorchid", -4565549);
        f5758d.put("mediumpurple", -7114533);
        f5758d.put("mediumseagreen", -12799119);
        f5758d.put("mediumslateblue", -8689426);
        f5758d.put("mediumspringgreen", -16713062);
        f5758d.put("mediumturquoise", -12004916);
        f5758d.put("mediumvioletred", -3730043);
        f5758d.put("midnightblue", -15132304);
        f5758d.put("mintcream", -655366);
        f5758d.put("mistyrose", -6943);
        f5758d.put("moccasin", -6987);
        f5758d.put("navajowhite", -8531);
        f5758d.put("navy", -16777088);
        f5758d.put("oldlace", -133658);
        f5758d.put("olive", -8355840);
        f5758d.put("olivedrab", -9728477);
        f5758d.put("orange", -23296);
        f5758d.put("orangered", -47872);
        f5758d.put("orchid", -2461482);
        f5758d.put("palegoldenrod", -1120086);
        f5758d.put("palegreen", -6751336);
        f5758d.put("paleturquoise", -5247250);
        f5758d.put("palevioletred", -2396013);
        f5758d.put("papayawhip", -4139);
        f5758d.put("peachpuff", -9543);
        f5758d.put("peru", -3308225);
        f5758d.put("pink", -16181);
        f5758d.put("plum", -2252579);
        f5758d.put("powderblue", -5185306);
        f5758d.put("purple", -8388480);
        f5758d.put("rebeccapurple", -10079335);
        f5758d.put("red", -65536);
        f5758d.put("rosybrown", -4419697);
        f5758d.put("royalblue", -12490271);
        f5758d.put("saddlebrown", -7650029);
        f5758d.put("salmon", -360334);
        f5758d.put("sandybrown", -744352);
        f5758d.put("seagreen", -13726889);
        f5758d.put("seashell", -2578);
        f5758d.put("sienna", -6270419);
        f5758d.put("silver", -4144960);
        f5758d.put("skyblue", -7876885);
        f5758d.put("slateblue", -9807155);
        f5758d.put("slategray", -9404272);
        f5758d.put("slategrey", -9404272);
        f5758d.put("snow", -1286);
        f5758d.put("springgreen", -16711809);
        f5758d.put("steelblue", -12156236);
        f5758d.put("tan", -2968436);
        f5758d.put("teal", -16744320);
        f5758d.put("thistle", -2572328);
        f5758d.put("tomato", -40121);
        f5758d.put("transparent", 0);
        f5758d.put("turquoise", -12525360);
        f5758d.put("violet", -1146130);
        f5758d.put("wheat", -663885);
        f5758d.put("white", -1);
        f5758d.put("whitesmoke", -657931);
        f5758d.put("yellow", Integer.valueOf((int) InputDeviceCompat.SOURCE_ANY));
        f5758d.put("yellowgreen", -6632142);
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
            Matcher matcher = (z ? f5757c : b).matcher(replace);
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
                Integer num = f5758d.get(h0.p0(replace));
                if (num != null) {
                    return num.intValue();
                }
            }
            throw new IllegalArgumentException();
        }
    }
}
