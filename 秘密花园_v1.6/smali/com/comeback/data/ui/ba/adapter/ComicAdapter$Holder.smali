.class public Lcom/comeback/data/ui/ba/adapter/ComicAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ComicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ba/adapter/ComicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/ba/bean/BaComicsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/ba/adapter/ComicAdapter;

.field public b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvRank:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/ba/adapter/ComicAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/ba/adapter/ComicAdapter$Holder;->a:Lcom/comeback/data/ui/ba/adapter/ComicAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/ba/adapter/ComicAdapter$Holder;->b:Lcom/comeback/data/ui/ba/bean/BaComicsBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/ba/adapter/ComicAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/ba/adapter/ComicAdapter$Holder;->tvRank:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getFollow_num()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BaComicsBean;->getSmall_picture()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/ba/adapter/ComicAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lc/a/a/b/g/h;->u0(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
