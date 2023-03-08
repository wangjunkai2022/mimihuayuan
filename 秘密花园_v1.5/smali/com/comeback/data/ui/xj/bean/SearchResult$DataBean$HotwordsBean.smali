.class public Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotwordsBean"
.end annotation


# instance fields
.field public dspwd:Ljava/lang/String;

.field public schwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDspwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;->dspwd:Ljava/lang/String;

    return-object v0
.end method

.method public getSchwd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;->schwd:Ljava/lang/String;

    return-object v0
.end method

.method public setDspwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;->dspwd:Ljava/lang/String;

    return-void
.end method

.method public setSchwd(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;->schwd:Ljava/lang/String;

    return-void
.end method
