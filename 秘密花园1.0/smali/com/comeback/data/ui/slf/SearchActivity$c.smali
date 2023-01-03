.class public Lcom/comeback/data/ui/slf/SearchActivity$c;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/SearchActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Ljava/util/ArrayList<",
        "Lcom/comeback/data/ui/slf/bean/SLFItemBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/slf/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/SearchActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->g:Lcom/comeback/data/ui/slf/SearchActivity;

    iput p2, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->g:Lcom/comeback/data/ui/slf/SearchActivity;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/slf/SearchActivity;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->g:Lcom/comeback/data/ui/slf/SearchActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/slf/SearchActivity;->tvNoResult:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->f:I

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->g:Lcom/comeback/data/ui/slf/SearchActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/slf/SearchActivity;->s(Lcom/comeback/data/ui/slf/SearchActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/SearchActivity$c;->g:Lcom/comeback/data/ui/slf/SearchActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/slf/SearchActivity;->t(Lcom/comeback/data/ui/slf/SearchActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
