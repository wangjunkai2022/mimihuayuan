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

    const v0, 0x7f0c0090

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
    iget-object v0, p0, Lcom/comeback/data/ui/main/UpdateActivity;->tvContent:Landroid/widget/TextView;

    const-string v1, "09/DgsbQ3K/bgonYn/7LjK3mQyUbAxnU5ffQ28SM+8Te//2C2Obek8eOk8Sf8OeMvuqF+Mechb+a+6qBy/+Ey4OKxMeM+rHW/Mnc5MWO3/HfwMiC6sXft/yAkOqd78aMoOeFy/mchb+byYOPyMKF7rmG3tuM55HQ8+QIBQpUXwlFXIXs+peCn5T8sEc5GhOPj++G9MCXgoiX26GDxt+E4ZiF98yN+47a6fbTwPmN+e/T2cCDy/LWj/+Cjfic0u6Pi/iG6O6WqZiX3Y+Dxf+F3raE0/eO+abb8Nvb2/SCzNzR9t2B1PDdjsyBoM+b6uFXVRBdWAkBB9fOxtHo147Yzt7i+YzU9N2I1oKM7J3tw4+PyIXcy5q4oJfev4/F14XGlIXq7ITPow8RFApbGhhdWhmH6cSO9pxDHBJVExeN0eLT2v6D1dfRvcSDu/Gc0uiDit+K99WVt5ZPBEZZWAIXH0cRWUtEHVZcHQMaCwwOTBNeBRYFHRpJDxEUClsaGF1ZGYfpxI72nEcWClEACgsOjInGi+rclrall96/j8XXiviJhO3BVxFLDVMOQBMIGVlEGBZNCQ5cQVoUE1URERpfCUVcXwYZTQodlNulgOPyh9O8it7ZVxFLDVMOQBMIGVlEGBoaHl1KDwpdClUJAgUWAhkBDAlEABZbHAtRVVhKXwlFXF8GGU0ZWwcSRBRCRUwTThhVXV1KF18SCE4IDQNNCFgPTBdEG1ZeFlUUR0QIEVULABFaSxtNRwMVDkhXEhoRAVtVXUUfWF0JCUEOVgkMBhgRTAwEHlwHU0YIBQpUXwlFXEMMHwdJQElJGx8BEFVSAVtNCAodQ1wGDxoEFwdMGBgKDAkORg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->j1(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
