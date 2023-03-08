.class public Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;
.super Ljava/lang/Object;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/hg/bean/VideoList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressBean"
.end annotation


# instance fields
.field public _$1080P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "1080P"
    .end annotation
.end field

.field public _$240P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "240P"
    .end annotation
.end field

.field public _$360P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "360P"
    .end annotation
.end field

.field public _$480P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "480P"
    .end annotation
.end field

.field public _$720P:Ljava/lang/String;
    .annotation runtime Lf/i/b/b0/b;
        value = "720P"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$1080P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$720P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$480P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$360P:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$240P:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public get_$1080P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$1080P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$240P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$240P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$360P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$360P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$480P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$480P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_$720P()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$720P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set_$1080P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$1080P:Ljava/lang/String;

    return-void
.end method

.method public set_$240P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$240P:Ljava/lang/String;

    return-void
.end method

.method public set_$360P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$360P:Ljava/lang/String;

    return-void
.end method

.method public set_$480P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$480P:Ljava/lang/String;

    return-void
.end method

.method public set_$720P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hg/bean/VideoList$DataBean$AddressBean;->_$720P:Ljava/lang/String;

    return-void
.end method
