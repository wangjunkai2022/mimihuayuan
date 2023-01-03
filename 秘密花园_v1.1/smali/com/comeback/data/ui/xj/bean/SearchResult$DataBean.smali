.class public Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;
    }
.end annotation


# instance fields
.field public hotrows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field public hotwords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;",
            ">;"
        }
    .end annotation
.end field

.field public vodrows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field public xxx_api_auth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotrows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->hotrows:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->hotrows:Ljava/util/List;

    return-object v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->vodrows:Ljava/util/List;

    return-object v0
.end method

.method public getHotwords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->hotwords:Ljava/util/List;

    return-object v0
.end method

.method public getXxx_api_auth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->xxx_api_auth:Ljava/lang/String;

    return-object v0
.end method

.method public setHotrows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->hotrows:Ljava/util/List;

    return-void
.end method

.method public setHotwords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->hotwords:Ljava/util/List;

    return-void
.end method

.method public setXxx_api_auth(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;->xxx_api_auth:Ljava/lang/String;

    return-void
.end method
