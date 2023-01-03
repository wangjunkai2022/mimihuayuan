.class public Lcom/comeback/data/ui/ba/bean/HostBean;
.super Lf/e/a/f/j;
.source "HostBean.java"


# instance fields
.field public defDomain:Ljava/lang/String;

.field public newDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/HostBean;->newDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/ba/bean/HostBean;->defDomain:Ljava/lang/String;

    return-object v0
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/HostBean;->newDomain:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/bean/HostBean;->defDomain:Ljava/lang/String;

    return-void
.end method
