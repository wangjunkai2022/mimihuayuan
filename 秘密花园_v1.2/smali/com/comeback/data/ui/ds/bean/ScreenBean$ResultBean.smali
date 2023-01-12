.class public Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;
.super Ljava/lang/Object;
.source "ScreenBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/ds/bean/ScreenBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation


# instance fields
.field public lastPage:Z

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public isLastPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;->lastPage:Z

    return v0
.end method

.method public setLastPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;->lastPage:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/bean/ScreenBean$ResultBean;->list:Ljava/util/List;

    return-void
.end method
