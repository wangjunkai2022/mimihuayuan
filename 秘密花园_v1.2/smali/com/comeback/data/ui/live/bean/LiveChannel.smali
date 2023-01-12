.class public Lcom/comeback/data/ui/live/bean/LiveChannel;
.super Lf/e/a/f/k;
.source "LiveChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveChannel;->data:Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;

    return-object v0
.end method

.method public setData(Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel;->data:Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;

    return-void
.end method
