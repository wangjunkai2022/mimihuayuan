.class public Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "TagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/bale/adapter/TagAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/bale/adapter/TagAdapter;

.field public b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

.field public ivCheck:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/bale/adapter/TagAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->ivCheck:Landroid/widget/ImageView;

    sget-object v1, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
