.class public Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "DiscoverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

.field public b:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

.field public mIvImg:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter$Holder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX$DataBean;->getThumb()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter$Holder;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
