.class public Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "ListAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/hm/adapter/ListAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;->ivImg:Lcom/comeback/data/widget/RatioImageView;

    iget-object p1, p1, Lcom/comeback/data/ui/hm/adapter/ListAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/hm/DetailActivity;->u(Landroid/content/Context;Landroid/widget/ImageView;Lcom/comeback/data/ui/hm/bean/ItemInfo;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
