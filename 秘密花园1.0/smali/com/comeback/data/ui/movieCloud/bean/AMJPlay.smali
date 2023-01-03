.class public Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;
.super Lf/e/a/f/j;
.source "AMJPlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;


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
    iget v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;->code:I

    return v0
.end method

.method public getData()Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;->data:Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;->code:I

    return-void
.end method

.method public setData(Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;->data:Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;

    return-void
.end method
