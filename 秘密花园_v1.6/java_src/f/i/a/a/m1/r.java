package f.i.a.a.m1;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.tencent.smtt.sdk.TbsListener;
import java.util.ArrayList;
/* compiled from: MimeTypes.java */
/* loaded from: classes.dex */
public final class r {
    public static final ArrayList<a> a = new ArrayList<>();

    /* compiled from: MimeTypes.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final String a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5768c;
    }

    @Nullable
    public static String a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : h0.n0(str)) {
            String c2 = c(str2);
            if (c2 != null && h(c2)) {
                return c2;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int b(String str) {
        char c2;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c2 = 6;
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
                return 5;
            case 1:
                return 6;
            case 2:
                return 18;
            case 3:
                return 17;
            case 4:
                return 7;
            case 5:
                return 8;
            case 6:
                return 14;
            default:
                return 0;
        }
    }

    @Nullable
    public static String c(@Nullable String str) {
        String str2 = null;
        if (str == null) {
            return null;
        }
        String p0 = h0.p0(str.trim());
        if (p0.startsWith("avc1") || p0.startsWith("avc3")) {
            return "video/avc";
        }
        if (p0.startsWith("hev1") || p0.startsWith("hvc1")) {
            return "video/hevc";
        }
        if (p0.startsWith("dvav") || p0.startsWith("dva1") || p0.startsWith("dvhe") || p0.startsWith("dvh1")) {
            return "video/dolby-vision";
        }
        if (p0.startsWith("av01")) {
            return "video/av01";
        }
        if (p0.startsWith("vp9") || p0.startsWith("vp09")) {
            return "video/x-vnd.on2.vp9";
        }
        if (p0.startsWith("vp8") || p0.startsWith("vp08")) {
            return "video/x-vnd.on2.vp8";
        }
        if (p0.startsWith("mp4a")) {
            if (p0.startsWith("mp4a.")) {
                String substring = p0.substring(5);
                if (substring.length() >= 2) {
                    try {
                        str2 = d(Integer.parseInt(h0.q0(substring.substring(0, 2)), 16));
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            return str2 == null ? "audio/mp4a-latm" : str2;
        } else if (p0.startsWith("ac-3") || p0.startsWith("dac3")) {
            return "audio/ac3";
        } else {
            if (p0.startsWith("ec-3") || p0.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (p0.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (p0.startsWith("ac-4") || p0.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (p0.startsWith("dtsc") || p0.startsWith("dtse")) {
                return "audio/vnd.dts";
            }
            if (p0.startsWith("dtsh") || p0.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (p0.startsWith("opus")) {
                return "audio/opus";
            }
            if (p0.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (p0.startsWith("flac")) {
                return "audio/flac";
            }
            int size = a.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = a.get(i2);
                if (p0.startsWith(aVar.b)) {
                    return aVar.a;
                }
            }
            return null;
        }
    }

    @Nullable
    public static String d(int i2) {
        if (i2 != 32) {
            if (i2 != 33) {
                if (i2 != 35) {
                    if (i2 != 64) {
                        if (i2 != 163) {
                            if (i2 != 177) {
                                if (i2 != 165) {
                                    if (i2 != 166) {
                                        switch (i2) {
                                            case 96:
                                            case 97:
                                            case 98:
                                            case 99:
                                            case 100:
                                            case 101:
                                                return "video/mpeg2";
                                            case 102:
                                            case 103:
                                            case 104:
                                                return "audio/mp4a-latm";
                                            case 105:
                                            case 107:
                                                return "audio/mpeg";
                                            case 106:
                                                return "video/mpeg";
                                            default:
                                                switch (i2) {
                                                    case TbsListener.ErrorCode.STARTDOWNLOAD_10 /* 169 */:
                                                    case TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_2 /* 172 */:
                                                        return "audio/vnd.dts";
                                                    case TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE /* 170 */:
                                                    case TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_1 /* 171 */:
                                                        return "audio/vnd.dts.hd";
                                                    case TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_3 /* 173 */:
                                                        return "audio/opus";
                                                    case TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_4 /* 174 */:
                                                        return "audio/ac4";
                                                    default:
                                                        return null;
                                                }
                                        }
                                    }
                                    return "audio/eac3";
                                }
                                return "audio/ac3";
                            }
                            return "video/x-vnd.on2.vp9";
                        }
                        return "video/wvc1";
                    }
                    return "audio/mp4a-latm";
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return "video/mp4v-es";
    }

    @Nullable
    public static String e(@Nullable String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static int f(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (h(str)) {
            return 1;
        }
        if (j(str)) {
            return 2;
        }
        if (i(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            return 3;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str)) {
            return 4;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 5;
        }
        int size = a.size();
        for (int i2 = 0; i2 < size; i2++) {
            a aVar = a.get(i2);
            if (str.equals(aVar.a)) {
                return aVar.f5768c;
            }
        }
        return -1;
    }

    @Nullable
    public static String g(@Nullable String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : h0.n0(str)) {
            String c2 = c(str2);
            if (c2 != null && j(c2)) {
                return c2;
            }
        }
        return null;
    }

    public static boolean h(@Nullable String str) {
        return "audio".equals(e(str));
    }

    public static boolean i(@Nullable String str) {
        return "text".equals(e(str));
    }

    public static boolean j(@Nullable String str) {
        return "video".equals(e(str));
    }
}
