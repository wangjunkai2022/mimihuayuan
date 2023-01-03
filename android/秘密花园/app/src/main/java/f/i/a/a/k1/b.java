package f.i.a.a.k1;

import android.content.res.Resources;
import android.text.TextUtils;
import chuangyuan.ycj.videolibrary.R;
import f.i.a.a.b0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import java.util.Locale;

/* compiled from: DefaultTrackNameProvider.java */
/* loaded from: classes.dex */
public class b implements h {
    public final Resources a;

    public b(Resources resources) {
        if (resources != null) {
            this.a = resources;
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.k1.h
    public String a(b0 b0Var) {
        String str;
        int f2 = r.f(b0Var.f4013i);
        if (f2 == -1) {
            if (r.g(b0Var.f4010f) == null) {
                if (r.a(b0Var.f4010f) == null) {
                    if (b0Var.n == -1 && b0Var.o == -1) {
                        if (b0Var.v == -1 && b0Var.w == -1) {
                            f2 = -1;
                        }
                    }
                }
                f2 = 1;
            }
            f2 = 2;
        }
        String str2 = "";
        if (f2 == 2) {
            String[] strArr = new String[3];
            strArr[0] = d(b0Var);
            int i2 = b0Var.n;
            int i3 = b0Var.o;
            if (!(i2 == -1 || i3 == -1)) {
                str2 = this.a.getString(R.string.exo_track_resolution, Integer.valueOf(i2), Integer.valueOf(i3));
            }
            strArr[1] = str2;
            strArr[2] = b(b0Var);
            str = e(strArr);
        } else if (f2 == 1) {
            String[] strArr2 = new String[3];
            strArr2[0] = c(b0Var);
            int i4 = b0Var.v;
            if (i4 != -1 && i4 >= 1) {
                str2 = i4 != 1 ? i4 != 2 ? (i4 == 6 || i4 == 7) ? this.a.getString(R.string.exo_track_surround_5_point_1) : i4 != 8 ? this.a.getString(R.string.exo_track_surround) : this.a.getString(R.string.exo_track_surround_7_point_1) : this.a.getString(R.string.exo_track_stereo) : this.a.getString(R.string.exo_track_mono);
            }
            strArr2[1] = str2;
            strArr2[2] = b(b0Var);
            str = e(strArr2);
        } else {
            str = c(b0Var);
        }
        return str.length() == 0 ? this.a.getString(R.string.exo_track_unknown) : str;
    }

    public final String b(b0 b0Var) {
        int i2 = b0Var.f4009e;
        if (i2 == -1) {
            return "";
        }
        return this.a.getString(R.string.exo_track_bitrate, Float.valueOf(((float) i2) / 1000000.0f));
    }

    public final String c(b0 b0Var) {
        String str;
        String[] strArr = new String[2];
        String str2 = b0Var.A;
        String str3 = "";
        if (TextUtils.isEmpty(str2) || "und".equals(str2)) {
            str = str3;
        } else {
            str = (h0.a >= 21 ? Locale.forLanguageTag(str2) : new Locale(str2)).getDisplayName();
        }
        strArr[0] = str;
        strArr[1] = d(b0Var);
        String e2 = e(strArr);
        if (!TextUtils.isEmpty(e2)) {
            return e2;
        }
        if (!TextUtils.isEmpty(b0Var.b)) {
            str3 = b0Var.b;
        }
        return str3;
    }

    public final String d(b0 b0Var) {
        String string = (b0Var.f4008d & 2) != 0 ? this.a.getString(R.string.exo_track_role_alternate) : "";
        if ((b0Var.f4008d & 4) != 0) {
            string = e(string, this.a.getString(R.string.exo_track_role_supplementary));
        }
        if ((b0Var.f4008d & 8) != 0) {
            string = e(string, this.a.getString(R.string.exo_track_role_commentary));
        }
        return (b0Var.f4008d & 1088) != 0 ? e(string, this.a.getString(R.string.exo_track_role_closed_captions)) : string;
    }

    public final String e(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (str2.length() > 0) {
                if (TextUtils.isEmpty(str)) {
                    str = str2;
                } else {
                    str = this.a.getString(R.string.exo_item_list, str, str2);
                }
            }
        }
        return str;
    }
}
