.class public Lcom/comeback/data/ui/main/bean/InstallTask;
.super Lf/e/a/f/j;
.source "InstallTask.java"


# instance fields
.field public intro:Ljava/lang/String;

.field public lockType:I

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->lockType:I

    return-void
.end method


# virtual methods
.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->lockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLockType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->lockType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/InstallTask;->url:Ljava/lang/String;

    return-void
.end method
