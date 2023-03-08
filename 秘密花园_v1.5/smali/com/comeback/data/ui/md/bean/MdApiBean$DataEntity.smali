.class public Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;
.super Ljava/lang/Object;
.source "MdApiBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/md/bean/MdApiBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public file_name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/comeback/data/ui/md/bean/MdApiBean;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/md/bean/MdApiBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;->this$0:Lcom/comeback/data/ui/md/bean/MdApiBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public setFile_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/md/bean/MdApiBean$DataEntity;->file_name:Ljava/lang/String;

    return-void
.end method
