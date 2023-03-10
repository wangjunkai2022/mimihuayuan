.class public Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;
.super Lf/e/a/f/k;
.source "AVboboConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$BackupHostsBean;,
        Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$LastestRefHostsBean;,
        Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$MainHostsBean;
    }
.end annotation


# instance fields
.field public backupHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$BackupHostsBean;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public lastestRefHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$LastestRefHostsBean;",
            ">;"
        }
    .end annotation
.end field

.field public mainHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$MainHostsBean;",
            ">;"
        }
    .end annotation
.end field

.field public sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/k;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackupHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$BackupHostsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->backupHosts:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastestRefHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$LastestRefHostsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->lastestRefHosts:Ljava/util/List;

    return-object v0
.end method

.method public getMainHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$MainHostsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->mainHosts:Ljava/util/List;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setBackupHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$BackupHostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->backupHosts:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->id:Ljava/lang/String;

    return-void
.end method

.method public setLastestRefHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$LastestRefHostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->lastestRefHosts:Ljava/util/List;

    return-void
.end method

.method public setMainHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/avbobo/bean/AVboboConfig$MainHostsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->mainHosts:Ljava/util/List;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/AVboboConfig;->sign:Ljava/lang/String;

    return-void
.end method
