.class public Lcom/comeback/data/ui/gkj/bean/ComicRead;
.super Lf/e/a/f/j;
.source "ComicRead.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;
    }
.end annotation


# instance fields
.field public code:I

.field public content:Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicRead;->code:I

    return v0
.end method

.method public getContent()Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicRead;->content:Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/bean/ComicRead;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicRead;->code:I

    return-void
.end method

.method public setContent(Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicRead;->content:Lcom/comeback/data/ui/gkj/bean/ComicRead$ContentEntity;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/bean/ComicRead;->message:Ljava/lang/String;

    return-void
.end method
