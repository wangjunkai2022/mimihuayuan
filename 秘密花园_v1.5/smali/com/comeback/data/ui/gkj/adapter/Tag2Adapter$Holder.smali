.class public Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "Tag2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

.field public thirdText:I
    .annotation runtime Lbutterknife/BindColor;
    .end annotation
.end field

.field public tvTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean$ChildrenBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    .line 4
    iget v2, v1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->tvTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    .line 7
    iget v1, v1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    if-ne v0, v1, :cond_1

    const-string v0, "FAQFUF9HDQ=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->thirdText:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
