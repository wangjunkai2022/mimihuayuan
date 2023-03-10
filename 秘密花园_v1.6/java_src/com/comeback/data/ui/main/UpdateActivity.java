package com.comeback.data.ui.main;

import android.content.Context;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
/* loaded from: classes.dex */
public class UpdateActivity extends BaseActivity {
    @BindView
    public TextView tvContent;
    @BindView
    public TextView tvTitle;

    public static void l(Context context) {
        a.u(context, UpdateActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_update;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvTitle.setText(e.a("38/Fgfr5"));
        if (h.m0()) {
            h.l1(this.tvContent, e.a("09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWRmH6cSO9pxHFgpRAAoLDoyJxovq3Ja2pZfev4/F14r4iYTtwVcRSw1TDkATCBlZRBgWTQkOXEpWCx9cEhpSW1MLABFaVxFLDUBI09rpjfjz09rojNbOBVEBWBQPDB4TGA1NTBwSCQ8KRV8aCxkEGQRCC00HBB4WQFwOWwodWENLCwARWlcRSw1TDkATCBlZRBgaGh5dSg8KXQpVCQIFFgIZAQwJRAAWWxwLUVRYSl8JRVxfBhlNGVsHEkQUQkVME04YVV1dShdfEghOCA0DTQhYD0wXRBtWXhZSFEdECBFVCwARWksbTUcDFQ5IVxIaEQFbVV1FH1hdCQlBDlYJDAYYEUwMBB5cBg=="));
        } else {
            h.l1(this.tvContent, e.a("09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWRmH6cSO9pxHFgpRAAoLDoyJxovq3Ja2pZfev4/F14r4iYTtwVcRSw1TDkATCBlZRBgWTQkOXFReFR9TAUQIEVULABFaWF3ejuKBr/+c0uiDit9fBhlNGVsHEkQUQkVMBloKGkoHEldJHBNDSRsFDkRETQQFGRdcXRsJWQJYSl8JRVxfBhlNGVsHEkQUQkVMBloKGkoHEldJHBNDSRsFDkRETQQFGRdcXRsJWQJKSkNXVRBdWAkBBxMbEkAXC1BMRFoPCx1FH1hdCQlBEFYJDAYYEUwDCgFdVh0OWwodWUNLCwARWlcRSw1TDkATCBlZRBgPDgwSXVVSHRxbEg9EAARaTRBLDBJLVxYIXAgVD1c="));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }
}
