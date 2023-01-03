.class public Lcom/comeback/data/ui/md/adapter/VideoAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "VideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/md/adapter/VideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/md/adapter/VideoAdapter;

.field public b:Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;

.field public ivImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/md/adapter/VideoAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/md/adapter/VideoAdapter$Holder;->a:Lcom/comeback/data/ui/md/adapter/VideoAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/md/adapter/VideoAdapter$Holder;->b:Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/md/bean/VideoList$DataEntity;->getThumb()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/md/adapter/VideoAdapter$Holder;->ivImg:Landroid/widget/ImageView;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 6
    invoke-static {v1}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v1

    new-instance v2, Lf/e/a/j/d0/d/f/a;

    invoke-direct {v2, p1}, Lf/e/a/j/d0/d/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lf/d/a/j;->o(Ljava/lang/Object;)Lf/d/a/i;

    move-result-object p1

    const v1, 0x7f0800a1

    .line 7
    invoke-virtual {p1, v1}, Lf/d/a/s/a;->q(I)Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    .line 8
    invoke-virtual {p1, v0}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    :goto_0
    return-void
.end method
