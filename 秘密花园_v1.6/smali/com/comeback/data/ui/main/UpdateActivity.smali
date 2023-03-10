.class public Lcom/comeback/data/ui/main/UpdateActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "UpdateActivity.java"


# instance fields
.field public tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/main/UpdateActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0092

    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/main/UpdateActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "38/Fgfr5"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lc/a/a/b/g/h;->m0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/main/UpdateActivity;->tvContent:Landroid/widget/TextView;

    const-string v1, "09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWRmH6cSO9pxHFgpRAAoLDoyJxovq3Ja2pZfev4/F14r4iYTtwVcRSw1TDkATCBlZRBgWTQkOXEpWCx9cEhpSW1MLABFaVxFLDUBI09rpjfjz09rojNbOBVEBWBQPDB4TGA1NTBwSCQ8KRV8aCxkEGQRCC00HBB4WQFwOWwodWENLCwARWlcRSw1TDkATCBlZRBgaGh5dSg8KXQpVCQIFFgIZAQwJRAAWWxwLUVRYSl8JRVxfBhlNGVsHEkQUQkVME04YVV1dShdfEghOCA0DTQhYD0wXRBtWXhZSFEdECBFVCwARWksbTUcDFQ5IVxIaEQFbVV1FH1hdCQlBDlYJDAYYEUwMBB5cBg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->l1(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/main/UpdateActivity;->tvContent:Landroid/widget/TextView;

    const-string v1, "09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWRmH6cSO9pxHFgpRAAoLDoyJxovq3Ja2pZfev4/F14r4iYTtwVcRSw1TDkATCBlZRBgWTQkOXFReFR9TAUQIEVULABFaWF3ejuKBr/+c0uiDit9fBhlNGVsHEkQUQkVMBloKGkoHEldJHBNDSRsFDkRETQQFGRdcXRsJWQJYSl8JRVxfBhlNGVsHEkQUQkVMBloKGkoHEldJHBNDSRsFDkRETQQFGRdcXRsJWQJKSkNXVRBdWAkBBxMbEkAXC1BMRFoPCx1FH1hdCQlBEFYJDAYYEUwDCgFdVh0OWwodWUNLCwARWlcRSw1TDkATCBlZRBgPDgwSXVVSHRxbEg9EAARaTRBLDBJLVxYIXAgVD1c="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->l1(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
