.class public Lcom/comeback/data/ui/gkj/bean/SpecialBean;
.super Lf/e/a/f/k;
.source "SpecialBean.java"


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;->isVip()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public isHaveMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->haveMore:Z

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->data:Ljava/util/List;

    return-void
.end method

.method public setHaveMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/gkj/bean/SpecialBean;->haveMore:Z

    return-void
.end method
