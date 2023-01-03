.class public Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "CollectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/main/adapter/CollectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/main/bean/CollectVideo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/main/bean/CollectVideo;

.field public b:Lcom/comeback/data/ui/main/adapter/CollectAdapter;

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/main/adapter/CollectAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/CollectAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/main/bean/CollectVideo;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/CollectVideo;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/CollectVideo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/CollectVideo;->getAddTime()J

    move-result-wide v1

    .line 5
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v3, "ThsaHUQ+dBwXAhQvMFAOBg0REA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/CollectAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/CollectVideo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/CollectVideo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/commom/CachePlayActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/CollectAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/CollectVideo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/CollectVideo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/main/DownloadActivity;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    const-class v0, Lcom/comeback/data/ui/main/bean/CollectVideo;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lf/e/a/k/g;->c(Ljava/lang/Class;I)V

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/CollectAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/CollectAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-eqz p1, :cond_0

    if-ltz v0, :cond_1

    .line 6
    iget-object v1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900f8 -> :sswitch_2
        0x7f0900f9 -> :sswitch_1
        0x7f090138 -> :sswitch_0
    .end sparse-switch
.end method
