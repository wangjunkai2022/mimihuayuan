.class public Lcom/comeback/data/ui/slf/fragment/VideoFragment$b;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/fragment/VideoFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/slf/bean/SLFItemBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/slf/fragment/VideoFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/fragment/VideoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/fragment/VideoFragment$b;->f:Lcom/comeback/data/ui/slf/fragment/VideoFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/slf/fragment/VideoFragment$b;->f:Lcom/comeback/data/ui/slf/fragment/VideoFragment;

    .line 3
    iget-boolean v1, v0, Lcom/comeback/data/ui/slf/fragment/VideoFragment;->k:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v2, v0, Lcom/comeback/data/ui/slf/fragment/VideoFragment;->k:Z

    .line 5
    new-instance v1, Lf/a/a/a/l/c;

    invoke-direct {v1}, Lf/a/a/a/l/c;-><init>()V

    .line 6
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/slf/adapter/TitleAdapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "0sbEgcXF0LDOg6jPn/bo"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/comeback/data/ui/slf/adapter/TitleAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lf/a/a/a/a;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    .line 7
    :cond_0
    new-instance v1, Lf/a/a/a/l/i;

    invoke-direct {v1}, Lf/a/a/a/l/i;-><init>()V

    .line 8
    iget-object v3, v0, Lcom/comeback/data/base/BaseVRefreshFragment;->i:Lcom/alibaba/android/vlayout/DelegateAdapter;

    new-instance v4, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p1, v1, v2}, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;-><init>(Landroid/content/Context;Ljava/util/List;Lf/a/a/a/a;Z)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/vlayout/DelegateAdapter;->b(Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;)V

    return-void
.end method
