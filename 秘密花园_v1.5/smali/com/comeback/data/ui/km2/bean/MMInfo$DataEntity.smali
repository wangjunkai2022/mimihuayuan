.class public Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;
.super Ljava/lang/Object;
.source "MMInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/MMInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;
    }
.end annotation


# instance fields
.field public info:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;

.field public final synthetic this$0:Lcom/comeback/data/ui/km2/bean/MMInfo;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/MMInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;->this$0:Lcom/comeback/data/ui/km2/bean/MMInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;->info:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;

    return-object v0
.end method

.method public setInfo(Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity;->info:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;

    return-void
.end method
