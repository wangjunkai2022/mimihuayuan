.class public Lcom/comeback/data/ui/bale/adapter/StarAdapter$a;
.super Ljava/lang/Object;
.source "StarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/StarAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;

.field public final synthetic b:Lcom/comeback/data/ui/bale/adapter/StarAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/StarAdapter;Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/StarAdapter$a;->b:Lcom/comeback/data/ui/bale/adapter/StarAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/StarAdapter$a;->a:Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/StarAdapter$a;->b:Lcom/comeback/data/ui/bale/adapter/StarAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/StarAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/StarAdapter$a;->a:Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/bale/ActorDetailActivity;->l(Landroid/content/Context;I)V

    return-void
.end method
