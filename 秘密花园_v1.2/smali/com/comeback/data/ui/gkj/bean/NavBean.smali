.class public Lcom/comeback/data/ui/gkj/bean/NavBean;
.super Lf/e/a/f/k;
.source "NavBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;",
            ">;"
        }
    .end annotation
.end field

.field public haveMore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getArticleVOS()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    .line 8
    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->isVip()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public isHaveMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/NavBean;->haveMore:Z

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean;->data:Ljava/util/List;

    return-void
.end method

.method public setHaveMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/gkj/bean/NavBean;->haveMore:Z

    return-void
.end method
