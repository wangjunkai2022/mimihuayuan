.class public Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ChapterAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->d:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->a:Lcom/comeback/data/bean/PlayListBean;

    invoke-virtual {v2}, Lcom/comeback/data/bean/PlayListBean;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$a;->a(ILjava/lang/String;)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    .line 6
    iget v1, v0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->e:I

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    iget-object v0, p1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    .line 9
    iput v1, v0, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->e:I

    .line 10
    iget-object p1, p1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;

    .line 11
    iget v0, p1, Lcom/comeback/data/ui/movieCloud/adapter/ChapterAdapter;->e:I

    .line 12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
