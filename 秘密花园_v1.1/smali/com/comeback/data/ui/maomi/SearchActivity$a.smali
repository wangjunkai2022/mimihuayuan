.class public Lcom/comeback/data/ui/maomi/SearchActivity$a;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/SearchActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/maomi/bean/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/comeback/data/ui/maomi/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/SearchActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->g:Lcom/comeback/data/ui/maomi/SearchActivity;

    iput p2, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->f:I

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/SearchResult;

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->g:Lcom/comeback/data/ui/maomi/SearchActivity;

    .line 3
    iget-boolean v2, v0, Lcom/comeback/data/ui/maomi/SearchActivity;->g:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/comeback/data/base/BaseVRefreshActivity;->r()V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->g:Lcom/comeback/data/ui/maomi/SearchActivity;

    .line 6
    iput-boolean v1, v0, Lcom/comeback/data/ui/maomi/SearchActivity;->g:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->g:Lcom/comeback/data/ui/maomi/SearchActivity;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/comeback/data/ui/maomi/SearchActivity;->g:Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/SearchActivity$a;->g:Lcom/comeback/data/ui/maomi/SearchActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/maomi/SearchActivity;->u(Lcom/comeback/data/ui/maomi/SearchActivity;Lcom/comeback/data/ui/maomi/bean/SearchResult;)V

    return-void
.end method
