.class public Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;

.field public b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvIntro:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getCover_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/ScreenAdapter$Holder;->tvIntro:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getIntro()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
