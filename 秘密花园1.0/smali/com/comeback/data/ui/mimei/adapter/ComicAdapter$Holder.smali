.class public Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ComicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/adapter/ComicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/mimei/adapter/ComicAdapter;

.field public b:Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

.field public ivCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/mimei/adapter/ComicAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;->a:Lcom/comeback/data/ui/mimei/adapter/ComicAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;->b:Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getFull_cover_path()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->J0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;->tvState2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/ComicAdapter$Holder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getChapterState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
