.class public Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "HomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/adapter/HomeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

.field public b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

.field public ivName1:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivName2:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivName3:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ivName4:Lcom/comeback/data/widget/RatioImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llVideo1:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llVideo2:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llVideo3:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public llVideo4:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/cm/adapter/HomeAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo1:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_1

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;

    move-result-object v1

    iget-object v5, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName1:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v1, v5}, Lc/a/a/b/g/h;->w0(Lcom/comeback/data/ui/cm/bean/CoverBase64;Landroid/widget/ImageView;)V

    .line 10
    iget-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo2:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;

    move-result-object v5

    iget-object v6, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName2:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v5, v6}, Lc/a/a/b/g/h;->w0(Lcom/comeback/data/ui/cm/bean/CoverBase64;Landroid/widget/ImageView;)V

    .line 15
    iget-object v5, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo3:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v2, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_5

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    .line 19
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;

    move-result-object v1

    iget-object v6, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName3:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v1, v6}, Lc/a/a/b/g/h;->w0(Lcom/comeback/data/ui/cm/bean/CoverBase64;Landroid/widget/ImageView;)V

    .line 20
    iget-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName3:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo4:Landroid/widget/LinearLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_7

    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    .line 24
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getCoverBase64()Lcom/comeback/data/ui/cm/bean/CoverBase64;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName4:Lcom/comeback/data/widget/RatioImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->w0(Lcom/comeback/data/ui/cm/bean/CoverBase64;Landroid/widget/ImageView;)V

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName4:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902da

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cm/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cm/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cm/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity$ListEntity;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cm/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->a:Lcom/comeback/data/ui/cm/adapter/HomeAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->b:Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cm/bean/HomeBean$RescontEntity;->getType_id()I

    move-result v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cm/ScreenActivity;->t(Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090143
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
