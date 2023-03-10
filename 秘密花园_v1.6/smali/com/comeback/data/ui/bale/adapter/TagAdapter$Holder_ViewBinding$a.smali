.class public Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "TagAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->getId()I

    move-result v1

    iget-object v2, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean$ListBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagAdapter;

    .line 7
    iget-object v0, v0, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->d:Lcom/comeback/data/ui/bale/adapter/TagAdapter$a;

    .line 8
    sget-object v1, Lcom/comeback/data/ui/bale/adapter/TagAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    check-cast v0, Lf/e/a/j/d/d/b;

    .line 9
    iget-object v0, v0, Lf/e/a/j/d/d/b;->a:Lcom/comeback/data/ui/bale/fragment/TagFragment;

    iget-object v0, v0, Lcom/comeback/data/ui/bale/fragment/TagFragment;->tvSelectCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0tXRg8bo0LP6gJTgn8fdSw=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/comeback/data/ui/bale/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
