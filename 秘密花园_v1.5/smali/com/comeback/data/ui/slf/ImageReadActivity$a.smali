.class public Lcom/comeback/data/ui/slf/ImageReadActivity$a;
.super Lm/j;
.source "ImageReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/ImageReadActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/slf/bean/ChapterBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/slf/ImageReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/ImageReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/ImageReadActivity$a;->e:Lcom/comeback/data/ui/slf/ImageReadActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/slf/bean/ChapterBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/ImageReadActivity$a;->e:Lcom/comeback/data/ui/slf/ImageReadActivity;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->tvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0u3ygdPw36TFj6PTl9b5"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getUpdateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/ui/slf/adapter/PicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->b:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lf/e/a/j/l0/g;

    invoke-direct {v2, v0}, Lf/e/a/j/l0/g;-><init>(Lcom/comeback/data/ui/slf/ImageReadActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 8
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->b:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, v0, Lcom/comeback/data/ui/slf/ImageReadActivity;->b:Lcom/comeback/data/ui/slf/adapter/PicAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/slf/bean/ChapterBean;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
