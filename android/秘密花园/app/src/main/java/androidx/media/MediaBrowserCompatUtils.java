package androidx.media;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.ActivityChooserView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class MediaBrowserCompatUtils {
    public static boolean areSameOptions(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        if (bundle == null) {
            if (bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                return true;
            }
            return false;
        } else if (bundle2 == null) {
            if (bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) {
                return true;
            }
            return false;
        } else if (bundle.getInt("android.media.browse.extra.PAGE", -1) == bundle2.getInt("android.media.browse.extra.PAGE", -1) && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean hasDuplicatedItems(Bundle bundle, Bundle bundle2) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE", -1);
        if (bundle2 == null) {
            i2 = -1;
        } else {
            i2 = bundle2.getInt("android.media.browse.extra.PAGE", -1);
        }
        if (bundle == null) {
            i3 = -1;
        } else {
            i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        }
        if (bundle2 == null) {
            i4 = -1;
        } else {
            i4 = bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        }
        int i9 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (i8 == -1 || i3 == -1) {
            i5 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            i6 = 0;
        } else {
            i6 = i8 * i3;
            i5 = (i3 + i6) - 1;
        }
        if (i2 == -1 || i4 == -1) {
            i7 = 0;
        } else {
            i7 = i2 * i4;
            i9 = (i4 + i7) - 1;
        }
        return i5 >= i7 && i9 >= i6;
    }
}
