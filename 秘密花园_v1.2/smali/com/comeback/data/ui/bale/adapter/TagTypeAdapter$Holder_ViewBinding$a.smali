.class public Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "TagTypeAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    .line 4
    iget v2, v1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->e:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->d:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$a;

    .line 6
    iget-object v2, p1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/bale/bean/Tags$ResultBean$TagsBean;->getList()Ljava/util/List;

    move-result-object v2

    check-cast v1, Lf/e/a/j/d/d/c;

    .line 7
    iget-object v3, v1, Lf/e/a/j/d/d/c;->a:Lcom/comeback/data/ui/bale/adapter/TagAdapter;

    invoke-virtual {v3}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 8
    iget-object v1, v1, Lf/e/a/j/d/d/c;->a:Lcom/comeback/data/ui/bale/adapter/TagAdapter;

    .line 9
    iget-object v3, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/comeback/data/base/BaseAbstractAdapter;->b(Ljava/util/List;I)V

    .line 10
    iget-object v1, p1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    .line 11
    iget v2, v1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->e:I

    .line 12
    iput v0, v1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->e:I

    .line 13
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 14
    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;

    .line 15
    iget v0, p1, Lcom/comeback/data/ui/bale/adapter/TagTypeAdapter;->e:I

    .line 16
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void
.end method
