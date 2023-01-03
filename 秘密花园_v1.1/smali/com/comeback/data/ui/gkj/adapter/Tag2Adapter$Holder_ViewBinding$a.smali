.class public Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "Tag2Adapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder_ViewBinding;Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    .line 4
    iget v2, v1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    .line 5
    iput v0, v1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->d:I

    .line 6
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 7
    iget-object v1, p1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;

    .line 9
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter;->e:Lcom/comeback/data/ui/gkj/adapter/Tag2Adapter$a;

    .line 10
    check-cast p1, Lf/e/a/j/m/m;

    .line 11
    iget-object p1, p1, Lf/e/a/j/m/m;->a:Lcom/comeback/data/ui/gkj/ScreenActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/gkj/ScreenActivity;->r(Lcom/comeback/data/ui/gkj/ScreenActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
