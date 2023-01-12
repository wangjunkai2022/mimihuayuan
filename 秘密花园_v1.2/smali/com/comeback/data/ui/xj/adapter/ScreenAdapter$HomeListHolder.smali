.class public Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "ScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/adapter/ScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeListHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/xj/bean/VideoBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter;

.field public ivExclusive:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivVideoCover:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivVip:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivclear:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvVideoDurtion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvVideoTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/xj/adapter/ScreenAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/VideoBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->tvVideoTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getCoverpic()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivVideoCover:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->B0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivVip:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->isVip()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->tvVideoDurtion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getExclusive()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivExclusive:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDefinition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivclear:Landroid/widget/ImageView;

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDefinition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivclear:Landroid/widget/ImageView;

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->ivclear:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lf/e/a/j/s0/d/a;

    invoke-direct {v1, p0, p1}, Lf/e/a/j/s0/d/a;-><init>(Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;Lcom/comeback/data/ui/xj/bean/VideoBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic b(Lcom/comeback/data/ui/xj/bean/VideoBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/xj/adapter/ScreenAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/ScreenAdapter;

    iget-object p2, p2, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getVodid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/VideoBean;->getDefinition()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/comeback/data/ui/xj/PlayActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
