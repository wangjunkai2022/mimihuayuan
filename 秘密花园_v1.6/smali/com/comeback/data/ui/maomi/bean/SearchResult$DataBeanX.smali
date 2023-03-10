.class public Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBeanX"
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;",
            ">;"
        }
    .end annotation
.end field

.field public total_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;->data:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;->total_page:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;->data:Ljava/util/List;

    return-void
.end method

.method public setTotal_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/SearchResult$DataBeanX;->total_page:I

    return-void
.end method
