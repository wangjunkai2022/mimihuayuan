.class public Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;
.super Ljava/lang/Object;
.source "VTypeItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

.field public final synthetic b:Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;->b:Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;->a:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;->b:Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;

    iget-object p1, p1, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter;->c:Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$b;

    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/VTypeItemAdapter$a;->a:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    check-cast p1, Lf/e/a/j/i0/b;

    .line 2
    iget-object v1, p1, Lf/e/a/j/i0/b;->a:Lcom/comeback/data/ui/senlin/SenLinActivity;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lcom/comeback/data/ui/senlin/SenLinActivity;->g:Ljava/lang/String;

    .line 4
    iput-object v0, v1, Lcom/comeback/data/ui/senlin/SenLinActivity;->f:Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;

    .line 5
    invoke-virtual {v1}, Lcom/comeback/data/base/BaseVRefreshActivity;->r()V

    .line 6
    iget-object p1, p1, Lf/e/a/j/i0/b;->a:Lcom/comeback/data/ui/senlin/SenLinActivity;

    .line 7
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
