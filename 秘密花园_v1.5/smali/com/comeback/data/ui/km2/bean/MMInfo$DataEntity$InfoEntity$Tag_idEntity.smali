.class public Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;
.super Ljava/lang/Object;
.source "MMInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tag_idEntity"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public final synthetic this$2:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;->this$2:Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMInfo$DataEntity$InfoEntity$Tag_idEntity;->name:Ljava/lang/String;

    return-void
.end method
