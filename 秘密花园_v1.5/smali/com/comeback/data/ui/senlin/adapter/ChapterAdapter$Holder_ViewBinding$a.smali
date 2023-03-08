.class public Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ChapterAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$a;

    if-eqz v1, :cond_1

    .line 4
    iget v1, v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;->e:I

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 6
    iput v2, v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;->e:I

    .line 7
    iget-object v0, p1, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    iget-object v0, p1, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    .line 9
    iget v1, v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;->e:I

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 11
    iget-object v0, p1, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;

    .line 12
    iget-object v0, v0, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$a;

    .line 13
    iget-object p1, p1, Lcom/comeback/data/ui/senlin/adapter/ChapterAdapter$Holder;->d:Ljava/lang/String;

    check-cast v0, Lcom/comeback/data/ui/senlin/VideoDetailActivity;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {v0, p1}, Lcom/comeback/data/ui/commom/PlayActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
