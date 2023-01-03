.class public Lcom/comeback/data/ui/maomi/adapter/CartoonWatchAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "CartoonWatchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/adapter/CartoonWatchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public mIvImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;

    .line 2
    sget-object v0, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 3
    invoke-static {v0}, Lf/d/a/c;->d(Landroid/content/Context;)Lf/d/a/j;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/CartoonWatch$DataBean;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/d/a/j;->p(Ljava/lang/String;)Lf/d/a/i;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lf/d/a/s/a;->h()Lf/d/a/s/a;

    move-result-object p1

    check-cast p1, Lf/d/a/i;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/CartoonWatchAdapter$Holder;->mIvImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lf/d/a/i;->G(Landroid/widget/ImageView;)Lf/d/a/s/h/i;

    return-void
.end method
