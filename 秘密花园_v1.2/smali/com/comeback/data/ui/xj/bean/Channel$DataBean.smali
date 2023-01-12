.class public Lcom/comeback/data/ui/xj/bean/Channel$DataBean;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;
    }
.end annotation


# instance fields
.field public actorrows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
            ">;"
        }
    .end annotation
.end field

.field public rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
            ">;"
        }
    .end annotation
.end field

.field public sample_params:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorrows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->actorrows:Ljava/util/List;

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->rows:Ljava/util/List;

    return-object v0
.end method

.method public getSample_params()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->sample_params:Ljava/lang/String;

    return-object v0
.end method

.method public setActorrows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->actorrows:Ljava/util/List;

    return-void
.end method

.method public setRows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->rows:Ljava/util/List;

    return-void
.end method

.method public setSample_params(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/Channel$DataBean;->sample_params:Ljava/lang/String;

    return-void
.end method
