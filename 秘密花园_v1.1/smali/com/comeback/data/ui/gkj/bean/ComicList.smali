.class public Lcom/comeback/data/ui/gkj/bean/ComicList;
.super Lf/e/a/f/j;
.source "ComicList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;
    }
.end annotation


# instance fields
.field public ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field public lists:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList;->ad:Ljava/util/List;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList;->data:Ljava/util/List;

    return-object v0
.end method

.method public getLists()Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicList;->lists:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;

    return-object v0
.end method

.method public setAd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList;->ad:Ljava/util/List;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList;->data:Ljava/util/List;

    return-void
.end method

.method public setLists(Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicList;->lists:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean;

    return-void
.end method
