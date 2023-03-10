.class public Lcom/comeback/data/ui/gkj/bean/ScreenBean;
.super Lf/e/a/f/k;
.source "ScreenBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;,
        Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;
    }
.end annotation


# instance fields
.field public pay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;"
        }
    .end annotation
.end field

.field public sort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;"
        }
    .end annotation
.end field

.field public state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getPay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->pay:Ljava/util/List;

    return-object v0
.end method

.method public getSort()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->sort:Ljava/util/List;

    return-object v0
.end method

.method public getState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->state:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->type:Ljava/util/List;

    return-object v0
.end method

.method public setPay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->pay:Ljava/util/List;

    return-void
.end method

.method public setSort(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->sort:Ljava/util/List;

    return-void
.end method

.method public setState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->state:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ScreenBean$TypeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ScreenBean;->type:Ljava/util/List;

    return-void
.end method
