.class public Lf/e/a/k/d;
.super Lcom/youth/banner/loader/ImageLoader;
.source "GKJImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/loader/ImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/widget/ImageView;

    .line 2
    check-cast p2, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;->getCover_oss_filename()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    invoke-static {p1, p3, p2}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method
