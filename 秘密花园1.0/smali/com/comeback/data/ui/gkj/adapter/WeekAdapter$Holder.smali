.class public Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "WeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gkj/adapter/WeekAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/gkj/adapter/WeekAdapter;

.field public b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

.field public ivCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvHot:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvStar:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTag4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvUpdate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/gkj/adapter/WeekAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/WeekAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvTag1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->isNew()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvTag2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getIs_recommend()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvTag3:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getStatus()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvTag4:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getDump_status()I

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "0szvg9Dg"

    goto :goto_1

    :cond_2
    const-string v1, "3939jNbO"

    :goto_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvStar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvUpdate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getUpdate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->tvHot:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getHot()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getCover_url()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->ivCover:Landroid/widget/ImageView;

    const/16 v1, 0x14

    invoke-static {p1, v0, v1}, Lc/a/a/b/g/h;->D0(Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void
.end method
