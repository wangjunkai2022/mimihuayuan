.class public Lcom/comeback/data/ui/gkj/bean/ComicDetail;
.super Lf/e/a/f/k;
.source "ComicDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail;->data:Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    return-object v0
.end method

.method public setData(Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicDetail;->data:Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity;

    return-void
.end method
