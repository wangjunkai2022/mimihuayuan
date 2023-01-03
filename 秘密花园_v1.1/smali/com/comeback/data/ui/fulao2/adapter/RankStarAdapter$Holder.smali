.class public Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "RankStarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/fulao2/bean/ActorsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter;

.field public b:Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

.field public ivBand:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->a:Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->b:Lcom/comeback/data/ui/fulao2/bean/ActorsBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;->getActor_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lc/a/a/b/g/h;->C0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;->getVideo_title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/ActorsBean;->getActor_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/a/a/b/g/h;->k1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->tvNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eS1N"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    const v1, 0x7f080105

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    const v1, 0x7f08012e

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    const v1, 0x7f0800e6

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/RankStarAdapter$Holder;->ivBand:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
