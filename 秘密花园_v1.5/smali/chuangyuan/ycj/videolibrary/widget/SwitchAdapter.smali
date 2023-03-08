.class public Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;
.super Landroid/widget/BaseAdapter;
.source "SwitchAdapter.java"


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mInflater:Landroid/view/LayoutInflater;

.field public selectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->data:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->selectIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lchuangyuan/ycj/videolibrary/R$layout;->simple_exo_belowview_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    :goto_0
    iget-object p3, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget p3, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->selectIndex:I

    if-ne p1, p3, :cond_1

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->mContext:Landroid/content/Context;

    sget p3, Lchuangyuan/ycj/videolibrary/R$color;->simple_exo_color_switch_item:I

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->mContext:Landroid/content/Context;

    const p3, 0x106000b

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lchuangyuan/ycj/videolibrary/widget/SwitchAdapter;->selectIndex:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
