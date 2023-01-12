.class public Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;
.super Ljava/lang/Object;
.source "LiveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/LiveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field public error_count:I

.field public live_type:I

.field public relay_age:Ljava/lang/String;

.field public relay_hls:Ljava/lang/String;

.field public relay_id:Ljava/lang/String;

.field public relay_name:Ljava/lang/String;

.field public relay_picture:Ljava/lang/String;

.field public relay_state:I

.field public final synthetic this$0:Lcom/comeback/data/ui/gdian/bean/LiveList;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/LiveList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->this$0:Lcom/comeback/data/ui/gdian/bean/LiveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_hls:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getError_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->error_count:I

    return v0
.end method

.method public getLive_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->live_type:I

    return v0
.end method

.method public getRelay_age()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_age:Ljava/lang/String;

    return-object v0
.end method

.method public getRelay_hls()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_hls:Ljava/lang/String;

    return-object v0
.end method

.method public getRelay_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRelay_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelay_picture()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_picture:Ljava/lang/String;

    return-object v0
.end method

.method public getRelay_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_state:I

    return v0
.end method

.method public setError_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->error_count:I

    return-void
.end method

.method public setLive_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->live_type:I

    return-void
.end method

.method public setRelay_age(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_age:Ljava/lang/String;

    return-void
.end method

.method public setRelay_hls(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_hls:Ljava/lang/String;

    return-void
.end method

.method public setRelay_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_id:Ljava/lang/String;

    return-void
.end method

.method public setRelay_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_name:Ljava/lang/String;

    return-void
.end method

.method public setRelay_picture(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_picture:Ljava/lang/String;

    return-void
.end method

.method public setRelay_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/LiveList$DataEntity;->relay_state:I

    return-void
.end method
