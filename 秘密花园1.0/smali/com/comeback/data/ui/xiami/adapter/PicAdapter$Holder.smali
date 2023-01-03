.class public Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "PicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xiami/adapter/PicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/xiami/bean/ImageDetail$DataBean$GroupBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/xiami/adapter/PicAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;->a:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xiami/bean/ImageDetail$DataBean$GroupBean;

    .line 2
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/ImageDetail$DataBean$GroupBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/d/a/j;->p(Ljava/lang/String;)Lf/d/a/i;

    move-result-object p1

    const v0, 0x7f0800a1

    .line 4
    invoke-virtual {p1, v0}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    const/high16 v0, -0x80000000

    .line 5
    invoke-virtual {p1, v0, v0}, Lf/d/a/s/a;->p(II)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    iget-object v0, p0, Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1, v0}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method
