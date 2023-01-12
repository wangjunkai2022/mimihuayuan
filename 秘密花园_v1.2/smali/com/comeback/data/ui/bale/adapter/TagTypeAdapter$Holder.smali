.class public Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "TagTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

.field public b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;

.field public normalColor:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public selectColor:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->tvTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    .line 6
    iget v1, v1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->e:I

    if-ne p1, v1, :cond_0

    .line 7
    iget v1, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->selectColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->normalColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->tvTag:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    .line 9
    iget v1, v1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->e:I

    if-ne p1, v1, :cond_1

    const p1, 0x7f080083

    goto :goto_1

    :cond_1
    const p1, 0x7f080089

    .line 10
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method
