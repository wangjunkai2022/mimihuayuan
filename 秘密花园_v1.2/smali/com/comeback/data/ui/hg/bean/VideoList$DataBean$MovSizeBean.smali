.class public Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MovSizeBean"
.end annotation


# instance fields
.field public _$360P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "360P"
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
.method public get_$360P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;->_$360P:Ljava/lang/String;

    return-object v0
.end method

.method public set_$360P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$MovSizeBean;->_$360P:Ljava/lang/String;

    return-void
.end method
