.class public Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "AnimateItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;
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
.field public a:Lf/a/a/a/a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiAnimateItem;",
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
            "Lcom/comeback/data/ui/mimei/bean/MimeiAnimateItem;",
            ">;",
            "Lf/a/a/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;->b:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;->a:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/mimei/bean/MimeiAnimateItem;

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XxYXFBhJFhwaC1MUVg4ZA0YRDgdFEFc="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;->a:Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lc/a/a/b/g/h;->J0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    iget-object p2, p1, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$a;-><init>(Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 8
    :cond_0
    throw v1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01cd

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter$b;-><init>(Lcom/comeback/data/ui/mimei/adapter/AnimateItemAdapter;Landroid/view/View;)V

    return-object p2
.end method
