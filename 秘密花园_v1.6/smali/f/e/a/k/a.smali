.class public Lf/e/a/k/a;
.super Lcom/youth/banner/loader/ImageLoader;
.source "AbbGlideImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/e/a/k/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/loader/ImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public displayImage(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p3, Landroid/widget/ImageView;

    .line 2
    new-instance v0, Lf/e/a/k/a$a;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p1, p3, p2}, Lf/e/a/k/a$a;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    const-string p1, ""

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
