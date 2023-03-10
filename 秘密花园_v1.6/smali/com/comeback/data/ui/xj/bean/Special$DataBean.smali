.class public Lcom/comeback/data/ui/xj/bean/Special$DataBean;
.super Ljava/lang/Object;
.source "Special.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/Special;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public row:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

.field public vodrows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
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
.method public getRow()Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/Special$DataBean;->row:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    return-object v0
.end method

.method public getVodrows()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/Special$DataBean;->vodrows:Ljava/util/List;

    return-object v0
.end method

.method public setRow(Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/Special$DataBean;->row:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    return-void
.end method

.method public setVodrows(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/Special$DataBean;->vodrows:Ljava/util/List;

    return-void
.end method
