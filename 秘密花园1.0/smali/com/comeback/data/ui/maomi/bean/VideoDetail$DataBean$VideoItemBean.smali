.class public Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;
.super Ljava/lang/Object;
.source "VideoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoItemBean"
.end annotation


# instance fields
.field public down:Ljava/lang/String;

.field public file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDown()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;->down:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;->file:Ljava/lang/String;

    return-object v0
.end method

.method public setDown(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;->down:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/VideoDetail$DataBean$VideoItemBean;->file:Ljava/lang/String;

    return-void
.end method
