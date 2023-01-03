.class public Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lf/a/a/a/a;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->b:Lf/a/a/a/a;

    return-object v0
.end method

.method public synthetic d(Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->getVideo_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/comeback/data/ui/nana/MovieDetailActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->getCover()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->K0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;->getVideo_duration()I

    move-result v1

    invoke-static {v1}, Lc/a/a/b/g/h;->f1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lf/e/a/j/g0/k/a;

    invoke-direct {v0, p0, p2}, Lf/e/a/j/g0/k/a;-><init>(Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;Lcom/comeback/data/ui/nana/bean/VideoListBean$ResponseEntity$VideosEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01e9

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/nana/adapter/VVideoAdapter$a;-><init>(Lcom/comeback/data/ui/nana/adapter/VVideoAdapter;Landroid/view/View;)V

    return-object p2
.end method
