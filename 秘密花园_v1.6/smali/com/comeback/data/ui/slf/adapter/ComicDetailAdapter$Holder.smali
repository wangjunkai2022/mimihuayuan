.class public Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ComicDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/slf/bean/ChapterBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/ChapterBean;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->P0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getPoint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
