.class public Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VTypeItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;,
        Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$c;
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
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;",
            ">;",
            "Lf/a/a/a/a;",
            "Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->b:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->a:Lf/a/a/a/a;

    .line 4
    iput-object p4, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->c:Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$c;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    .line 3
    iget-object v0, p1, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->getType_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;

    invoke-direct {v0, p0, p2}, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;-><init>(Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c01ee

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$c;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$c;-><init>(Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;Landroid/view/View;)V

    return-object p2
.end method
