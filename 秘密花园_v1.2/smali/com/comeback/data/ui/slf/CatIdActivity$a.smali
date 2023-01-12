.class public Lcom/comeback/data/ui/slf/CatIdActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "CatIdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/CatIdActivity;->p(I)V
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

.field public final synthetic g:Lcom/comeback/data/ui/slf/CatIdActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/CatIdActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/CatIdActivity$a;->g:Lcom/comeback/data/ui/slf/CatIdActivity;

    iput p2, p0, Lcom/comeback/data/ui/slf/CatIdActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/slf/CatIdActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/CatIdActivity$a;->g:Lcom/comeback/data/ui/slf/CatIdActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/slf/CatIdActivity;->r(Lcom/comeback/data/ui/slf/CatIdActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/slf/CatIdActivity$a;->g:Lcom/comeback/data/ui/slf/CatIdActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/slf/CatIdActivity;->s(Lcom/comeback/data/ui/slf/CatIdActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
