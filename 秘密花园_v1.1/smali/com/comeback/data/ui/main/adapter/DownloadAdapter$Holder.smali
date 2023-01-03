.class public Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "DownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/main/adapter/DownloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/main/bean/VideoCacheBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

.field public b:Lcom/comeback/data/ui/main/adapter/DownloadAdapter;

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/main/adapter/DownloadAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/DownloadAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->tvTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0N7wgcbr3qjdg4nyQg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->tvState:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->isDownloadFinish()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0ODagezI36HegKDZ"

    goto :goto_0

    :cond_0
    const-string p1, "0NnEg9De3Yv4jona"

    :goto_0
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const v0, 0x7f090138

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->isDownloadFinish()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/DownloadAdapter;

    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getCachePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/commom/LocalPlayActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/DownloadAdapter;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/main/adapter/DownloadAdapter;->d:Lcom/comeback/data/ui/main/adapter/DownloadAdapter$a;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    check-cast p1, Lcom/comeback/data/ui/main/DownloadActivity;

    if-eqz p1, :cond_3

    .line 7
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 8
    iget-object v1, v1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    if-eqz v1, :cond_2

    const-string p1, "383Ug8b63I32g4n0nePuj4zZhu7Klpe/le6kgv7nhte3h/PLjeWJ18jd0e3Z"

    .line 9
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v1, p1, Lcom/comeback/data/ui/main/DownloadActivity;->tvName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0c/Agffb3Yv4jonal9b5"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v1, Lf/e/a/h/a;

    invoke-direct {v1, v0}, Lf/e/a/h/a;-><init>(Lcom/comeback/data/ui/main/bean/VideoCacheBean;)V

    .line 12
    invoke-virtual {v1, p1}, Lf/e/a/h/a;->b(Lf/e/a/h/h/c;)V

    .line 13
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 14
    iput-object v1, p1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    goto :goto_0

    .line 15
    :cond_3
    throw v1

    .line 16
    :cond_4
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 17
    iget-object p1, p1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    if-eqz p1, :cond_5

    .line 18
    iget-object v0, p1, Lf/e/a/h/a;->e:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    .line 19
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lf/e/a/h/a;->d()V

    .line 21
    sget-object p1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 22
    iput-object v1, p1, Lcom/comeback/data/App;->a:Lf/e/a/h/a;

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getCachePath()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 27
    :cond_6
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/main/bean/VideoCacheBean;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lc/a/a/b/g/h;->y(Ljava/io/File;)V

    .line 28
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->a:Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    const-class v0, Lcom/comeback/data/ui/main/bean/VideoCacheBean;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lf/e/a/k/g;->c(Ljava/lang/Class;I)V

    .line 29
    iget-object p1, p0, Lcom/comeback/data/ui/main/adapter/DownloadAdapter$Holder;->b:Lcom/comeback/data/ui/main/adapter/DownloadAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-eqz p1, :cond_8

    if-ltz v0, :cond_7

    .line 30
    iget-object v1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 31
    iget-object v1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_7
    :goto_0
    return-void

    .line 33
    :cond_8
    throw v1
.end method
