.class public Lcom/comeback/data/ui/slf/adapter/PicAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "PicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/PicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/slf/adapter/PicAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/PicAdapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/PicAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    const-string v1, "GRECAg5dTUsH"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    invoke-static {v2}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v1, Lf/e/a/j/k0/h/e/b;

    invoke-direct {v1, p1}, Lf/e/a/j/k0/h/e/b;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {v2, p1}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p1

    const v1, 0x7f0800a1

    .line 6
    invoke-virtual {p1, v1}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    const/high16 v1, -0x80000000

    .line 7
    invoke-virtual {p1, v1, v1}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    .line 8
    invoke-virtual {p1, v0}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method
