.class public Lcom/comeback/data/ui/commom/PPTAdapter$a;
.super Ljava/lang/Object;
.source "PPTAdapter.java"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/commom/PPTAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/commom/PPTAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/commom/PPTAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/commom/PPTAdapter$a;->a:Lcom/comeback/data/ui/commom/PPTAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/commom/PPTAdapter$a;->a:Lcom/comeback/data/ui/commom/PPTAdapter;

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/commom/PPTAdapter;->c:Lcom/comeback/data/ui/commom/PPTAdapter$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/comeback/data/ui/commom/PPTAdapter$b;->a(I)V

    :cond_0
    return-void
.end method
