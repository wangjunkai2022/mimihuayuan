.class public Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelTagNameBean"
.end annotation


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$RelTagNameBean;->name:Ljava/lang/String;

    return-void
.end method
