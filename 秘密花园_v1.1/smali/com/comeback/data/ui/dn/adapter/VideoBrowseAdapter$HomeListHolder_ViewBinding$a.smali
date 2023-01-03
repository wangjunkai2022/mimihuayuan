.class public Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "VideoBrowseAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/dn/adapter/VideoBrowseAdapter;

    iget-object v1, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v1, v0, p1}, Lcom/comeback/data/ui/dn/VideoListActivity;->l(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method
